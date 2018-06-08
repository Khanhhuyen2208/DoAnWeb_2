const winner = require('../models/winners')
const queryUtils = require('../services/query')

/**
 * Get all winners by request
 * @param {Request} req
 * @param {Response} res
 */
async function index (req, res) {
  let winners
  let limit = queryUtils.getQueryString(req.query)

  try {
    winners = await winner.index(limit)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(winners)
}

/**
 * Get a winner based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show (req, res) {
  let winners

  try {
    winners = await winner.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(winners)
}

/**
 * Create new winner
 * @param {Request} req
 * @param {Response} res
 */
async function store (req, res) {
  let body = { ...req.body }
  let winners

  try {
    winners = await winner.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(winners)
}

/**
 * Get all winners by request
 * @param {Request} req
 * @param {Response} res
 */
async function update (req, res) {
  let body = { ...req.body }
  let winners

  try {
    winners = await winner.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(winners)
}

/**
 * Delete a winners by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel (req, res) {
  let winners

  try {
    winners = await winner.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(winners)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
