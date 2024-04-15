<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- uri에 지정된 태그들을 사용하기 위해서는 앞에 form을 붙여주면 된다. -->
<!DOCTYPE html>
<html>
<head>
<!-- 사용자 정의 자바스크립트 -->
<script>

</script>
<!-- jQuery 외부 라이브러리 설정 -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Latest compiled and minified CSS -->
<!-- 클라이언트에게 라이브러리 파일을 어디 서버에 다운받을 지 배정받는다. -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 뷰포트의 크기의 100퍼센트 -->
	<div class="d-flex flex-column vh-100">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div class="flex-grow-1 m-2">
			<div class="d-flex row">
				<div class="col-md-4">
					<%@ include file="/WEB-INF/views/common/menu.jsp"%>
				</div>
				<div class="border col-md-8">
					<div class="card">
						<div class="card-header">회원가입 양식</div>
						<div class="card-body">
							<form class="m-2" method="post" action="signup">								
								<div class="form-group mb-2">
									<label for="mid">아이디</label> 
									<input type="text"
										class="form-control" id="mid" name="mid" value="${ch04SignUpForm.mid}">							
										<!-- 에러 메세지 출력 -->
										<div class="text-danger" style="font-size: 0.7rem;"><form:errors path="ch04SignUpForm.mid"/></div>
								</div>

								<div class="form-group mb-2">
									<label for="mpassword">패스워드</label> 
									<input type="password"
										class="form-control" id="mpassword" name="mpassword" value="${ch04SignUpForm.mpassword}">
										<!-- 에러 메세지 출력 -->
										<div class="text-danger" style="font-size: 0.7rem;"><form:errors path="ch04SignUpForm.mpassword"/></div>
								</div>
								
								<div class="form-group mb-2">
									<label for="mname">닉네임</label> 
									<input type="text"
										class="form-control" id="mname" name="mname" value="${ch04SignUpForm.mname}">
										<!-- 에러 메세지 출력 -->
										<div class="text-danger" style="font-size: 0.7rem;"><form:errors path="ch04SignUpForm.mname"/></div>
								</div>
								
								<div class="form-group mb-2">
									<label for="mphoneno">전화번호</label> 
									<input type="text"
										class="form-control" id="mphoneno" name="mphoneno" value="${ch04SignUpForm.mphoneno}">
										<!-- 에러 메세지 출력 -->
										<div class="text-danger" style="font-size: 0.7rem;"><form:errors path="ch04SignUpForm.mphoneno"/></div>
								</div>
								
								<div class="form-group mb-2">
									<label for="memail">이메일</label> 
									<input type="text"
										class="form-control" id="memail" name="memail" value="${ch04SignUpForm.memail}">
										<!-- 에러 메세지 출력 -->
										<div class="text-danger" style="font-size: 0.7rem;"><form:errors path="ch04SignUpForm.memail"/></div>
								</div>
								
								<!-- 제출 버튼 : 양식의 데이터를 서버로 보내겠다. -->
								<button type="submit" class="btn btn-info btn-sm">로그인</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>