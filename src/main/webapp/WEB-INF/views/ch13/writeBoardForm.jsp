<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<div class="card-header">게시물 쓰기</div>
						<div class="card-body">
							<form id="writeBoardForm" method="post" action="writeBoard"
								enctype="multipart/form-data">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">btitle</span>
									</div>
									<input id="btitle" type="text" name="btitle"
										class="form-control">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">bcontent</span>
									</div>
									<textarea id="bcontent" name="bcontent" class="form-control"></textarea>
								</div>
								
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">battach</span>
									</div>
									<input id="battach" type="file" name="battach"
										class="form-control">
								</div>

								<div class="mt-3">
									<button class="btn btn-info btn-sm mr-2">글쓰기</button>
									<a class="btn btn-info btn-sm" href="boardList">목록보기</a>
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