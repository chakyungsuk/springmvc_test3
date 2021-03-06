<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE HTML>
<htm1 lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">

<!-- bootstrap Css -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap extra Css -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/sticky-footer/sticky-footer.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/offcanvas-navbar/offcanvas.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/sidebars/sidebars.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/navbars/navbar.css" rel="stylesheet">
<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
<!-- user css -->
<script src="https://kit.fontawesome.com/ac511b8e02.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">


<link rel="shortcut icon" href="https://ifh.cc/g/43bP0g.png" type="image/x-icon" />
<title id="ctl00_headerTitle">Ten Thousand Recipes</title>
</head>

<style type="text/css">

/* 	@media ( max-width:767px ) { */
		body {
			padding-top: 0px;
			padding-bottom: 0px;
			margin-bottom: 12px;
		}
		.row {
			margin-bottom: 12px;
		}
      	.container {
          	width: auto;
          	margin-bottom: 400px;
        } 
   		.addScroll {
   			overflow:auto;
   			height: 90px;
   			background-color: white;
   		}
</style>

<body>

<form id="formUpdt" name="formUpdt" method="post" action="/member/memberUpdt">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">

<input type="hidden" name="ifmmSeq" id="ifmmSeq" value="<c:out value="${vo.ifmmSeq}"/>">
<%-- <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }"/>">
<input type="hidden" name="ifmmId" value="<c:out value="${vo.ifmmId }"/>">
<input type="hidden" name="ifmmPassword" value="<c:out value="${vo.ifmmPassword }"/>">
<input type="hidden" name="fdmeEmailFull" value="<c:out value="${vo.fdmeEmailFull }"/>">
<input type="hidden" name="fdmpNumber" value="<c:out value="${vo.fdmpNumber }"/>"> --%>

<div class="container-sm">
	<div class="row">
		<div class="col-12 col-sm-12 col-lg-2">
			<img src="/resources/xdmin/image/manager_image/logo1.png" width="200px">
 		</div>
		<div class="col-12 col-sm-12 col-lg-4" style="text-align: center; margin-top:15px;"> 
		</div>
		<div class="col-12 col-sm-12 col-lg-2">
		</div>
		<div class="col-12 col-sm-12 col-lg-2">
		</div>
		<div class="col-1 d-none d-md-block">	
			<div class="row">
				<div class="col" style=" margin-top: 40px; "><p class="name" style="font-size: 16px; font-weight:bold;display: inline;">${sessName} <span>???</span></p> </div>
			</div>
		</div>
		<div class="col-1 d-none d-md-block float-end">	
			<div class="row">
				<span class="badge bg-primary" role="button" id="btn-Logout" style="width: 100px; height:30px; margin-top: 38px;"><p style="font-size: 13px; margin-top: 5px; ">???????????? <i class="fa-solid fa-right-from-bracket"></i></p></span>
			</div>
		</div>
	</div>
		<div class="col-12">
		<ul class="nav nav-tabs" style="margin-top: 20px">
			<li class="nav-item">
		    	<a class="nav-link active" aria-current="page" href="/member/memberList">??????????????????</a>
		    </li>
		</ul>
		</div>
		<div style="margin-left: 11px; margin-top: 20px;">
			<h3 style="margin-bottom: 0px;">??????????????????</h3>
		</div>
	</div>
<br><br>

