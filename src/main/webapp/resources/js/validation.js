


// jquery 형 함수

checkNull = function(obj, value, message) {
	if(value == "" || value == null){
		alert(message)
		obj.focus();
		return false;
	} else {
		return true;
	}
}



/*
// javascript
function checkNull (obj, value, message) {
	if(value == "" || value == null){
		alert(message)
		obj.focus();
		return false;
	}
}*/