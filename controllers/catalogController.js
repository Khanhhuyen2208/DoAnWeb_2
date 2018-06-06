const catalog = require('../models/catalog')
const queryUtils = require('../services/query')

/**
 * Get all catalogs by request
 * @param {Request} req
 * @param {Response} res
 */
async function index(req, res) {
  let catalogs
  let limit = queryUtils.getQueryString(req.query)

  try {
    catalogs = await catalog.index(limit)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(catalogs)
}

/**
 * Get a catalog based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show(req, res) {
  let catalogs

  try {
    catalogs = await catalog.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(catalogs)
}

/**
 * Create new catalog
 * @param {Request} req
 * @param {Response} res
 */
async function store(req, res) {
  let body = { ...req.body }
  let catalogs

  try {
    catalogs = await catalog.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(catalogs)
}

/**
 * Get all catalogs by request
 * @param {Request} req
 * @param {Response} res
 */
async function update(req, res) {
  let body = { ...req.body }
  let catalogs

  try {
    catalogs = await catalog.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(catalogs)
}

/**
 * Delete a catalogs by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel(req, res) {
  let catalogs

  try {
    catalogs = await catalog.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(catalogs)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
