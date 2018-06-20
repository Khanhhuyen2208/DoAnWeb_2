const express = require('express')
const catalogController = require('../../controllers/catalogController')
const productController = require('../../controllers/productController')
const userController = require('../../controllers/userController')
const blacklistController = require('../../controllers/blacklistController')
const imageController = require('../../controllers/imageController')
const bidlogController = require('../../controllers/bidlogController')
const favoriteController = require('../../controllers/favoriteController')
const winnerController = require('../../controllers/winnerController')
const auctionController = require('../../controllers/auctionController')
const router = express.Router()

/* Catalog. */
router.get('/catalog', catalogController.index)
router.get('/catalog/:id', catalogController.show)
router.post('/catalog', catalogController.store)
router.put('/catalog/:id', catalogController.update)
router.delete('/catalog/:id', catalogController.delete)

/* Product */
router.get('/product', productController.index)
router.get('/product/:id', productController.show)
router.post('/product', productController.store)
router.put('/product/:id', productController.update)
router.delete('/product/:id', productController.delete)

/* User */
router.get('/user', userController.index)
router.get('/user/:id', userController.show)
router.post('/user', userController.store)
router.put('/user/:id', userController.update)
router.delete('/user/:id', userController.delete)

/* image */
router.get('/image', imageController.index)
router.get('/image/:id', imageController.show)
router.post('/image', imageController.store)
router.put('/image/:id', imageController.update)
router.delete('/image/:id', imageController.delete)

/* blacklist */
router.get('/blacklist', blacklistController.index)
router.get('/blacklist/:id', blacklistController.show)
router.post('/blacklist', blacklistController.store)
router.put('/blacklist/:id', blacklistController.update)
router.delete('/blacklist/:id', blacklistController.delete)

/* auction */
router.get('/auction', auctionController.index)
router.get('/auction/:id', auctionController.show)
router.post('/auction', auctionController.store)
router.put('/auction/:id', auctionController.update)
router.delete('/auction/:id', auctionController.delete)

/* bidlog */
router.get('/bidlog', bidlogController.index)
router.get('/bidlog/:id', bidlogController.show)
router.post('/bidlog', bidlogController.store)
router.put('/bidlog/:id', bidlogController.update)
router.delete('/bidlog/:id', bidlogController.delete)

/* favorite */
router.get('/favorite', favoriteController.index)
router.get('/favorite/:id', favoriteController.show)
router.post('/favorite', favoriteController.store)
router.put('/favorite/:id', favoriteController.update)
router.delete('/favorite/:id', favoriteController.delete)

/* winner */
router.get('/winner', winnerController.index)
router.get('/winner/:id', winnerController.show)
router.post('/winner', winnerController.store)
router.put('/winner/:id', winnerController.update)
router.delete('/winner/:id', bidlogController.delete)

module.exports = router
