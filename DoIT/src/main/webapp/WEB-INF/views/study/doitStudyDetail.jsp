<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DoitStudyDtail</title>




<style>

/* 별점 */
.starR {
	background: url(${contextPath}/resources/img/like_icon.png) no-repeat right 0;
	background-size: auto 94%;
	width: 40px;
	height: 40px;
	display: inline-block;
	text-indent: -9999px;
	cursor: pointer;
}

.starR.on {
	background-position: 0 0;
}
</style>

</head>

<body>


<jsp:include page="../common/header.jsp" />

	<!-- Kwon CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/kwonCustom.css">
	<!-- jung  -->
	<link rel="stylesheet" href="${contextPath}/resources/css/jungho.css">
	<!-- 데이타테이블 CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/datatables.css">



	<!-- Start Align Area -->
	<!-- ================ contact section start ================= -->
	<section class="contact-section area-padding">
		<div class="whole-wrap">
			<div class="container box_1170">
				<div class="row">
					<div class="col-md-4">
						<div class="subject">
							<img src="${contextPath}/resources/img/project-5.png" class="rounded"
								style="width: 350px; height: 360px;">
						</div>
					</div>
					<div class="col-md-4 mt-sm-30">
						<label
							style="font-size: xx-large; font-weight: bold; margin-bottom: 20px;">
							JAVA 스터디 그룹 </label> <br>
						<ul>
							<li style="margin-bottom: 3px;"><span>지역 :</span> 서울 강남구</li>
							<li style="margin-bottom: 3px;">모집인원 : 3/8</li>
							<li style="margin-bottom: 3px;">팀장: 박정호</li>
							<li style="margin-bottom: 3px;">보증금 : 20,000</li>
							<li style="margin-bottom: 3px;">수업 진행도 : 모집 중</li>
							<li style="margin-bottom: 3px;">중간 참여 : 가능 & 불가능</li>
						</ul>
						<br>
						<button class="genric-btn info radius"
							style="margin-bottom: 10px; width: 130px;">스터디 가입</button>
						팀장일 경우 (스터디 시작) 버튼
						<div class="starRev"
							style="width: 60px; display: inline; float: right;">
							<span class="starR"></span>
						</div>
						<br>
						<button class="genric-btn danger radius btn-block"
							style="width: 130px;" onclick="location.href='studyInsertSc.go'">스터디 수정</button>
						팀장만 보이는 버튼 / 스터디 가입한 사람일 경우 (스터디 탈퇴) 버튼 나오기
					</div>
					<div class="col-md-4 mt-sm-20">
						<label class="mb-20"
							style="margin-left: 45px; font-size: large; font-weight: bold;">참석자
							(3명)</label>

						<div class="checkuserscroll">

							<ul class="checkuser">
								<li><div class="checkuserdiv">
										<img src="${contextPath}/resources/img/client_2.png" class="rounded-circle "
											style="height: 70px;" alt="Cinque Terre">박정호
									</div></li>
								<li><div class="checkuserdiv">
										<img src="${contextPath}/resources/img/client_1.png" class="rounded-circle "
											style="height: 70px;" alt="Cinque Terre">케빈
									</div></li>
								<li><div class="checkuserdiv">
										<img src="${contextPath}/resources/img/client/client_2.png" class="rounded-circle "
											style="height: 70px;" alt="Cinque Terre">권구현
									</div></li>



							</ul>
						</div>

						<!-- 참가자 리스 확인 -->
					</div>


				</div>
				<hr>


				<ul class="nav nav-tabs justify-content-center"
					style="margin-top: 30px;">
					<li class="nav-item"><a class="nav-link active"
						style="width: 200px; text-align: center; font-weight: bold;"
						data-toggle="tab" href="#home">스터디 소개</a></li>
					<li class="nav-item"><a class="nav-link"
						style="width: 200px; text-align: center; font-weight: bold;"
						data-toggle="tab" href="#menu1">일정</a></li>
					<li class="nav-item"><a class="nav-link"
						style="width: 200px; text-align: center; font-weight: bold;"
						data-toggle="tab" href="#menu3">자료실</a></li>
					<li class="nav-item"><a class="nav-link"
						style="width: 200px; text-align: center; font-weight: bold;"
						data-toggle="tab" href="#menu2">갤러리</a></li>
				</ul>

				<br>
				<br>
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane container active" id="home">
						<!--
				
				<div class="col-lg-8">
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 30%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>

			-->
						<div class="col-lg-12 div_border">
							<span
								style="font-size: x-large; font-weight: bold; display: block; margin-bottom: 30px;">활동
								계획</span> [중국어 언어교환 모임 소개(중한교류-중국어 회화 모임)] 안녕하세요. 중한교류-중국어회화 언어교환 모임에
							오신걸 환영합니다. 저희는 평일 저녁 및 주말 오후 시간에 중국인 한국인들이 함께 모여 언어교환을 합니다.
							언어교환이란 정말 유익한 프로그램이에요. 요즘 한국에 중국인들이 정말 많습니다. 생각보다 많은 중국인들이 한국 친구를
							사귀고 싶고, 한국어도 배우고 싶어한답니다. 물론 많은 한국분들이 중국어를 배우고 싶고 중국인 친구들을 사귀고
							싶어하구요. 그러니까 이들이 함께 모여 교류한다면 정말 좋은 시너지 효과가 날거라고 생각합니다. 그곳이 바로
							Global Chinese Mates가 주최하는 ‘중한교류-중국어회화 모임'입니다. 그렇다면 일정 및 장소,
							프로그램등이 궁금하시죠? 아래 확인해주세요!

							https://a248.e.akamai.net/secure.meetupstatic.com/photos/event/8/4/e/2/600_459514018.jpeg

							[일정> 홍대 화요일 저녁 7시 ~ 밤 10시(홍대 2번출구 아르고 카페 : 마포구 동교동 204-54) 강남 목요일
							저녁 7시 ~ 밤 10시(신논현역 3번출구 GSM테라스 : 강남구 논현동 166번지) 강남 토요일 오후 3시 ~ 오후
							6시(신논현역 3번출구 GSM테라스 : 강남구 논현동 166번지) 강남 일요일 오후 3시 ~ 오후 6시(홍대 1번출구
							Apirl coffee : 마포구 동교동 203-40)

							https://a248.e.akamai.net/secure.meetupstatic.com/photos/event/8/4/e/1/600_459514017.jpeg

							[장소> 위에 참고해 주세요~ [지도] 사진 확인해주세요.

							https://secure.meetupstatic.com/photos/event/8/d/4/3/600_463536163.jpeg

							[메뉴> 커피, 차, 쥬스, 맥주, 칵테일 각 카페의 사정에 따라서 다르지만 많은 종류의 쥬스, 차, 맥주, 칵테일,
							와인등이 준비되어 있답니다. 맥주, 칵테일, 와인 한잔은 여러분이 중국어를 하는데 큰 도움이 될거에요. 물론 지나친
							음주는 좋지 않지만 퇴근후 혹은 주말에 한잔 하는 것은 외국어 향상에 큰 도움이 될거라고 확신합니다.
						</div>




					</div>
					<div class="tab-pane container fade" id="menu1">
						<div id="kwon-inst01">
							<div id="kwon-inst-btn101" class="btn btn-outline-success" onclick="location.href='studyInsertSc.go'">모임
								등록</div>
						</div>

						<div>

							<table id="kwon-table101" class="table table-bordered">
								<thead class="kwon-thead101">
										<th width="10%" class="th101">모임일자</th>
										<th width="10%" class="th101">시간</th>
										<th width="10%" class="th101">지역</th>
										<th width="10%" class="th101">장소</th>
										<th width="10%" class="th101">카테고리</th>
										<th width="10%" class="th101">모임명</th>
										<th width="8%" class="th101">참석 인원</th>
									</tr>
								</thead>
								<tbody>
									<tr class="kwon-tr1" onclick="location.href='studySc.go'">
										<input type="hidden" value="모임의 아이디 값1" name="아이디 네임">
										<td class="kwon-td101">2020.03.11</td>
										<td class="kwon-td101">PM 18:00</td>
										<td class="kwon-td101">강남</td>
										<td class="kwon-td101">Test021</td>
										<td class="kwon-td101">사당역 부근</td>
										<td class="kwon-td101">2020.03.11</td>
										<td class="kwon-td101">0/10</td>
									</tr>
									<tr class="kwon-tr1"  onclick="location.href='studySc.go'">
										<input type="hidden" value="모임의 아이디 값2" name="아이디 네임">
										<td class="kwon-td101">2020.03.12</td>
										<td class="kwon-td101">PM 18:00</td>
										<td class="kwon-td101">강남</td>
										<td class="kwon-td101">Test021</td>
										<td class="kwon-td101">사당역 부근</td>
										<td class="kwon-td101">2020.03.11</td>
										<td class="kwon-td101">9/10</td>
									</tr>
									<tr class="kwon-tr1"  onclick="location.href='studySc.go'">
										<input type="hidden" value="모임의 아이디 값3" name="아이디 네임">
										<td class="kwon-td101">2020.03.13</td>
										<td class="kwon-td101">PM 18:00</td>
										<td class="kwon-td101">강남</td>
										<td class="kwon-td101">Test021</td>
										<td class="kwon-td101">사당역 부근</td>
										<td class="kwon-td101">2020.03.11</td>
										<td class="kwon-td101">10/10</td>
									</tr>
								</tbody>
							</table>
						</div>



					</div>

					<!------------------------------------- 사진 파트 --------------------------------------->
					<div class="tab-pane container fade" id="menu2">글씨 나옴??</div>
					<div class="tab-pane container fade" id="menu3"></div>

				</div>

				<br> <br> <br> <br>


			</div>
		</div>
	</section>
	<!-- End Align Area -->
	
	   <jsp:include page="../common/footer.jsp" />
	
	<script>
		/*** 별점 ****************************************************/
		$('div.starRev').children('span').click(function() {

			$(this).toggleClass("on");
			star = $('div.starRev').children('span.starR.on').length;
			/*
			  var star = 0;
			if(star == 0){
				$(this).addClass('on').prevAll('span').addClass('on');
				star = $('div.starRev').children('span.starR.on').length;
				
			}else{
				$('div.starRev').children('span').className = "starR"; 
				star = 0;
			} */

			return false;
		});
	</script>
	

	<!-- dataTables js -->
	<script src="${contextPath}/resources/js/datatables.js"></script>
	<script src="${contextPath}/resources/js/kwonCustom.js"></script>
	<script src="${contextPath}/resources/js/jungho.js"></script>
	
	


</body>

</html>