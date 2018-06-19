const bidlog = require('../models/bidlog')
const queryUtils = require('../services/query')

/**
 * Get all bidlogs by request
 * @param {Request} req
 * @param {Response} res
 */
async function index (req, res) {
  let bidlogs
  let limit = queryUtils.getQueryString(req.query)
  let body = { ...req.query }
  delete body.page
  delete body.limit

  try {
    bidlogs = await bidlog.index(limit, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(bidlogs)
}

/**
 * Get a bidlog based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show (req, res) {
  let bidlogs

  try {
    bidlogs = await bidlog.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(bidlogs)
}

/**
 * Create new bidlog
 * @param {Request} req
 * @param {Response} res
 */
async function store (req, res) {
  let body = { ...req.body }
  let bidlogs

  try {
    bidlogs = await bidlog.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(bidlogs)
}

/**
 * Get all bidlogs by request
 * @param {Request} req
 * @param {Response} res
 */
async function update (req, res) {
  let body = { ...req.body }
  let bidlogs

  try {
    bidlogs = await bidlog.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(bidlogs)
}

/**
 * Delete a bidlogs by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel (req, res) {
  let bidlogs

  try {
    bidlogs = await bidlog.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(bidlogs)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
