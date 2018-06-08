// JavaScript Document
function kiem_tra_dang_nhap () {
  var ten_dang_nhap, mat_khau
  ten_dang_nhap = document.getElementById('ten_dang_nhap').value
  mat_khau = document.getElementById('mat_khau').value
  if (ten_dang_nhap == '' || mat_khau == '') { alert('Kiểm tra thông tin đăng nhập') } else alert('Xin chào ' + ten_dang_nhap)
}
