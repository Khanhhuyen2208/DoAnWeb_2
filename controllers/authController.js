const axios = require('axios')
const auth = require('../services/auth')
const userModel = require('../models/user')
const queryUtils = require('../services/query')
const querystring = require('querystring')

/**
 * Handle request login
 * @param {Request} req
 * @param {Response} res
 */
async function login (req, res) {
  let body = { ...req.body }
  let user
  let limit = queryUtils.getQueryString({ limit: 0 })

  if (body.captchaResponse) {
    let recaptchaResponse = await axios.post(
      'https://www.google.com/recaptcha/api/siteverify',
      {
        secret: '6Ldu3D4UAAAAAA32pqPw9o3ysp6F-M3YGq4bxS1x',
        response: body.captchaResponse
      },
      {
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded'
        }
      }
    )

    if (recaptchaResponse.data.success) {
      if (body.email && body.password) {
        try {
          user = await userModel.index(limit, {
            email: body.email,
            password: body.password
          })
          user = user.data
        } catch (e) {
          user = null
        }
      }

      if (user && user.length) {
        user = user[0]
        let payload = {
          id: user.id,
          name: user.name,
          email: user.email,
          isAdmin: user.is_admin
        }

        return res.json(payload)
      }
    }
  }

  return res.sendStatus(400)
}

/**
 * Handle check user exists
 * @param {Request} req
 * @param {Response} res
 */
async function checkUserExists (req, res) {
  let body = { ...req.query }
  let user

  if (body.email) {
    try {
      user = await userModel.index({
        email: body.email
      })
    } catch (e) {
      user = null
    }

    if (user && user.length) {
      return res.json({
        exists: 1
      })
    }

    return res.json({
      exists: 0
    })
  }

  return res.sendStatus(400)
}

/**
 * Create new user
 * @param {Request} req
 * @param {Response} res
 */
async function register (req, res) {
  let body = { ...req.body }

  if (body.captchaResponse) {
    let data = querystring.stringify({
      secret: '6LfcYl4UAAAAAPZWsKDq0q1W7UQeoyFqEyBgw29g',
      response: body.captchaResponse
    })

    let headers = {
      'Content-Type': 'application/x-www-form-urlencoded'
    }

    let recaptchaResponse = await axios({
      method: 'POST',
      url: 'https://www.google.com/recaptcha/api/siteverify',
      headers: headers,
      data: data
    })

    if (recaptchaResponse.data.success) {
      delete body.captchaResponse
      let user = await userModel.store(body)
      return res.status(201).json(user)
    }
  }

  return res.sendStatus(400)
}

module.exports = {
  login: login,
  register: register,
  checkUserExists: checkUserExists
}
