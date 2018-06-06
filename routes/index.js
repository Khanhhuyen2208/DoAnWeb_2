const express = require('express')
const testController = require('../controllers/testController')
const router = express.Router()
/* GET home page. */
router.get('/', function(req, res, next) {
  res.send('GET "/" OK')
})

router.get('/test', testController.test)
module.exports = router
