const favorite = require('../models/favorites')
const queryUtils = require('../services/query')

/**
 * Get all favorites by request
 * @param {Request} req
 * @param {Response} res
 */
async function index (req, res) {
  let favorites
  let limit = queryUtils.getQueryString(req.query)

  try {
    favorites = await favorite.index(limit)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(favorites)
}

/**
 * Get a favorite based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show (req, res) {
  let favorites

  try {
    favorites = await favorite.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(favorites)
}

/**
 * Create new favorite
 * @param {Request} req
 * @param {Response} res
 */
async function store (req, res) {
  let body = { ...req.body }
  let favorites

  try {
    favorites = await favorite.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(favorites)
}

/**
 * Get all favorites by request
 * @param {Request} req
 * @param {Response} res
 */
async function update (req, res) {
  let body = { ...req.body }
  let favorites

  try {
    favorites = await favorite.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(favorites)
}

/**
 * Delete a favorites by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel (req, res) {
  let favorites

  try {
    favorites = await favorite.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(favorites)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