<div class="container-sm">
	<div class="row">
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>?????????</h6>
			<input class="form-control" id="ifmmId" name="ifmmId" type="text" value="<c:out value="${item.ifmmId}"/>" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>????????????</h6>
			<input class="form-control" id="ifmmPassword" name="ifmmPassword" type="password" placeholder="??????(????????????),??????,????????????(), 8~20?????? ??????" value="<c:out value="${item.ifmmPassword }"/>" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<!-- <h6>???????????? ??????</h6>
			<input class="form-control" id="ifmmPassword2" name="ifmmPassword" type="password" placeholder="" autocomplete="off"> -->
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>??????</h6>
			<input class="form-control" id="ifmmName" name="ifmmName" type="text" value="<c:out value="${item.ifmmName}"/>">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>??????</h6>
			<select class="form-select" id="ifmmGenderCd" name="ifmmGenderCd" id="ifmmGenderCd">
				<option selected value="">::??????::</option>
				<option value="1" <c:if test="${item.ifmmGenderCd eq 1 }">selected</c:if>>??????</option>
				<option value="2" <c:if test="${item.ifmmGenderCd eq 2 }">selected</c:if>>??????</option>
				<option value="3" <c:if test="${item.ifmmGenderCd eq 3 }">selected</c:if>>??????</option>
			</select>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>??????</h6>
			<input class="form-control" type="text" aria-label="default input example" id=shDate name="ifmmDob" value="<c:out value="${item.ifmmDob}"/>" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>?????????</h6>
			<input class="form-control" name="fdmeEmailFull" type="text" value="<c:out value="${item.fdmeEmailFull}"/>" placeholder="name@example.com" >
		</div>
		<div class="col-6 col-lg-6 col-sm-12">
			<h6>???????????? ??????(??????)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" id="ifmmSaved" value="<c:out value="${item.ifmmSaved}"/>" <c:if test="${item.ifmmSaved eq 1 }">checked</c:if>>
				<label class="form-check-label" for="flexCheckDefault"> ???????????????. </label>
			</div>
		</div>
		<div class="col-2 col-lg-1 col-sm-2" style="margin-bottom: 12px; padding-right: 1px;">
			<h6>?????????</h6>
			<select class="form-select" id="fdmpTelecomCd" name="fdmpTelecomCd" style="padding-right: 1px;">
				<option selected value="">::??????::</option>
				<option value="1" <c:if test="${item.fdmpTelecomCd eq 1}">selected</c:if>>SKT</option>
				<option value="2" <c:if test="${item.fdmpTelecomCd eq 2}">selected</c:if>>KT</option>
				<option value="3" <c:if test="${item.fdmpTelecomCd eq 3}">selected</c:if>>LGU</option>
			</select>
		</div>
		<div class="col-10 col-lg-5 col-sm-10" style="margin-bottom: 12px; padding-left: 0px;">
			<input class="form-control" type="text" placeholder="????????? ????????? ????????????." name="fdmpNumber" value="<c:out value="${item.fdmpNumber }"/>" style="padding-left: 0px; margin-top: 27px;">
		</div>
		<div class="col-6 col-lg-6 col-sm-12">
			<h6>????????? ?????? ????????? ?????? ??????(??????)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				<label class="form-check-label" for="flexCheckDefault"> ???????????????. </label>
			</div>
		</div>
		<div class="col-2 col-lg-1 col-sm-2" style="margin-bottom: 12px; padding-right: 1px;">
			<h6>????????????</h6>
			<select class="form-select" aria-label="Default select example" style="padding-right: 0px; ">
				<option selected>::??????::</option>
				<option value="1">02</option>
				<option value="2">031</option>
				<option value="3">042</option>
				<option value="4">062</option>
			</select>
		</div>
		<div class="col-10 col-lg-5 col-sm-10" style="margin-bottom: 12px; padding-left: 0px;">
			<input class="form-control" type="text" placeholder="????????? ????????? ????????????." aria-label="default input example" style="padding-left: 0px; margin-top: 27px;">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>????????? ?????? ????????? ?????? ??????(??????)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				<label class="form-check-label" for="flexCheckDefault"> ???????????????. </label>
			</div>
		</div>
		<!-- <div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<label for="file0" class="form-label btn btn-info btn-sm">???????????????</label>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<label for="file1" class="form-label btn btn-info btn-sm">????????????</label>
		</div> -->
		<div class="d-grid gap-2 col-12 col-lg-6 col-sm-12" >
			<h6>??????(????????????)</h6>
			<div class="input-group mb-2">
				<input type="text" id="fdmaZipcode" class="form-control" name="fdmaZipcode" aria-describedby="button-addon2" value="<c:out value="${item.fdmaZipcode}"/>">
				<button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="sample6_execDaumPostcode()">
					<i class="fa-solid fa-magnifying-glass-plus"></i>
				</button>
			</div>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-3 col-sm-12" style="padding-right: 2px;">
			<input class="form-control" id="fdmaTitle1" name="fdmaTitle1" type="text" value="<c:out value="${item.fdmaTitle1}"/>">
		</div>
		<div class="col-12 col-lg-3 col-sm-12" style="padding-left: 2px;">
			<input class="form-control" id="fdmaTitle2" name="fdmaTitle2" type="text" value="<c:out value="${item.fdmaTitle2}"/>">
		</div>		
		<div class="d-grid gap-2 col-6 col-lg-6 col-sm-12">
		</div>
		<div class="d-grid gap-2 col-12 col-lg-6 col-sm-12" style="margin-top: 10px;">
		<input class="form-control" id="fdmaAddress" name="fdmaAddress" type="text" placeholder="??????????????? ??????????????????." value="<c:out value="${item.fdmaAddress}"/>">
		</div>
		<div class="row">
		<div class="col-12 col-lg-6 col-sm-12" style="margin-top: 10px;">
		<input class="form-control" id="fdmaLatArray0" name="fdmaLat" value="<c:out value="${item.fdmaLat }"/>" type="text" placeholder="??????" readonly="readonly" style="width: 200px; float: left; margin-right: 20px;">
		<input class="form-control" id="fdmaLatArray0" name="fdmaLng"  value="<c:out value="${item.fdmaLng }"/>" type="text" placeholder="??????" readonly="readonly" style="width: 200px;">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		</div>

		<div class="col-12 col-lg-6 col-sm-12">
			<label for="exampleFormControlTextarea1" class="form-label">??????</label>
			<textarea class="form-control" id="ifmmDesc" name="ifmmDesc" style="margin-bottom: 12px;">
			<c:out value="${fn:replace(item.ifmmDesc, br, '<br/>')}" escapeXml = "false"/></textarea>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<!-- <div class="col-6 col-lg-3 col-sm-6">
			<h6>???????????????</h6>
			<input class="form-control" type="text" placeholder="CHa(CEO)" aria-label="default input example" disabled>
		</div>
		<div class="col-6 col-lg-3 col-sm-6">
			<h6>???????????????</h6>
			<input class="form-control" type="text" placeholder="2021.01.01" aria-label="default input example" disabled>
		</div>
		<div class="col-6 col-lg-3 col-sm-6">
			<h6>???????????????</h6>
			<input class="form-control" type="text" placeholder="CHa(CEO)" aria-label="default input example" disabled>
		</div>
		<div class="col-6 col-lg-3 col-sm-6">
			<h6>???????????????</h6>
			<input class="form-control" type="text" placeholder="2021.01.01" aria-label="default input example" disabled>
		</div> -->
	</div>
