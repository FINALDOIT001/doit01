<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${contextPath}/resources/css/jungho.css">
<script src="${contextPath}/resources/js/jungho.js">
	
</script>


<!-- Datepicker 사용 css 건들지마 혼나 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- summernote 사용 건들지마 혼나 -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-lite.min.js"></script>

<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=YOUR_CLIENT_ID"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.js"></script>
<body>


	<jsp:include page="../common/header.jsp" />



	<!--::team part end::-->
	<section class="about_part section-padding">
		<div class="container">
		<form action="sgInsert.go" method="post"
							enctype="multipart/form-date" class="was-validated">
			<div class="row">
				<div class="col-lg-6 col-md-6">


					<div class="filebox">
						<label for="cma_file" class="rounded"> <input type="file"
							name="cma_file" id="cma_file" accept="image/*" capture="camera"
							onchange="getThumbnailPrivew(this,$('#cma_image'))" />
							<div id="cma_image"></div>
						</label>

					</div>
				</div>
				
				<div class="offset-lg-1 col-lg-5 col-sm-8 col-md-6"
					style="margin-top: 3%;">
					<div class="about_text">

							<div class="row">
								<div class="col">
									<input type="text" class="form-control" placeholder="공부방 제목 입력"
										name="studytitle" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">공부방 제목 입역</div>
									<input type="text" class="form-control" vlaue="니돈먹튀"
										name="userId" hidden>
									<!-- 방 개설 자 아이디 자동 입력 구간-->
								</div>
							</div>
							<br>


							<div class="row">
								<div class="col">
									<input type="text" id="from" class="form-control"
										placeholder="시작 날짜 설정" name="startDate" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">시작 기간 설정</div>
								</div>
								<div class="col">
									<input type="text" id="to" class="form-control"
										placeholder="종료 날짜 설정" name="endDate" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">종료 기간 설정</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="col">
									<input type="text" class="form-control" placeholder="지역 입력"
										name="city" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">지역입력 예) 서울</div>
								</div>
								<div class="col">
									<input type="text" class="form-control" placeholder="장소 입력"
										name="place" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">장소입력 예) xxx커피집</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="col">
									<input type="number" min="0" class="form-control"
										placeholder="보증금 입력" name="city" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">인당 보증급 설정</div>
								</div>
								<div class="col">
									<input type="number" min="1" class="form-control"
										placeholder="모집 인원" name="pcount" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">모집 인원 설정</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col">
									<input type="text" id="teg" class="form-control"
										placeholder="검색어 등록" name="teg" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">검색어 입력 예) @JAVA</div>
								</div>
							</div>
							<br> <br>

							<div class="form-group form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" name="remember"
									required> 수업 중간 참여 가능 여부 체크 해주세요.
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">필수</div>
								</label>
							</div>
					</div>
				</div>
			</div>
			<hr>
			<div
				style="text-align: center; padding-top: 20px; padding-bottom: 20px;">
				<h2>About Study</h2>
			</div>
			<div id="summernote"></div>
			<br>
			<div style="text-align: center; margin-top: 20px;">

				<button type="submit" class="genric-btn danger circle"
					style="font-size: 13px; margin-right: 10px;">등록</button>
				<button type="reset" class="genric-btn danger circle"
					style="font-size: 13px;">취소</button>
			</div>
			</form>
		</div>
	</section>



	<script>
		$('#summernote').summernote(
				{
					placeholder : '스터디 소개를 입력해 주세요',
					tabsize : 2,
					height : 600,
					toolbar : [ [ 'style', [ 'style' ] ],
							[ 'font', [ 'bold', 'underline', 'clear' ] ],
							[ 'color', [ 'color' ] ],
							[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
							[ 'table', [ 'table' ] ],
							[ 'view', [ 'fullscreen', 'codeview', 'help' ] ] ]
				});

		var markupStr = $('#summernote').summernote('code');
	</script>


	<jsp:include page="../common/footer.jsp" />



	<!-- datapicker 건들지마 진짜 혼나 -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


	<script>
		$(function() {
			var dateFormat = "mm/dd/yy", from = $("#from").datepicker({
				minDate : 0,
				defaultDate : "+1w",
				changeMonth : true,

			}).on("change", function() {
				to.datepicker("option", "minDate", getDate(this));
			}), to = $("#to").datepicker({
				defaultDate : "+1w",
				changeMonth : true,

			}).on("change", function() {
				from.datepicker("option", "maxDate", getDate(this));
			});

			function getDate(element) {
				var date;
				try {
					date = $.datepicker.parseDate(dateFormat, element.value);
				} catch (error) {
					date = null;
				}

				return date;
			}
		});
	</script>


</body>

</html>