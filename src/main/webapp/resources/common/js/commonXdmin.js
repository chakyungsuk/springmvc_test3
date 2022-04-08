document.write("<script src='/resources/common/js/common.js'></script>");


checkUploadedTotalFileNumber = function(totalSize, seq) {
	if(totalSize > MAX_TOTAL_FILE_NUMBER){
		alert("전체 파일 갯수는 5개 까지 허용 됩니다.");
		$("#file" + seq).val("");
		return false;
	}
}

checkUploadedImageExt = function(obj, seq) {
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayImage.indexOf(ext) == -1) {
		alert("허용된 확장자가 아닙니다.");
		$("#file" + seq).val("");
		return false;
	}
}

checkUploadedAllExt = function(obj, seq){
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayAll.indexOf(ext) == -1) {
		alert("허용된 확장자가 아닙니다.")
		$("#file" + seq).val("");
		return false;
	}
}

checkUploadedEachFileSize = function(obj, seq){
	if(obj.size > MAX_EACH_FILE_SIZE) {
		alert("각 첨부 파일 사이즈는 1mb 이내로 등록 가능합니다.")
		$("#file" + seq).val("");
		return false;
	}
}

checkUploadedTotalFileSize = function(totalSize, seq){
	if(totalSize > MAX_TOTAL_FILE_SIZE) {
		alert("전체 용령은 10M를 넘을 수 없습니다.")
		$("#file" + seq).val("");
		return false;
	}
}


