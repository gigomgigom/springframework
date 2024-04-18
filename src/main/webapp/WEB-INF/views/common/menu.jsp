<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="accordion" id="accordionExample">
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch01'?'':'collapsed'}" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseOne"
				aria-expanded="false" aria-controls="collapseOne">
				Ch01. 개발환경구축
				</button>
		</h2>
		<div id="collapseOne" class="accordion-collapse collapse ${chNum=='ch01'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch01/content?chNum=ch01">공통 레이아웃구성</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
											<!-- EL(표현식) 하나의 값을 산출하는 식 -->
			<button class="accordion-button ${chNum=='ch02'?'':'collapsed'}" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo">
				ch02. 요청 매핑
			</button>
		</h2>
		<div id="collapseTwo" class="accordion-collapse collapse ${chNum=='ch02'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch02/getMethod?chNum=ch02">GET 방식</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/postMethod?chNum=ch02">POST 방식</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/modelAndViewReturn?chNum=ch02">Model&View Return</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/voidReturn?chNum=ch02">Void Return</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/objectReturn?chNum=ch02">Object Return</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/testAuthInterceptor1?chNum=ch02">testAuthInterceptor1(로그인 없이)</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/testAuthInterceptor2?chNum=ch02">testAuthInterceptor2(로그인 필요)</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch03'?'':'collapsed'}" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseThree"
				aria-expanded="true" aria-controls="collapseThree">
				ch03. 요청 매핑 메소드의 매개변수</button>
		</h2>
		<div id="collapseThree" class="accordion-collapse collapse ${chNum=='ch03'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch03/receiveParamData?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">Get 방식 데이터 얻기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/postMethodForm">POST 방식 폼 데이터 얻기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/requestParamAnnotation?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">@requestParamAnnotation</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/requestParamAnnotationRequired?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">@requestParamAnnotation의 required 속성</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/requestParamAnnotationDefaultValue?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">@requestParamAnnotation의 DefaultValue 속성</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/typeChange?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">요청 파라미터의 값 타입 변환</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/getDto?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">요청 파라미터의 값을 DTO(Data Transform Object)로 받기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/ajax">AJAX로 요청 파라미터 보내기</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch04'?'':'collapsed'}" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseFour"
				aria-expanded="true" aria-controls="collapseFur">
				ch04. 폼 유효성 검사</button>
		</h2>
		<div id="collapseFour" class="accordion-collapse collapse ${chNum=='ch04'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch04/loginForm">로그인</a></li>
					<li><a href="${pageContext.request.contextPath}/ch04/signupForm">회원가입</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch05'?'':'collapsed'}" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseFive"
				aria-expanded="true" aria-controls="collapseFive">
				ch05. 요청 헤더 값 및 쿠키</button>
		</h2>
		<div id="collapseFive" class="accordion-collapse collapse ${chNum=='ch05'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch05/header">요청 헤더값 얻기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch05/createCookie">쿠키 생성 및 응답으로 보내기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch05/readCookie">포워드와 request 범위 데이터</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch06'?'':'collapsed'}" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseSix"
				aria-expanded="true" aria-controls="collapseSix">
				ch06. 요청 헤더 값 및 쿠키</button>
		</h2>
		<div id="collapseSix" class="accordion-collapse collapse ${chNum=='ch06'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch06/forward">포워드와 request 범위 데이터</a></li>
					<li><a href="${pageContext.request.contextPath}/ch06/redirect">redirect와 session범위 데이터</a></li>
					<li><a href="${pageContext.request.contextPath}/ch06/sessionData">다른 요청 시 session범위 데이터 사용</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch07'?'':'collapsed'}" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseSeven"
				aria-expanded="true" aria-controls="collapseSeven">
				ch07. Data 전달</button>
		</h2>
		<div id="collapseSeven" class="accordion-collapse collapse ${chNum=='ch07'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch07/request1">ModelAndView: request범위</a></li>
					<li><a href="${pageContext.request.contextPath}/ch07/request2">DTO: request범위</a></li>
					<li><a href="${pageContext.request.contextPath}/ch07/sessionLoginForm">HttpSession: session범위</a></li>
					<li><a href="${pageContext.request.contextPath}/ch07/application">ServletContext: application범위</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch08'?'':'collapsed'}" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseEight"
				aria-expanded="true" aria-controls="collapseEight">
				ch08. session 지원</button>
		</h2>
		<div id="collapseEight" class="accordion-collapse collapse ${chNum=='ch08'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch08/productList">상품 목록</a></li>
					<li><a href="${pageContext.request.contextPath}/ch08/cartView">장바구니</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch09'?'':'collapsed'}" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseNine"
				aria-expanded="true" aria-controls="collapseNine">
				ch09. 파일 업로드와 다운로드
			</button>
		</h2>
		<div id="collapseNine" class="accordion-collapse collapse ${chNum=='ch09'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch09/fileUploadForm">파일 업로드</a></li>
					<li><a href="${pageContext.request.contextPath}/ch09/downloadFileList">파일 다운로드</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>