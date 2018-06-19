const auction = require('../models/auction')
const queryUtils = require('../services/query')

/**
 * Get all auctions by request
 * @param {Request} req
 * @param {Response} res
 */
async function index (req, res) {
  let auctions
  let limit = queryUtils.getQueryString(req.query)
  let body = { ...req.query }
  delete body.page
  delete body.limit

  try {
    auctions = await auction.index(limit, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(auctions)
}

/**
 * Get a auction based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show (req, res) {
  let auctions

  try {
    auctions = await auction.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(auctions)
}

/**
 * Create new auction
 * @param {Request} req
 * @param {Response} res
 */
async function store (req, res) {
  let body = { ...req.body }
  let auctions

  try {
    auctions = await auction.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(auctions)
}

/**
 * Get all auctions by request
 * @param {Request} req
 * @param {Response} res
 */
async function update (req, res) {
  let body = { ...req.body }
  let auctions

  try {
    auctions = await auction.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(auctions)
}

/**
 * Delete a auctions by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel (req, res) {
  let auctions

  try {
    auctions = await auction.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(auctions)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
