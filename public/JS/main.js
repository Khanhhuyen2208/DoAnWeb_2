async function load () {
  let products = await getProducts()
  ProductList(products)
}

function Product (id, catalog_id, name, initPrice, currentPrice, image) {
  this.id = id
  this.catalogId = catalog_id
  this.name = name
  this.initPrice = initPrice
  this.currentPrice = currentPrice
  this.imageLink = image
}

async function ProductList (products) {
  console.log(products)
  for (let i in products) {
    let obj = products[i]
    let image = await axios.get('/api/image?product_id=' + obj.id)
    let imageLink = image.data.data[0].image_link
    let product = new Product(
      obj.id,
      obj.catalog_id,
      obj.name,
      `${obj.starting_price} đ`,
      `${obj.price} đ`,
      imageLink
    )
    let el = renderProduct(product)
    $(`#catalog_${obj.catalog_id}`).append(el)
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

function renderProduct (product) {
  return (
    '<div class="w3-third">\n' +
    `        <p>${product.name}</p>\n` +
    `        <img src="${
      product.imageLink
    }" class="w3-round w3-margin-bottom" alt="Random Name" style="width: 258px;height: 258px;">\n` +
    `        <p><b style="color:#f00">GIÁ KHỞI ĐIỂM : ${
      product.initPrice
    }</b></p>\n` +
    '           <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById(\'ticketModal\').style.display=\'block\'">ĐẤU GIÁ</button>\n' +
    '      </div>'
  )
}
