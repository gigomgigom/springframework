<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- uri에 지정된 태그들을 사용하기 위해서는 앞에 form을 붙여주면 된다. -->
<!DOCTYPE html>
<html>
<head>
<!-- jQuery 외부 라이브러리 설정 -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 사용자 정의 자바스크립트 -->
<script>
	
</script>

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
						<div class="card-header">500 예외처리</div>
						<div class="card-body">
							<h3>ㅋㅋ 아 요청시 데이터가 전달이 안됬다고~</h3>
							<p>돌아가서 데이터 입력햄마!</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>