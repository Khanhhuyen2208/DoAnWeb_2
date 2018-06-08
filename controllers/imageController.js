const image = require('../models/image')
const queryUtils = require('../services/query')

/**
 * Get all images by request
 * @param {Request} req
 * @param {Response} res
 */
async function index (req, res) {
  let images
  let limit = queryUtils.getQueryString(req.query)

  try {
    images = await image.index(limit)
  } catch (e) {
    return res.sendStatus(500)
  }

  return res.json(images)
}

/**
 * Get a image based on id request param
 * @param {Request} req
 * @param {Response} res
 */
async function show (req, res) {
  let images

  try {
    images = await image.show(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(images)
}

/**
 * Create new image
 * @param {Request} req
 * @param {Response} res
 */
async function store (req, res) {
  let body = { ...req.body }
  let images

  try {
    images = await image.store(body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(images)
}

/**
 * Get all images by request
 * @param {Request} req
 * @param {Response} res
 */
async function update (req, res) {
  let body = { ...req.body }
  let images

  try {
    images = await image.update(req.params.id, body)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(images)
}

/**
 * Delete a images by id
 * @param {Request} req
 * @param {Response} res
 */
async function deleteModel (req, res) {
  let images

  try {
    images = await image.delete(req.params.id)
  } catch (e) {
    return res.sendStatus(500)
  }

  res.json(images)
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
