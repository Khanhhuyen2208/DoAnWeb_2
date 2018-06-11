// JavaScript Document
function kiem_tra_dang_nhap () {
  var ten_dang_nhap, mat_khau
  ten_dang_nhap = document.getElementById('ten_dang_nhap').value
  mat_khau = document.getElementById('mat_khau').value
  if (ten_dang_nhap == '' || mat_khau == '') {
    alert('Kiểm tra thông tin đăng nhập')
  } else alert('Xin chào ' + ten_dang_nhap)

  // Thêm captcha cho đăng nhập
  var body = {
    Caphe_response: grecaptcha.getResponse()
  }
  console.log(body)
  $.ajax({
    url: '/api/abcxyz',
    method: 'POST',
    data: body,
    success: function (res) {
      console.log('ahihi')
    }
  })
}
// Thêm captcha cho đăng nhập
$('btn_dang_nhap').on('click', function () {
  var body = {
    Captche_response: grecaptcha.getResponse()
  }
  console.log(body)
  $.ajax({
    url: '/api/abcxyz',
    method: 'POST',
    data: body,
    success: function (res) {
      console.log('ahihi')
    }
  })
})