</div>

<br>

<div class="container-sm">
	<div class="row">
		<div class="col-lg-4 col-md-6 col-sm-6" >
			<!-- <button type="button" class="btn btn-danger btn-sm me-md-2 " data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="float: left;"  >
				<i class="fa-solid fa-trash-can"></i>
			</button> -->
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6" style="text-align: center;">
			<button type="button" id="btnback" name="btnback" class="btn btn-outline-primary" style="width: 200px;">????????????</button>
			<button type="submit" id="btnSubmit" name="btnSubmit" class="btn btn-outline-danger" style="width: 200px;">??????</button>
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6">
			<!-- <button class="btn btn-success btn-sm" type="button" style="float: right;">
				<i class="fa-solid fa-file-excel"></i>	
			</button> -->
		</div>
	</div>
</div>

<br><br>
</form>

<!-- Modal -->

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">?????? ?????? ???????????????????</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ??????????????? ????????? ?????? ???????????? ?????? ?????????.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
        <button type="button" class="btn btn-danger"><a href="./memberList.html">??????</a></button><br>
      </div>
    </div>
  </div>
</div>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-examples/sidebars/sidebars.js"></script>

<div id="layer" style="display:none; position:fixed; overflow:hidden; z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer; position:absolute; right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="?????? ??????">
</div>


