const DBManage = require('../database/DBManage')
const auth = require('../services/auth')
const authController = require('../controllers/authController')

/**
 * Controller for test
 * @param {Request} req
 * @param {Response} res
 */
async function test(req, res) {
  // let decoded = await auth.verify(
  //   'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiSD9uZyIsImVtYWlsIjoiYmFodW5nMTIyMUBnbWFpbC5jb20iLCJpYXQiOjE1MjY4MDAxODAsImV4cCI6MTUyNjgwNzM4MH0.qGxKh1LuOMOFjFyXWhGqVQWnmAscpyLdoeTq7un2zbI'
  // )

  // res.json(decoded)

  authController.checkUserExists(req, res)
}

module.exports = {
  test: test
}
