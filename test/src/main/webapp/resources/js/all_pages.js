var executeAjax = function() {
	
	var location = "execute3";
	var method = "POST";
	var requestData = {valor1:"gg",valor2:"hh"}; 
//	var requestData = "valor1=rr&valor2=re";
//	var contentType = "application/json";
	var contentType = "application/x-www-form-urlencoded; charset=UTF-8";
	
	$
			.ajax({
				url : location,
				type : method,
				dataType : 'json',
//				data : JSON.stringify(requestData),
				data : requestData,
				contentType : contentType,
				success : function(data, textStatus, jqXHR) {
					console.log(data);
//					postAjaxUI(ajaxDisabled);
//					successHandler(data, status);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log(textStatus);
//					postAjaxUI(ajaxDisabled);
//					alertError("An internal server error occured. Please check logs for details");
//
//					if (errorCallback) {
//						errorCallback();
//					} else {
//						handleErrorDefault(jqXHR);
//					}
				}
			});
}