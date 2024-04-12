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
				ch03.</button>
		</h2>
		<div id="collapseThree" class="accordion-collapse collapse ${chNum=='ch03'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li>${pageContext.request.contextPath}/ch02/getMethod?chNum=ch02</li>
					<li>${pageContext.request.contextPath}/ch02/postMethod?chNum=ch03</li>
				</ul>
			</div>
		</div>
	</div>
</div>