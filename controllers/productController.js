const product = require('../models/product')
const queryUtils = require('../services/query')

/**
 * Get all products by request
 * @param {Request} req
 * @param {Response} res
 */
async function index (req, res) {
  let products
  let limit = queryUtils.getQueryString(req.query)
  let body = { ...req.query }
  delete body.page
  delete body.limit

  try {
    products = await product.index(limit, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(products)
}

/**
 * Get a product based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show (req, res) {
  let products

  try {
    products = await product.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(products)
}

/**
 * Create new product
 * @param {Request} req
 * @param {Response} res
 */
async function store (req, res) {
  let body = { ...req.body }
  let products

  try {
    products = await product.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(products)
}

/**
 * Get all products by request
 * @param {Request} req
 * @param {Response} res
 */
async function update (req, res) {
  let body = { ...req.body }
  let products

  try {
    products = await product.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(products)
}

/**
 * Delete a products by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel (req, res) {
  let products

  try {
    products = await product.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(products)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
