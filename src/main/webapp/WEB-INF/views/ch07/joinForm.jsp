<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<div class="card-header">JoinFormByPost</div>
						<div class="card-body">
							<form id="joinForm" method="post" action="request2">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mid</span>
									</div>
									<input id="mid" type="text" name="mid" value="${joinForm.mid}"
										class="form-control">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mname</span>
									</div>
									<input id="mname" name="mname" class="form-control" value="${joinForm.mname}"/>
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mpassword</span>
									</div>
									<input id="mpassword" type="password" name="mpassword" class="form-control" value="${joinForm.mpassword}">
								</div>
								
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mjob</span>
									</div>
									<select id="mjob"name="mjob" class="form-control">
										<c:forEach var="job" items="${jobList}">
											<option value="${job}" ${job==joinForm.mjob?'selected':''}>${job}</option>
										</c:forEach>
									</select>
								</div>
								
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mcity</span>
									</div>
									<select id="mcity" name="mcity" class="form-control">
										<c:forEach var="city" items="${cityList}">
											<option value="${city}" ${city==joinForm.mcity?'selected':''}>${city}</option>
										</c:forEach>
									</select>
								</div>

								<!-- <div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">battach</span>
									</div>
									<input id="battach" type="file" name="battach"
										class="form-control">
								</div> -->

								<div class="mt-3">
									<button class="btn btn-info btn-sm mr-2">가입</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>