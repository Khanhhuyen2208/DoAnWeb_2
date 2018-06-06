const auth = require('../services/auth')
const userModel = require('../models/user')
const queryUtils = require('../services/query')

/**
 * Handle request login
 * @param {Request} req
 * @param {Response} res
 */
async function login(req, res) {
  let body = { ...req.body }
  let user
  let limit = queryUtils.getQueryString({ limit: 0 })

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

    let token = await auth.sign(payload)

    res.json(
      Object.assign(payload, {
        accessToken: token
      })
    )
    return
  }

  res.sendStatus(400)
}

/**
 * Handle check user exists
 * @param {Request} req
 * @param {Response} res
 */
async function checkUserExists(req, res) {
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
async function register(req, res) {
  let body = { ...req.body }

  let user = await userModel.store(body)

  res.json(user)
}

module.exports = {
  login: login,
  register: register,
  checkUserExists: checkUserExists
}
