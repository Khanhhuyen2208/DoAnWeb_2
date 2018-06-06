const express = require('express')
const router = express.Router()
const authController = require('../../controllers/authController')

router.post('/login', authController.login)
router.post('/register', authController.register)
router.get('/check', authController.checkUserExists)

module.exports = router