<script type="text/javascript">

	$("#btnback").on("click", function(){
		var back = confirm ("?????? ???????????????????")	
		if(back) {
			$("#formUpdt").attr("action","/member/memberView");
			$("#formUpdt").submit();	
		} else {
			return false;
		}
	});
	
	
	$("#btnSubmit").on("click", function(){
		var correction = confirm ("?????????????????????????")	
		if(correction) {
			$("#ifmmSeq").val(seq)	
			$("#formUpdt").attr("action","/member/memberUpdt");
			$("#formUpdt").submit();
		} else {
			return false;
		}
	});
	

	
 	$("#btnSubmit").on("click", function(){
	
 		if(!checkNull($("#fdmpTelecomCd"),$("#fdmpTelecomCd").val(), "???????????? ????????? ?????????")) return false
		if(!checkNull($("#ifmmGenderCd"),$("#ifmmGenderCd").val(), "????????? ???????????????")) return false
		if(!checkNull($("#shDate"),$("#shDate").val(), "????????? ????????? ?????????")) return false
	  
		if($("#ifmmSaved").is(":checked")){
	    	return true;
	    } else {
          alert("???????????? ???????????? ????????? ?????? ?????????.");
          $("#ifmmSaved").focus();
			return false;
	    }
	});   

    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var addr = ''; // ?????? ??????
                var extraAddr = ''; // ???????????? ??????

                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                    addr = data.roadAddress;
                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                    addr = data.jibunAddress;
                }

                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
                if(data.userSelectedType === 'R'){
                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // ???????????? ??????, ??????????????? ?????? ????????????.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // ????????? ??????????????? ?????? ????????? ?????????.
                    document.getElementById("fdmaTitle2").value = extraAddr;
                
                } else {
                    document.getElementById("fdmaTitle2").value = '';
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('fdmaZipcode').value = data.zonecode;
                document.getElementById("fdmaTitle1").value = addr;
                // ????????? ???????????? ????????? ????????????.
                document.getElementById("fdmaAddress").focus();
            }
        }).open();
    }
    
	$(document).ready(function(){
		 $("#shDate").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '?????? ???',
	    nextText: '?????? ???',
	    monthNames: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
	    monthNamesShort: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
	    dayNames: ['???', '???', '???', '???', '???', '???', '???'],
	    dayNamesShort: ['???', '???', '???', '???', '???', '???', '???'],
	    dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'],
	    showMonthAfterYear: true,
	    yearSuffix: '???'
	});
</script>
<script type="text/javascript">
upload = function(seq, div){
	$("#ulFile"+ seq).children().remove();
	
	var fileCount = $("input[type=file]")[seq].files.length;
	
	if(checkUploadedTotalFileNumber(fileCount,seq) == false) {return false;}
	
	var totalFileSize;
	
	for (var i = 0; i < fileCount ; i++) {
		if(div == 1){
			if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		} else if(div == 2) {
			if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		} else {
			return false;
		}
		
		if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		totalFileSize += $("input[type=file]")[seq].files[i].size;
	}
	
	if(checkUploadedTotalFileSize(totalFileSize, seq) === false){return false;}
	
	for(var i = 0; i< fileCount ; i++){
		addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
	}
}
	
		addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li = li + name;
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+seq+','+index+')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li = li + '</li>';
			$("#ulFile"+seq).append(li);
		}
	
	delLi = function(seq, index){
		$("#li_"+seq+"_"+index).remove();
	};
	
$("#btn-Logout").on("click", function(){
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/food/FoodLogin";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});	
	});
</script>   

</body>
</htm1>





