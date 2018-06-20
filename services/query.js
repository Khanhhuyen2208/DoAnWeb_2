/**
 * Create sql where statement based on input object
 * @param {Object} obj
 */
function createWhereStatement (obj) {
  // Create query string
  let sql = ''
  let length = Object.keys(obj).length

  if (obj && length) {
    let count = 0
    for (let item in obj) {
      if (obj.hasOwnProperty(item)) {
        if (count === 0) {
          sql += 'WHERE'
        }
        sql += ` \`${item}\` = '${obj[item]}'`
        count++
        if (count !== length) {
          sql += ' and'
        }
      }
    }
  }

  return sql
}

/**
 * Create limit statement for query
 * @param {Object} query
 */
function createLimitStatement (query) {
  if (query.limit === 0) {
    return ''
  }

  let pos = (query.page - 1) * query.limit
  return `LIMIT ${pos}, ${query.limit}`
}

function getQueryString (query) {
  let limit, page
  if (Number(query.limit) === 0) {
    limit = 0
    page = 1
  } else {
    limit = Number(query.limit) || 20
    page = Number(query.page) || 1
  }

  return {
    limit: limit,
    page: page
  }
}

/**
 * Create sort statement on query string
 * @param query
 * @returns {*|string}
 */
function createOrderByStatement (query) {
  let sort = query.sort,
    field = null,
    method = null,
    statement = null
  if (sort) {
    delete query.sort
    if (sort.indexOf('-') != -1) {
      field = sort.split('-')[1]
      method = 'DESC'
    } else if (sort.indexOf('+') != -1) {
      field = sort.split('+')[1]
      method = 'ASC'
    }
  }

  if (field) {
    statement = `ORDER BY ${field} ${method}`
  }

  return statement || ''
}

module.exports = {
  createWhereStatement: createWhereStatement,
  createLimitStatement: createLimitStatement,
  createOrderByStatement: createOrderByStatement,
  getQueryString: getQueryString
}
