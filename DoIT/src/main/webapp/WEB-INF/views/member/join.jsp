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
									<label><span style="color: red">*</span> 아이디 </label> <span style="font-size: x-small;">(4글자 이상 입력해주세요.)</span>
									<input type="text" class="form-control hide-on-focus" id="userId" name="id"
										placeholder="아이디" required> 
									<div class="check_font" id="check_font"></div>
									<!-- <span class="check_ok" style="font-size: 12px;">사용하실 수 있는 아이디입니다.</span>
									<span class="check_error" style="color:red; font-size: 12px;">사용하실 수 없는 아이디입니다.</span> -->
									<input type="hidden" name="idCheck" id="idCheck" value="0"/>									
										
								</div>
								<div class="form-group">
									<label><span style="color: red">*</span> 비밀번호</label>
									<input type="password" class="form-control form-control-user"
										id="userPwd" name="userPwd" placeholder="비밀번호를 입력하세요."
										required>
								</div>
								<div class="form-group">
									<label><span style="color: red">*</span> 비밀번호 확인</label> <input
										type="password" class="form-control form-control-user"
										id="userPwd2" name="userPwd2" placeholder="비밀번호 확인" required>
									<div class="Pwdcheck_font" id="Pwdcheck_font"></div>
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
										style="font-weight: 600;">@</label> 
									<select style="width: 160px; display: inline;" class="form-control" id="selbox" name="selbox">
										<option value="naver.com">naver.com</option>
										<option value="daum.net">daum.net</option>
										<option value="gmail.com">gmail.com</option>
										<option value="direct" id="direct">직접입력</option>
									</select>
									<input type="text" style="width: 160px; display: inline;" class="form-control" id="selboxDirect" name="selboxDirect"/>
								</div>

								<div class="form-group">
									<label style="display: block;"><span style="color: red">*</span>
										주소</label> <input type="text" style="width: 253px; display: inline;"
										class="form-control form-control-user" id="address"
										name="address" required> 
										<a href="#" style="width: 140px; font-weight: 400; margin-left: 3px; margin-bottom: 5px;"
										class="btn btn-dark">우편번호 찾기</a> 
										<input type="text" style="margin-bottom: 5px;" class="form-control form-control-user" id="address2"
										name="address2" required> 
										<input type="text" class="form-control form-control-user" id="address3"
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
	

	<script>
	 /* 아이디 중복 체크 */
		function validate(){
			if($("#idCheck").val()==0){
				alert("중복된 아이디입니다. 사용 가능한 아이디를 입력해주세요.");
				$("userId").focus();
				return false;
			}else{
				return true;
			}
		}
	 
	 $(function(){
/* 		$(".check_ok").hide();
		$(".check_error").hide(); */
		$("#userId").on("keyup",function(){
			var userId = $(this).val();
			
			if(userId.length < 4){
				/* $(".check_ok").hide();
				$(".check_error").show(); */
				$("#check_font").text("사용하실 수 없는 아이디입니다.");
				$("#check_font").css({"color":"red","font-size": "12px"});
				
				$("#idCheck").val(0);
				
				return;
			} 
			
			$.ajax({
				url:"idCheck.do",
				data:{id:userId},
				type:"post",
				success:function(data){
					console.log(data);
					if(data == "ok"){
						$("#check_font").text("사용 가능한 아이디입니다.");
						$("#check_font").css({"color":"black","font-size": "12px"});
						
						$("#idCheck").val(1);
					}else if(data == "fail"){
						$("#check_font").text("사용하실 수 없는 아이디입니다.");
						$("#check_font").css({"color":"red","font-size": "12px"});
						
						$("#idCheck").val(0);
					}
				},error:function(jqxhr, textStatus, errorThrown){
					console.log("ajax 처리실패");
					
					// 에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			});
		});
	 });
	 
	 /* 비밀번호 확인  */
	 $(function(){
		 $("#userPwd2").keyup(function(){
			var pwd1 = $("#userPwd").val();
			var pwd2 = $("#userPwd2").val();
			
			$.ajax({
				url:"pwdCheck.do",
				data:{userPwd:pwd1,userPwd2:pwd2},
				type:"post",
				success:function(data){
					if(data == "ok"){
						$("#Pwdcheck_font").text("비밀번호가 일치합니다.");
						$("#Pwdcheck_font").css({"color":"black","font-size": "12px"});
					}else{
						$("#Pwdcheck_font").text("비밀번호가 일치하지 않습니다.");
						$("#Pwdcheck_font").css({"color":"red","font-size": "12px"});
					}
				}
			});
		 });
	 });
	 /* 이메일 직접입력 만들기 */
	 $(function(){
		$("#selboxDirect").hide();
		
		$("#selbox").change(function(){
			if($("#selbox").val() == "direct"){
				$("#selbox").hide();
				$("#selboxDirect").show();
				var text = $("#selboxDirect").val();
				$("#selbox option:eq(3)").val(text);
				
			}else{
				$("#selboxDirect").hide();
				
			}
		}); 
	 });
	</script>
</body>
</html>
