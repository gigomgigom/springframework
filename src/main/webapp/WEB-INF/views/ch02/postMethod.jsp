<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 사용자 정의 자바스크립트 -->
<script>
	function handleBtn1() {
		var mid = $("#mid").val();
		var mpassword = $("#mpassword").val();
		$.ajax({
			url: "postMethodAjax",
			type: "post",
			//data: "mid=" + mid + "&mpassword=" + 67890,
			//data: {mid:mid, mpassword:mpassword},
			data: {mid, mpassword},
			success: function(data) {
				//data: {"result":"success"}
				//자동으로 JSON => Javascript 객체 변환
				console.log(data);
				
				if(data.result === "success") {
					$("#ajaxResponseInclude").html("로그인 성공");
				} else {
					if(data.reason === "wrongMid") {
						$("#ajaxResponseInclude").html("아이디가 존재하지않습니다.");
					} else {
						$("#ajaxResponseInclude").html("비밀번호가 일치하지 않습니다.");
					}
				} 
			}
		});
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
						<div class="card-header">POST 방식</div>
						<div class="card-body">
							<form class="m-2" method="post" action="postMethod">
								<input type="hidden" name="chNum" value="ch02"/>
								<div class="form-group mb-2">
									<label for="mid">아이디</label> 
									<input type="text"
										class="form-control" id="mid" name="mid" value="spring">
									<small id="bkindHelp" class="form-text text-muted">input
										board kind</small>
								</div>

								<div class="form-group mb-2">
									<label for="mpassword">bno</label> 
									<input type="password"
										class="form-control" id="mpassword" name="mpassword" value="12345"> <small
										id="bnoHelp" class="form-text text-muted">input board
										no</small>
								</div>
								<!-- 제출 버튼 : 양식의 데이터를 서버로 보내겠다. -->
								<button type="submit" class="btn btn-info btn-sm">로그인</button>
							</form>
							
							<hr/>
							
							<button onclick="handleBtn1()" type="button" class="btn btn-success btn-sm">AJAX로 요청</button>
							<button onclick="handleBtn2()" type="button" class="btn btn-success btn-sm">로 요청</button>
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