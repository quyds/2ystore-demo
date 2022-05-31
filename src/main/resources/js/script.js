

$('.thaydoi_sl').on('click', function(event){
// ghi đè sự kiện mặc định
	event.preventDefault();
 var type =	$(this).attr('data-type');
 // lấy value của các thẻ html trong form $(selector).val();
 var soluong = $(this).parent().find('input').val();
 var price = $(this).parent().find('input').attr('data-price');
 if (type == 'up') {
   soluong++;
 }else{
   if (soluong > 1) {
   	soluong--;
   }
 }
// thay đổi giá trị của thẻ trong form $(selector).val('giá trị mới');
 $(this).parent().find('input').val(soluong);
 var total_price_product = soluong * price;
 $(this).parents('.action').find('.total-price-product').attr('data-total', total_price_product);
$(this).parents('.action').find('.total-price-product').text(total_price_product+' đ');
var total = 0;
$('.total-price-product').each(function(){
total += parseInt($(this).attr('data-total'));
	})
$('#total_price_product').text(total+' đ');
});

//----------------------------------------------------------------------------------------//

$('input').on('keyup', function(event){
// ghi đè sự kiện mặc định
  event.preventDefault();
 var type1 = $(this).attr('value');

 // lấy value của các thẻ html trong form $(selector).val();
 var soluong1 =$(this).parent().find('input').val();
 var price1 = $(this).parent().find('input').attr('data-price');


 $(this).parent().find('input').val(soluong1);
 var total_price_product1 = soluong1 * price1;
 $(this).parents('.action').find('.total-price-product').attr('data-total', total_price_product1);
$(this).parents('.action').find('.total-price-product').text(total_price_product1+' đ');
var total1 = 0;
$('.total-price-product').each(function(){
total1 += parseInt($(this).attr('data-total'));
  })
$('#total_price_product').text(total1+' đ');

 });
// -------------------xóa-----------------
//	$('.btn-delete').on('click',function(){
//	  var b = confirm('Bạn có chắc chắn xóa sản phẩm!')
//	  if (b) {
//	    $(this).parents('.product').remove();
//	  }
//	});

//---------------- --------------------
function saveContact(baseUrl) {
	// tạo javascript object.  
	var data = {
		fullName: jQuery("#fname").val(), // lay theo id
		email: jQuery("#femail").val(), // lay theo id
		message: jQuery("#fmessenger").val(), // lay theo id
		phone: jQuery("#fphone").val(), // lay theo id
	};
	
	// $ === jQuery
	// json == javascript object
	jQuery.ajax({
		url: baseUrl + "/ajax/contact", //->request mapping
		type: "post",					//-> method type của Request Mapping	
		contentType: "application/json",//-> nội dung gửi lên dạng json
		data: JSON.stringify(data),

		dataType: "json", // kiểu dữ liệu trả về từ Controller
		success: function(jsonResult) {
			alert("success");
		},
		error: function(jqXhr, textStatus, errorMessage) {
			alert("error");
		}
	});
}

// Thêm sản phẩm vào trong giỏ hàng
function AddToCart(baseUrl, productId, quanlity) {
	// javascript object.  data la du lieu ma day len action cua controller
	let data = {
		productId: productId, // Id sản phẩm
		quanlity: quanlity, // Số lượng cho vào giỏ hàng
	};
	
	// $ === jQuery
	// json == javascript object
	jQuery.ajax({
		url: baseUrl + "/ajax/addToCart", //->action
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(data),

		dataType: "json", // kieu du lieu tra ve tu controller la json
		success: function(jsonResult) {
			// tăng số lượng sản phẩm trong giỏ hàng trong icon
			alert(jsonResult.message);
			
	     	$("#iconShowTotalItemsInCart").html(jsonResult.totalItems);
			
			/*$([document.documentElement, document.body]).animate({
			    scrollTop: $("#iconShowTotalItemsInCart").offset().top
			}, 2000);*/
		},
		error: function(jqXhr, textStatus, errorMessage) {
			alert("error");
		}
	});
}

// Cập nhật số lượng sản phẩm trong giỏ hàng
function UpdateQuanlityCart(baseUrl, productId, quanlity) {
	
	// javascript object.  data la du lieu ma day len action cua controller
	let data = {
		productId: productId, // lay theo id	
		quanlity: quanlity
	};
	
	// $ === jQuery
	// json == javascript object
	jQuery.ajax({
		url: baseUrl + "/ajax/updateQuanlityCart", //->action
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(data),

		dataType: "json", // kieu du lieu tra ve tu controller la json
		success: function(jsonResult) {
			// tăng số lượng sản phẩm trong giỏ hàng trong icon
			$( "#quanlity_" + productId ).html(jsonResult.currentProductQuality);
			$( ".totalPrice").html(jsonResult.totalPrice);
		},
		error: function(jqXhr, textStatus, errorMessage) {
			
		}
	});
}

// Xóa sản phẩm trong giỏ hàng
function deletedCart(baseUrl, productId) {
	
	// javascript object.  data la du lieu ma day len action cua controller
	let data = {
		productId: productId, // lay theo id	
	};
	
	// $ === jQuery
	// json == javascript object
	jQuery.ajax({
		url: baseUrl + "/ajax/deletedCart", //->action
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(data),

		dataType: "json", // kieu du lieu tra ve tu controller la json
		success: function(jsonResult) {
			// tăng số lượng sản phẩm trong giỏ hàng trong icon
			alert('Bạn có chắc chắn xóa sản phẩm!')
			window.location.reload();
			$( "#quanlity_" + productId ).html(jsonResult.currentProductQuality);
		},
		error: function(jqXhr, textStatus, errorMessage) {
			
		}
	});
}