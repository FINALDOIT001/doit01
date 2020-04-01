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

   <!--::breadcrumb part start::-->
   <section class="breadcrumb blog_bg_freeboard">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="breadcrumb_iner">
                  <div class="breadcrumb_iner_item">
                     <h2>FREE BOARD</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--::breadcrumb part start::-->

   <!--::team part end::-->
   <section class="about_part section-padding">
      <div class="container">
         <div class="row">
            <div class="section_tittle">
               <h2><span>DO IT</span> &nbsp;FREE BOARD</h2>
            </div>
         </div>
         <div class="card">
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
              <table class="table table-hover hyun_table01">
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>5</td>
                    <td>hyunzzang</td>
                    <td><a href="fbView.go">스터디 어떤가요??</a></td>
                    <td>2020-03-15</td>
                    <td>10</td>
                  </tr>
                  <tr>
                      <td>4</td>
                      <td>studysiru</td>
                      <td>자바관련 질문이요~~</td>
                      <td>2020-03-13</td>
                      <td>8</td>
                  </tr>
                  <tr>
                      <td>3</td>
                      <td>javaman</td>
                      <td>취업 어떻게 하나요..</td>
                      <td>2020-03-12</td>
                      <td>76</td>
                  </tr>							
                  <tr>
                      <td>2</td>
                      <td>doglove</td>
                      <td>요새 날씨가 좋아요</td>
                      <td>2020-03-04</td>
                      <td>32</td>
                  </tr>							
                  <tr>
                      <td>1</td>
                      <td>choconuna</td>
                      <td>ㅇㅇ스터디 괜찮네요</td>
                      <td>2020-03-01</td>
                      <td>5</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
          <div class="col-md-12" style="text-align: right; margin-top: 20px;">
            <a href="fbWrite.go" class="genric-btn danger circle" style="font-size: 13px;">작성하기</a>
        </div>
    </div>

    <!-- 페이징 부분 -->
    <nav class="col-md-12 blog-pagination justify-content-center d-flex">
        <ul class="pagination">
            <li class="page-item">
                <a href="#" class="page-link" aria-label="Previous">
                    <span aria-hidden="true">
                        <span class="lnr lnr-chevron-left"> < </span>
                    </span>
                </a>
            </li>
            <li class="page-item active"><a href="#" class="page-link">01</a></li>
            <li class="page-item"><a href="#" class="page-link">02</a></li>
            <li class="page-item"><a href="#" class="page-link">03</a></li>
            <li class="page-item"><a href="#" class="page-link">04</a></li>
            <li class="page-item"><a href="#" class="page-link">05</a></li>
            <li class="page-item">
                <a href="#" class="page-link" aria-label="Next">
                    <span aria-hidden="true">
                        <span class="lnr lnr-chevron-right"> > </span>
                    </span>
                </a>
            </li>
        </ul>
    </nav>
    
   </section>
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>
