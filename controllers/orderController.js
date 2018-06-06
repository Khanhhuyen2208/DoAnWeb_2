const order = require('../models/order')
const queryUtils = require('../services/query')

/**
 * Get all orders by request
 * @param {Request} req
 * @param {Response} res
 */
async function index(req, res) {
  let orders
  let limit = queryUtils.getQueryString(req.query)

  try {
    orders = await order.index(limit)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(orders)
}

/**
 * Get a order based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show(req, res) {
  let orders

  try {
    orders = await order.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(orders)
}

/**
 * Create new order
 * @param {Request} req
 * @param {Response} res
 */
async function store(req, res) {
  let body = { ...req.body }
  let orders

  try {
    orders = await order.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(orders)
}

/**
 * Get all orders by request
 * @param {Request} req
 * @param {Response} res
 */
async function update(req, res) {
  let body = { ...req.body }
  let orders

  try {
    orders = await order.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(orders)
}

/**
 * Delete a orders by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel(req, res) {
  let orders

  try {
    orders = await order.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(orders)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
