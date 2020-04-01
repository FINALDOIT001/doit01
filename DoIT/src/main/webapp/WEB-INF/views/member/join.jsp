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
	<jsp:include page="../common/header.jsp" />

	<!-- join page start -->
	<div style="margin-top: 130px;"></div>
	<div class="container">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="" style="margin: auto;">
						<div
							class="integrated-sign-inner card o-hidden border-0 shadow-lg my-5"
							style="padding: 70px; width: 600px;">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">REGISTER</h1>
							</div>
							<!-- 필수정보는 required 나중에 필수로 넣어줄 것! -->
							<form class="user" id="joinForm" action="join.me"
								method="post">
								<div class="form-group row"></div>
								<div class="form-group">
									<label><span style="color: red">*</span> 아이디</label> <input
										type="text" class="form-control hide-on-focus" id="userId"
										placeholder="아이디" required> <label
										style="font-size: 12px;">사용하실 수 있는 아이디입니다.</label>
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-user"
										id="userPwd" name="userPwd" placeholder="비밀번호를 입력하세요.*"
										required>
								</div>
								<div class="form-group">
									<label><span style="color: red">*</span> 비밀번호 확인</label> <input
										type="password" class="form-control form-control-user"
										id="userPwd2" name="userPwd2" placeholder="비밀번호 확인" required>
									<label style="font-size: 12px; color: red">비밀번호가 일치하지
										않습니다.</label>
								</div>
								<div class="form-group">
									<!-- 							<input type="text" class="form-control form-control-user" name="userPwdHintSelect" id="userPwdHintSelect" 
                        placeholder="비밀번호 힌트 선택.*" required> -->
									<select class="form-control" id="searchCondition"
										name="userPwdHintSelect">
										<option>비밀번호 힌트를 선택하세요</option>
										<option value="1">첫 해외여행 나라</option>
										<option value="2">졸업한 초등학교 이름</option>
										<option value="3">졸업 중학교</option>
										<option value="4">졸업 고등학교</option>
									</select>
								</div>

								<div class="form-group">
									<label style="display: block;"><span style="color: red">*</span>
										전화번호</label> <input type="text" style="display: inline; width: 119px;"
										class="form-control form-control-user" id="phone1"
										name="phone1" required> <label
										style="font-weight: 600; margin-left: 5px; margin-right: 5px;">-</label>
									<input type="text" style="display: inline; width: 119px;"
										class="form-control form-control-user" id="phone2"
										name="phone2" required> <label
										style="font-weight: 600; margin-left: 5px; margin-right: 5px;">-</label>
									<input type="text" style="display: inline; width: 119px;"
										class="form-control form-control-user" id="phone3"
										name="phone3" required>
								</div>
								<div class="form-group">
									<label style="display: block;"><span style="color: red">*</span>
										이메일</label> <input type="text" style="display: inline; width: 280px;"
										class="form-control form-control-user" id="email" name="email"
										placeholder="이메일" required> <label
										style="font-weight: 600;">@</label> <select
										style="width: 160px; display: inline;" class="form-control">
										<option value="1">naver.com</option>
										<option value="2">daum.net</option>
										<option value="3">gmail.com</option>
									</select>
								</div>

								<div class="form-group">
									<label style="display: block;"><span style="color: red">*</span>
										주소</label> <input type="text" style="width: 253px; display: inline;"
										class="form-control form-control-user" id="address"
										name="address" required> <a href="#"
										style="width: 140px; font-weight: 400; margin-left: 3px; margin-bottom: 5px;"
										class="btn btn-dark">우편번호 찾기</a> <input type="text"
										style="margin-bottom: 5px;"
										class="form-control form-control-user" id="address2"
										name="address2" required> <input type="text"
										class="form-control form-control-user" id="address3"
										name="address3" placeholder="상세주소 입력" required>
								</div>
								<a href="join.me" class="btn btn-dark btn-block"
									style="font-weight: 600;"> 가입하기 </a>

							</form>
							<hr>

							<div class="text-center">
								<a class="small" href="#" data-target="#modal-login"
									data-toggle="modal">이미 계정이 있으신가요? 로그인!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	<!-- join page end -->

	<jsp:include page="../common/footer.jsp" />
	
	<!-- 회원가입용 스크립트입니다. (주소, 아이디중복, 비밀번호 중복 등) -->
	<!-- <script>
		function insertMember() {
			$("#joinForm").submit();
		}
		
		$("#joinForm").submit(function(event){
			if($("#userPwd").val() == "" || $("#userId").val() == "") alert("아이디나 비밀번호는 필수 값입니다.");
			else if($('#userPwd').val() != $('#userPwd2').val()) alert("비밀번호 확인 값과 다릅니다.");
			else return;
			event.preventDefault();
		});
		
		// 참조 API : http://postcode.map.daum.net/guide
		function addrSearch() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullAddr = ''; // 최종 주소 변수
	                var extraAddr = ''; // 조합형 주소 변수

	                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    fullAddr = data.roadAddress;

	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    fullAddr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	                if(data.userSelectedType === 'R'){
	                    //법정동명이 있을 경우 추가한다.
	                    if(data.bname !== ''){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있을 경우 추가한다.
	                    if(data.buildingName !== ''){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                $('#zipCode').val(data.zonecode); //5자리 새우편번호 사용
	                
	                $('#address1').val(fullAddr);

	                // 커서를 상세주소 필드로 이동한다.
	                $('#address2').focus();
	            }
	        }).open();
	    };
		
		function goMain(){
			location.href='/myWeb/index.jsp';
		};
		
		
		$('#idCheck').click(function(){
			$.ajax({
				url:"/myWeb/idDup.me",
				type:"post",
				data:{userId: $('#userId').val()},
				success:function(data){
					console.log(data);
					
					if(data=='ok'){
						alert("사용 가능한 아이디입니다.");
					}else{
						alert('이미 사용중인 아이디입니다.');
						$('#userId').select();
					}
				},error:function(){
					console.log("Error 입니다.");
				}
				
			});
		});
		
	</script> -->

</body>
</html>
