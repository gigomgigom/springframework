<%-- 위에 코드는 페이지 지시자 : page 서버(WAS)에서 JSP 해석하는 방법을 기술한다. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- 사용자 정의 자바스크립트 -->
		<script>
		
		</script>
		
		<!-- jQuery 외부 라이브러리 설정 -->
		<script src="${pageContext.request.contextPath}/resouces/jquery/jquery-3.7.1.min.js"></script>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Latest compiled and minified CSS -->
		<!-- 클라이언트에게 라이브러리 파일을 어디 서버에 다운받을 지 배정받는다. -->
		<link href="${pageContext.request.contextPath}/resources/bootstrap-5.3.3-dist/css/bootstrap.min.css" rel="stylesheet"></link>

		<!-- Latest compiled JavaScript -->
		<script
		src="${pageContext.request.contextPath}/resources/bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
		
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>	<!-- 뷰포트의 크기의 100퍼센트 -->
		<div class="d-flex flex-column vh-100">
		
			<!-- 마크업language 주석 (의견 및 코멘트 용도) -->
			<%-- jsp 주석 (의견 및 코멘트 용도 이외 자바 코드 주석처리용) --%>
			
			<!-- include 지시자 : 파일 내부의 소스를 복사해서 지시자 위치에 붙여넣는 기능 -->
			<%@ include file="/WEB-INF/views/common/header.jsp" %>
			
			<div class="flex-grow-1 m-2">
				<div class="d-flex row">
					<div class="col-md-4">			
					
						<!-- include 액션은 외부에서 실행하고 결과만 현재 위치에 삽입한다. -->
						<jsp:include page="/WEB-INF/views/common/menu.jsp"/>
						
					</div>
					<div class="border col-md-8">			
						<div class="card">
							<div class="card-header">home</div>
							<div class="card-body">content</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>