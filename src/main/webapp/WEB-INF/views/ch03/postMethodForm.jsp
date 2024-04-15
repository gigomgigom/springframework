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
						<div class="card-header">PostMethodData</div>
						<div class="card-body">
							<form method="post" action="receiveParamData">
								<div class="input-group">
									<span class="input-group-text">param1</span> <input type="text"
										name="param1" class="form-control" value="문자열">
								</div>
								<div class="input-group">
									<span class="input-group-text">param2</span> <input type="text"
										name="param2" class="form-control" value="5">
								</div>
								<div class="input-group">
									<span class="input-group-text">param3</span> <input type="text"
										name="param3" class="form-control" value="3.14">
								</div>
								<div class="input-group">
									<span class="input-group-text">param4</span>
									<div class="form-control d-flex">
										<div>
											<input type="radio" name="param4" checked value="true">
											<label>true</label>
										</div>
										<div class="ms-3">
											<input type="radio" name="param4" value="false"> <label>false</label>
										</div>
									</div>
								</div>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">param5</span>
									</div>
									<input type="date" name="param5" class="form-control"
										value="2030-12-05">
								</div>
								<input class="mt-2 btn btn-info btn-sm" type="submit" value="요청" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>