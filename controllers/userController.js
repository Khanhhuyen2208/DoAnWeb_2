const user = require('../models/user')
const queryUtils = require('../services/query')

/**
 * Get all users by request
 * @param {Request} req
 * @param {Response} res
 */
async function index (req, res) {
  let users
  let limit = queryUtils.getQueryString(req.query)
  let body = { ...req.query }
  delete body.page
  delete body.limit

  try {
    users = await user.index(limit, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(users)
}

/**
 * Get a user based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show (req, res) {
  let users

  try {
    users = await user.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(users)
}

/**
 * Create new user
 * @param {Request} req
 * @param {Response} res
 */
async function store (req, res) {
  let body = { ...req.body }
  let users

  try {
    users = await user.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(users)
}

/**
 * Get all users by request
 * @param {Request} req
 * @param {Response} res
 */
async function update (req, res) {
  let body = { ...req.body }
  let users

  try {
    users = await user.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(users)
}

/**
 * Delete a users by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel (req, res) {
  let users

  try {
    users = await user.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(users)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
