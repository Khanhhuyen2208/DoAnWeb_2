const DBManage = require('../database/DBManage')
const queryUtils = require('../services/query')
const meta = require('../services/resMeta')
const tableName = 'transactions'

/**
 * Get transactions by input condition
 * @param {Object} input
 */
function index(limit = {}, input = {}) {
  // Create query string
  return new Promise(function(resolve, reject) {
    let sql = `Select * From ${tableName} 
      ${queryUtils.createWhereStatement(input)} 
      ${queryUtils.createLimitStatement(limit)}`

    DBManage.executeQuery(sql, function(err, data) {
      if (err) {
        reject(err)
      }

      let res = meta.createMetaData(tableName, limit, data)
      resolve(res)
    })
  })
}

/**
 * Show a model by id
 * @param {Number} id
 */
function show(id) {
  return new Promise(function(resolve, reject) {
    DBManage.executeQuery(
      `Select * From ${tableName} where id = ${id}`,
      function(err, data) {
        if (err) {
          reject(err)
        }
        resolve(data)
      }
    )
  })
}

/**
 * Create new model
 * @param {Object} body
 */
function store(body) {
  return new Promise(function(resolve, reject) {
    DBManage.executeQuery(`Insert into ${tableName} Set ?`, body, function(
      err,
      data
    ) {
      if (err) {
        reject(err)
      }
      resolve(data)
    })
  })
}

/**
 * Update a model by id with data is body
 * @param {Number} id
 * @param {Object} body
 */
function update(id, body) {
  return new Promise(function(resolve, reject) {
    DBManage.executeQuery(
      `Update ${tableName} set ? where ?`,
      [body, { id: id }],
      function(err, data) {
        if (err) {
          reject(err)
        }
        resolve(data)
      }
    )
  })
}

/**
 * Delete a model by id
 * @param {Number} id
 */
function deleteModel(id) {
  return new Promise(function(resovle, reject) {
    DBManage.executeQuery(`Delete from ${tableName} where id = ${id}`, function(
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
