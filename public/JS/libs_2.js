// JavaScript Document
function kiem_tra () {
  let ho,
    ten,
    ten_dang_nhap,
    mat_khau,
    xn_mat_khau,
    ngay_sinh,
    nam,
    nu,
    dien_thoai,
    email,
    dia_chi
  ho = document.getElementById('ho').value
  ten = document.getElementById('ten').value
  ten_dang_nhap = document.getElementById('ten_dang_nhap').value
  mat_khau = document.getElementById('mat_khau').value
  xn_mat_khau = document.getElementById('xn_mat_khau').value
  dien_thoai = document.getElementById('dien_thoai').value
  nam = document.getElementById('nam').checked
  nu = document.getElementById('nu').checked
  ngay_sinh = document.getElementById('ngay_sinh').value
  ngay_hien_hanh = new Date()
  ngay_sinh = Date.parse(ngay_sinh)
  ngay_hien_hanh = Date.parse(ngay_hien_hanh)
  email = document.getElementById('email').value
  dia_chi = document.getElementById('dia_chi').value
  if (
    ho == '' ||
    ten == '' ||
    ten_dang_nhap == '' ||
    mat_khau == '' ||
    xn_mat_khau == '' ||
    dien_thoai == '' ||
    email == '' ||
    dia_chi == ''
  ) {
    alert('Kiểm tra thông tin đăng kí')
  } else if (mat_khau != xn_mat_khau) alert('Xác nhận mật khẩu không đúng')
  else if (nam == false && nu == false) alert('Chọn giới tính')
  else if (ngay_sinh > ngay_hien_hanh) alert('Ngày sinh không hợp lệ')
  else alert('Đăng kí thành công')

  // Thêm captcha  phần đăng kí

  var body = {
    captchaResponse: grecaptcha.getResponse(),
    name: ho + ten,
    email: email,
    password: mat_khau,
    address: dia_chi,
    phone_number: dien_thoai
  }

  $.ajax({
    url: '/auth/register',
    method: 'POST',
    data: body,
    success: function (res) {
      console.log(res)
    }
  })
}

// Thêm captcha  phần đăng kí
//
// $('btn_dang_ki').on('click', function () {
//   var body = {
//     Captche_response: grecaptcha.getResponse()
//   }
//   console.log(body)
//   $.ajax({
//     url: '/api/abcxyz',
//     method: 'POST',
//     data: body,
//     success: function (res) {
//       console.log('ahihi')
//     }
//   })
// })
