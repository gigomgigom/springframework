<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

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
	<div class="d-flex flex-column vh-100">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div class="flex-grow-1 m-2">
			<div class="d-flex">
				<div class="col-md-4">
					<%@ include file="/WEB-INF/views/common/menu.jsp"%>
				</div>
				<div class="col-md-8">
					<div class="card">
						<div class="card-header">권한별 메뉴보기</div>
						<div class="card-body">
							<ul>
								<sec:authorize access="hasRole('ROLE_ADMIN')">
									<li>
										<a href="${pageContext.request.contextPath}/ch17/admin/page">admin page</a>
									</li>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_MANAGER')">
									<li>
										<a href="${pageContext.request.contextPath}/ch17/manager/page">managerpage</a>
									</li>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_USER')">
									<li>
										<a href="${pageContext.request.contextPath}/ch17/user/page">user page</a>
									</li>
								</sec:authorize>								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>