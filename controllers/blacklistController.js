const blacklist = require('../models/blacklists')
const queryUtils = require('../services/query')

/**
 * Get all blacklists by request
 * @param {Request} req
 * @param {Response} res
 */
async function index (req, res) {
  let blacklists
  let limit = queryUtils.getQueryString(req.query)

  try {
    blacklists = await blacklist.index(limit)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(blacklists)
}

/**
 * Get a blacklist based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show (req, res) {
  let blacklists

  try {
    blacklists = await blacklist.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(blacklists)
}

/**
 * Create new blacklist
 * @param {Request} req
 * @param {Response} res
 */
async function store (req, res) {
  let body = { ...req.body }
  let blacklists

  try {
    blacklists = await blacklist.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(blacklists)
}

/**
 * Get all blacklists by request
 * @param {Request} req
 * @param {Response} res
 */
async function update (req, res) {
  let body = { ...req.body }
  let blacklists

  try {
    blacklists = await blacklist.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(blacklists)
}

/**
 * Delete a blacklists by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel (req, res) {
  let blacklists

  try {
    blacklists = await blacklist.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(blacklists)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
