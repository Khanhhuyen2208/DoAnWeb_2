const DBManage = require('../database/DBManage')
const queryUtils = require('../services/query')
const meta = require('../services/resMeta')
const tableName = 'catalogs'

/**
 * Get all catalogs by input condition
 * @param {Object} input
 */
function index (limit = {}, input = {}) {
  return new Promise(function (resolve, reject) {
    let whereStatement = queryUtils.createWhereStatement(input)
    let limitStatement = queryUtils.createLimitStatement(limit)
    let sql = `Select * From ${tableName} 
      ${whereStatement} 
      ${limitStatement}`

    DBManage.executeQuery(sql, function (err, data) {
      if (err) {
        console.log(err.message)
        reject(err)
      }

      let res = meta.createMetaData(tableName, limit, data, whereStatement)
      resolve(res)
    })
  })
}

function show (id) {
  return new Promise(function (resovle, reject) {
    DBManage.executeQuery(
      `Select * from ${tableName} where id = ${id}`,
      function (err, data) {
        if (err) {
          console.log(err.message)
          reject(err)
        }
        resovle(data)
      }
    )
  })
}

function store (body) {
  return new Promise(function (resovle, reject) {
    DBManage.executeQuery(`Insert into ${tableName} Set ?`, body, function (
      err,
      data
    ) {
      if (err) {
        console.log(err.message)
        reject(err)
      }
      resovle(data)
    })
  })
}

function update (id, body) {
  return new Promise(function (resovle, reject) {
    DBManage.executeQuery(
      `Update ${tableName} Set ? Where ?`,
      [body, { id: id }],
      function (err, data) {
        if (err) {
          console.log(err.message)
          reject(err)
        }
        resovle(data)
      }
    )
  })
}

function deleteModel (id) {
  return new Promise(function (resovle, reject) {
    DBManage.executeQuery(`Delete from ${tableName} where id = ${id}`, function (
      err,
      data
    ) {
      if (err) {
        console.log(err.message)
        reject(err)
      }
      resovle(data)
    })
  })
}

module.exports = {
  index: index,
  show: show,
  store: store,
  update: update,
  delete: deleteModel
}
