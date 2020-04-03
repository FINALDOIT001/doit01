<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<!-- Kwon CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/kwonCustom.css">

	<!-- 데이타테이블 CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/datatables.css">
	
    <!-- include summernote CSS -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.css" rel="stylesheet">
	

   <!--::project part start::-->
   <section class="about_part section-padding ">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section_tittle">
                    <h2>등록된 책<span>&nbsp; 수정</span></h2>
                </div>
                <form action="updateBS.do" id="kwon-Form01" enctype="multipart/form-data" method="POST">
                    <input type="hidden" name="mId" value="">
                    <input type="hidden" name="mName" value="${ loginUser.mName }">
               		<input type="hidden" name="originalFileName" value="${ bs.bsRenameFileName }">
					<input type="hidden" name="renameFileName" value="${ bs.bsRenameFileName }">
                    
                    <table border="1" class="kwon-table1" cellpadding="10px">
                     <tr>
                        <td class="th02">*지역</td>
                        <td colspan="2"><input type="text" name="location" value="${ bs.bsLocation }" required></td>
                        <td class="th02">*분류</td>
                        <td colspan="3">
                             <select name="category" style="text-align: right;" value="${ bs.bsCategory }" required>
                                <option value="">category</option>
                                <option value="JAVA">JAVA</option>
                                <option value="JavaScript">JavaScript</option>
                                <option value="Pyhton">파이썬</option>     
                                <option value="Spring">스프링</option>
                                <option value="C-like">C-like 계열</option>
                                <option value="HTML">HTML</option>
                                <option value="기타">기타</option>
                            </select> 
                        </td>
                    </tr>
                    
                    <tr>
                       <td colspan="1" class="th02">사진 추가</td>
                       <td colspan="4">
                       <input type="file" name="bsFileName">
                       <a href="${ contextPath }/resources/bsUploadFiles/${ bs.bsRenameFileName }" download="${ bs.bsRenameFileName }">${ b.originalFileName }</a>
</td>
                   </tr>
                    <td class="th02" colspan="1">*제목</td>
                    <td class="td02" colspan="4"><input type="text" name="bsTitle" class="tdin02" value="${ bs.bsTitle }" required></td>
                        
                    </table>
                    <div id="kwon-area1">
                        <input type="textarea" class="form-control" id="summernote" name ="bsCon" ></textarea>
                    </div>
        
                    <div style="text-align:center;">
                     <input type="submit" id="kwon-submit01" class="genric-btn danger circle" style="font-size: 13px;" value="책 수정하기"></input>
                     <input type="reset" id="kwon-reset01" class="genric-btn danger circle" style="font-size: 13px;" value="취소하기"></input>
                     <input type="button" id="kwon-back01" class="genric-btn danger circle" style="font-size: 13px;" value="뒤로가기"></input>
                 </div>
                </form>

            </div>
        </div>
    </div>
</section>
<!--::project part end::-->

	<jsp:include page="../common/footer.jsp"/>
	
		<!-- dataTables js -->
	<script src="${contextPath}/resources/js/datatables.js"></script>
	<!-- <script src="js/datatables-min.js"></script> -->
	<script src="${contextPath}/resources/js/kwonCustom.js"></script>
	
	<!-- summernote js -->
   	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.js"></script>
	
	
	   <script>
        $('#summernote').summernote({
    		
            tabsize: 5,
            height: 300,
            toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['table', ['table']],
            ['view', ['fullscreen', 'codeview', 'help']]
            ],
            placeholder: '상세 내용을 입력해주세요'

        });
        var markupStr = '${bs.bsCon}';
		$('#summernote').summernote("code", markupStr);
		$('#summernote').summernote().css('display','none');

   </script>
	

</body>
</html>
