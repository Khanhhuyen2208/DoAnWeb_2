const DBManage = require('../database/DBManage')

function createMetaData(tableName, pageObj, resObj) {
  return new Promise(function(resovle, reject) {
    let sql = `Select count(id) as total from ${tableName}`

    DBManage.executeQuery(sql, function(err, data) {
      if (err) {
        console.log(err.message)
        reject(err)
      }

      let total = data[0].total,
        perPage = Number(pageObj.limit) === 0 ? total : pageObj.limit,
        currentPage = pageObj.page,
        lastPage =
          Number(pageObj.limit) === 0 ? 1 : Math.ceil(total / pageObj.limit),
        currentPageCount =
          currentPage === lastPage
            ? perPage - (lastPage * perPage - total)
            : perPage

      let meta = {
        total: total,
        perPage: perPage,
        currentPage: currentPage,
        lastPage: lastPage,
        currentPageCount: currentPageCount,
        data: resObj
      }

      resovle(meta)
    })
  })
}

module.exports = {
  createMetaData: createMetaData
}
