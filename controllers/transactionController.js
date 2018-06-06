const transaction = require('../models/transaction')
const queryUtils = require('../services/query')

/**
 * Get all transactions by request
 * @param {Request} req
 * @param {Response} res
 */
async function index(req, res) {
  let transactions
  let limit = queryUtils.getQueryString(req.query)

  try {
    transactions = await transaction.index(limit)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(transactions)
}

/**
 * Get a transaction based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show(req, res) {
  let transactions

  try {
    transactions = await transaction.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(transactions)
}

/**
 * Create new transaction
 * @param {Request} req
 * @param {Response} res
 */
async function store(req, res) {
  let body = { ...req.body }
  let transactions

  try {
    transactions = await transaction.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(transactions)
}

/**
 * Get all transactions by request
 * @param {Request} req
 * @param {Response} res
 */
async function update(req, res) {
  let body = { ...req.body }
  let transactions

  try {
    transactions = await transaction.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(transactions)
}

/**
 * Delete a transactions by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel(req, res) {
  let transactions

  try {
    transactions = await transaction.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(transactions)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
