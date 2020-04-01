<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .note-toolbar {
        display: none;
    }

</style>

</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
		<!-- Kwon CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/kwonCustom.css">

	<!-- 데이타테이블 CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/datatables.css">

    <!-- include summernote js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.css" rel="stylesheet">
    

   <!--::project part start::-->
   <section class="about_part section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section_tittle">
                    <h2><span>책을</span> 가지고싶다</h2>
                </div>
                <form action="select.do" id="kwon-Form01" enctype="multipart/form-data">
                    <input type="hidden" name="userId" value="">
                    <input type="hidden" name="userName" value="">
                    <table border="1" class="kwon-table1" cellpadding="10px">
                      
                        <tr>
                            <td class="th02">지역</td>
                            <td colspan="2"><input type="text" name="location" value="${ bs.bsLocation }" disabled></td>
                            <td class="th02 th03" colspan="1">분류</td>
                            <td colspan="2"><label value="${ bs.bsCategory }">카테고리값</label></td>
                        </tr>
                        <tr>
         
                           <td class="th02" colspan="1">제목</td>
                           <td class="td02" colspan="4">
                               <input type="text" name="title" class="tdin02" value="${ bs.bsTitle }" disabled>
                           </td>
                       </tr>
                        <tr>
                            <td colspan="6" class="td-img01">
                                <div> <img class="img01" src="${contextPath}/resources/img/sample.jpg" alt="sample.jpg"></div>
                            </td>
                        </tr>
                    </table>
                    <div id="kwon-area1">
                        <input type="textarea" class="" id="summernote" name =""></textarea>
                    </div>
                    
                    <div style="text-align:center;">
					<c:if test="${ loginUser.userName eq bs.bsWriter }">
                        <input type="button" id="kwon-btn02" class="genric-btn danger circle" style="font-size: 13px;" value="수정하기"></input>
                    </c:if>
                        <input type="button" id="kwon-back01" class="genric-btn danger circle" style="font-size: 13px;" value="돌아가기"></input>
                    </div>
                			로그인 체크해서 id값이 같은 사람만 수정할 수 있도록 js를 바꿔야 함
                </form>

                <!-- comment area start -->
                <div class="comments-area">
                    <h4>댓글 3</h4>
                    <div class="comment-list">
                       <hr>
                       <div class="single-comment justify-content-between d-flex">
                          <div class="user justify-content-between d-flex">
                             <div class="desc">
                                <div class="d-flex justify-content-between">
                                   <div class="d-flex align-items-center">
                                      <div class="thumb">
                                         <img src="img/comment/comment_1.png" alt="" style="width: 55px; height: 55px;">
                                      </div>
                                      
                                      <h5>
                                         <a href="#">홍길동</a>
                                      </h5>
                                      <p class="date">2020년 3월 14일, 오후 2:40 </p>
                                   </div>
                                </div>
                                <p class="comment">
                                1등
                                </p>
                             </div>
                          </div>
                       </div>
                    </div>
                   
                 <hr>
                 <div class="comment-form">
                    <form class="form-contact comment_form" action="#" id="commentForm"></form>
                       <div class="row">
                          <div class="col-10">
                             <div class="form-group">
                                <textarea class="form-control w-100 placeholder hide-on-focus" name="comment" id="comment"
                                   cols="30" rows="5" placeholder="댓글을 입력해 주세요."></textarea>
                             </div>
                          </div>
                          <div class="col-2" style="margin-top: 40px;">
                             <div class="form-group">
                                <button type="submit" class="genric-btn danger radius" style="font-size:13px;">등록</button>
                             </div>
                          </div>
                       </div>
                       <!-- comment area end -->
                    </form>
                 </div>
              </div>

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
            ['view', ['fullscreen', 'codeview', 'help']],
         ]
      });
      
      <%-- var markupStr = '<%=n.getnContent()%>'; --%>
      var markupStr = '${bs.bsCon}';
		$('#summernote').summernote("code", markupStr);
		$('#summernote').summernote('disable');
		$('#summernote').summernote().css('display','none');
      
      console.log(markupStr);
   </script>

	
	

</body>
</html>
