<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 사용자 정의 자바스크립트 -->
<script>
	function handleBtn1() {
		console.log("handleBtn1() 실행");
		location.href = "getMethod?chNum=ch02&bkind=qAndA&bno=200";
	}
	
	function handleBtn2() {
		console.log("handleBtn2() 실행");
		$.ajax({
			url: "getMethodAjax",
			method: "get",
			//data: "bkind=notice&bno=300",
			data: {bkind:"notice", bno:"300"},
			success: function(data) {
				console.log(data);
				$("#ajaxResponseInclude").html(data);
			}
		});
		/* $.get("getMethodAjax", {bkind:"notice", bno:"300"}, function(data) {
			$("#ajaxResponseInclude").html(data);
		}); */
	}
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
						<div class="card-header">GET 방식</div>
						<div class="card-body">
							<form class="m-2" method="get" action="getMethod">
								<input type="hidden" name="chNum" value="ch02"/>
								<div class="form-group mb-2">
									<label for="bkind">bkind</label> 
									<input type="text"
										class="form-control" id="bkind" name="bkind" value="free">
									<small id="bkindHelp" class="form-text text-muted">input
										board kind</small>
								</div>

								<div class="form-group mb-2">
									<label for="bno">bno</label> 
									<input type="text"
										class="form-control" id="bno" name="bno" value="1"> <small
										id="bnoHelp" class="form-text text-muted">input board
										no</small>
								</div>
								<!-- 제출 버튼 : 양식의 데이터를 서버로 보내겠다. -->
								<input type="submit" value="GET방식"
									class="btn btn-info btn-sm" />
								<button type="submit" class="btn btn-info btn-sm">GET 방식</button>
								<input type="image" src="${pageContext.request.contextPath}/resources/image/logo-spring.png" width=20px>
							</form>
							
							<hr/>
							
							<button onclick="handleBtn1()" type="button" class="btn btn-success btn-sm">JavaScript로 요청</button>
							<button onclick="handleBtn2()" type="button" class="btn btn-success btn-sm">AJAX로 요청</button>
							<div id="ajaxResponseInclude" class="mt-2">
							
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>