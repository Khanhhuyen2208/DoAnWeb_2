function search (el) {
  let searchkey = document.getElementById('search-input').value
  if (!searchkey) {
    return
  }

  window.location.href = '/search.html?tags=' + searchkey
}

function timeConverter (UNIX_timestamp) {
  var delta = Math.abs(UNIX_timestamp) / 1000

  // calculate (and subtract) whole days
  var days = Math.floor(delta / 86400)
  delta -= days * 86400

  // calculate (and subtract) whole hours
  var hours = Math.floor(delta / 3600) % 24
  delta -= hours * 3600

  // calculate (and subtract) whole minutes
  var minutes = Math.floor(delta / 60) % 60
  delta -= minutes * 60

  return `${days} days ${hours} hours ${minutes} minutes`
}

async function loadSearchPage () {
  let products = await getSearchProducts()
  ProductSearchList(products)
  getUserInfo()
}

async function loadIndexPage () {
  let products = await getProducts()
  ProductList(products)
  getUserInfo()
}

async function loadDetailPage () {
  getUserInfo()
}

async function loadAdminPage () {}

async function loadProductsPage () {
  let products = await getProducts()
  getTableProducts(products)
  getUserInfo()
}

function getUserInfo () {
  let userName = localStorage.getItem('userName') || null
  let userId = localStorage.getItem('userId') || null
  let email = localStorage.getItem('email') || null
  let isAdmin = localStorage.getItem('isAdmin') || null

  if (userId && userName && email) {
    let btnDangNhap = document.getElementById('btn-dangnhap')
    let btnDangKi = document.getElementById('btn-dangki')
    let btnDangXuat = document.getElementById('btn-dangxuat')
    let btnAdmin = document.getElementById('btn-admin')
    let btnUser = document.getElementById('btn-user')

    btnDangNhap.style.display = 'none'
    btnDangKi.style.display = 'none'
    btnUser.innerHTML = userName
    btnUser.style.display = 'inline-block'
    btnDangXuat.style.display = 'inline-block'

    if (isAdmin === 'true') {
      btnAdmin.style.display = 'inline-block'
    }
  }
}

function logout () {
  localStorage.removeItem('userName')
  localStorage.removeItem('userId')
  localStorage.removeItem('email')
  localStorage.removeItem('isAdmin')
}

function Product (
  id,
  catalog_id,
  name,
  initPrice,
  currentPrice,
  image,
  expire_at,
  numberOfBidlog
) {
  this.id = id
  this.catalogId = catalog_id
  this.name = name
  this.initPrice = initPrice
  this.currentPrice = currentPrice
  this.imageLink = image
  this.expire_at = expire_at
  this.numberOfBidlog = numberOfBidlog
}

async function ProductList (products) {
  for (let i in products) {
    let obj = products[i]
    let image
    let imageLink
    let bidlogs
    try {
      image = await axios.get('/api/image?product_id=' + obj.id)
      imageLink = image.data.data[0]
      bidlogs = await axios.get('/api/bidlog?product_id=' + obj.id)
      bidlogs = bidlogs.data.total
      if (!imageLink) {
        continue
      }
    } catch (e) {
      console.log(e)
      continue
    }
    imageLink = imageLink.image_link
    let product = new Product(
      obj.id,
      obj.catalog_id,
      obj.name,
      `${obj.starting_price} đ`,
      `${obj.price} đ`,
      imageLink,
      obj.expire_at,
      bidlogs
    )
    let el = renderProduct(product)
    $(`#catalog_${obj.catalog_id}`).append(el)
  }
}

async function ProductSearchList (products) {
  for (let i in products) {
    let obj = products[i]
    let image
    let imageLink
    let bidlogs
    try {
      image = await axios.get('/api/image?product_id=' + obj.id)
      imageLink = image.data.data[0]
      bidlogs = await axios.get('/api/bidlog?product_id=' + obj.id)
      bidlogs = bidlogs.data.total
      if (!imageLink) {
        continue
      }
    } catch (e) {
      console.log(e)
      continue
    }
    imageLink = imageLink.image_link
    let product = new Product(
      obj.id,
      obj.catalog_id,
      obj.name,
      `${obj.starting_price} đ`,
      `${obj.price} đ`,
      imageLink,
      obj.expire_at,
      bidlogs
    )
    let el = renderProduct(product)
    $(`#catalog_1`).append(el)
  }
}

async function getTableProducts (products) {
  for (let i in products) {
    let obj = products[i]
    let image
    let imageLink
    try {
      image = await axios.get('/api/image?product_id=' + obj.id)
      imageLink = image.data.data[0]
      if (!imageLink) {
        continue
      }
    } catch (e) {
      console.log(e)
      continue
    }
    imageLink = imageLink.image_link
    let product = new Product(
      obj.id,
      obj.catalog_id,
      obj.name,
      `${obj.starting_price} đ`,
      `${obj.price} đ`,
      imageLink,
      obj.expire_at
    )
    let el = renderTrProduct(product)
    $(`#table`).append(el)
  }
}

function getProducts () {
  return new Promise(function (resolve, reject) {
    axios
      .get('/api/product?limit=0')
      .then(res => {
        resolve(res.data.data || [])
      })
      .catch(e => {
        resolve([])
      })
  })
}

function getSearchProducts () {
  return new Promise(function (resolve, reject) {
    let query = window.location.search
    let searchQuery = query.split('?').pop()
    let likekey = searchQuery.split('=').pop()

    axios
      .get(`/api/product?likekey=${likekey}&searchfield=name`)
      .then(res => {
        resolve(res.data.data || [])
      })
      .catch(e => {
        resolve([])
      })
  })
}

function redirect (el) {
  let id = el.id.split('_').pop()
  window.location.href = '/ChiTietSanPham.html?product_id=' + id
}

function renderProduct (product) {
  let remainingTime = Date.parse(product.expire_at) - Date.now()
  remainingTime = timeConverter(remainingTime)
  return (
    '<div class="w3-third">\n' +
    `        <p>${product.name}</p>\n` +
    `        <img src="${
      product.imageLink
    }" class="w3-round w3-margin-bottom" alt="Random Name" style="width: 258px;height: 258px;">\n` +
    `        <p><b style="color:#f00">GIÁ KHỞI ĐIỂM : ${
      product.initPrice
    }</b></p>\n` +
    `<p><b style="color:#00F">Số Lượt Đánh Giá: ${
      product.numberOfBidlog
    } Lượt</p>\n` +
    `<p><b style="color:#00F">Thời Gian Còn Lại: ${remainingTime}</b></p>\n` +
    `           <button id="product_${
      product.id
    }" class="w3-button w3-black w3-margin-bottom" onclick="redirect(this)">ĐẤU GIÁ</button><button style="color:#F00;font-size:34px"><i class="fa fa-thumbs-up"></i></button>\n` +
    '      </div>'
  )
}

function renderTrProduct (product) {
  return (
    '<tr>\n' +
    `<td>${product.id}</td>\n` +
    `<td>${product.name}</td>\n` +
    `<td>${'Mã người mua'}</td>\n` +
    `<td>${'Tên người mua'}</td>\n` +
    `<td>${'Lần đấu giá'}</td>\n` +
    `<td>${product.currentPrice}</td>\n` +
    '</tr>'
  )
}
