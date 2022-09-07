<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<title>Modify</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${rootPath}/static/css/main.css?ver=009" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style>
input[type="text"]{
	color:#fff !important;
}
.autocomplete{
	position: relative;
	display:inline-block;
}
.autocomplete-items{
	position: absolute;
	border: 1px solid #d4d4d4;
	border-bottom:none;
	border-top:none;
	z-index:99;
	top:100%;
	left:0;
	right:0;
	margin-left:30px;
}
.autocomplete-items div{
	padding:5px;
	cursor: pointer;
	background-color: rgba(255, 255, 255, 0.05);
	border-bottom: 1px solid #d4d4d4;
	color:#fff;
}
.autocomplete-items div:hover{
	background-color: #e9e9e9;
}
</style>
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a href="${rootPath}/" class="title">전자의무기록</a>
		<nav>
			<ul>
				<li><a href="${rootPath}/">Home</a></li>
				<li><a href="${rootPath}/emrs" class="active">EMR</a></li>
				<li><a href="${rootPath}/logout">Logout</a></li>
			</ul>
		</nav>
	</header>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper">
			<div class="inner">
				<h1 class="major">정보수정</h1>
				<form:form autocomplete="off">
					<input name="seq" type="hidden"
						value='<c:out value="${PATI.seq}" default ="0"/>'>
				<div class="row gtr-uniform">
					<div class="col-4 col-12-small">
						<label for="name">이름 - </label>
						<input name="name" type="text" placeholder="이름 입력" />
					</div>
					<div class="col-4 col-12-small">
						<label for="age">나이 - </label>
						<input name="age" type="text" placeholder="나이" />
					</div>
					<div class="col-4 col-12-small autocomplete">
						<label for="disease">병명 - </label>
						<input id="myInput" type="text" name="disease" placeholder="병명 입력" />
					</div>
					<!--
					<div class="col-12">
						<select name="dcode">
							<option value="">- 질병코드 선택 -</option>
							<option value="A00">A00</option>
							<option value="A01">A01</option>
							<option value="A03">A03</option>
							<option value="A15">A15</option>
							<option value="A22">A22</option>
							<option value="A30">A30</option>
							<option value="A50">A50</option>
							<option value="A54">A54</option>
							<option value="A75">A75</option>
							<option value="A80">A80</option>
							<option value="B01">B01</option>
							<option value="B02">B02</option>
							<option value="B04">B04</option>
							<option value="B15">B15</option>
							<option value="B20">B20</option>
							<option value="B30">B30</option>
							<option value="B35">B35</option>
							<option value="B50">B50</option>
							<option value="B68">B68</option>
							<option value="B85">B85</option>
							<option value="B87">B87</option>
							<option value="C05">C05</option>
							<option value="C15">C15</option>
							<option value="C16">C16</option>
							<option value="C18">C18</option>
							<option value="C25">C25</option>
							<option value="C32">C32</option>
							<option value="C34">C34</option>
							<option value="C38">C38</option>
							<option value="C50">C50</option>
							<option value="C73">C73</option>
							<option value="D66">D66</option>
							<option value="E00">E00</option>
							<option value="E10">E10</option>
							<option value="E66">E66</option>
							<option value="F00">F00</option>
							<option value="F20">F20</option>
							<option value="G00">G00</option>
							<option value="G56">G56</option>
							<option value="H00">H00</option>
							<option value="H40">H40</option>
							<option value="I20">I20</option>
							<option value="I80">I80</option>
							<option value="J00">J00</option>
							<option value="J45">J45</option>
							<option value="J93">J93</option>
						</select>
					</div>
					-->
					<div class="col-6 col-12-small">
						<input name="sex" id="male" type="radio" value="남성" />
						<label for="male">남성</label>
					</div>
					<div class="col-6 col-12-small">					
						<input name="sex" id="female" type="radio" value="여성"/>
						<label for="female">여성</label>
					</div>
					<div class="col-12">
						<textarea name="karte" rows="3" placeholder="특이사항 입력"></textarea>
					</div>
					<div class="col-12 actions">
						<button>추가하기</button>
					</div>
				</div>
				</form:form>
			</div>
		</section>

	</div>

	<!-- Footer -->
	<footer id="footer" class="wrapper alt">
		<div class="inner">
			<ul class="menu">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
	</footer>
	<form:form id="logout-form" action="${rootPath}/logout" method="POST"/>	
	<!-- Scripts -->
	<!-- 로그아웃 폼 제출 -->
	<script>
	document.querySelector("li.logout")?.addEventListener('click',()=>{
		document.querySelector("form#logout-form")?.submit()
	});
	</script>
	<script src="${rootPath}/static/js/auto.js?001"></script>
	<script src="${rootPath}/static/js/jquery.min.js"></script>
	<script src="${rootPath}/static/js/jquery.scrollex.min.js"></script>
	<script src="${rootPath}/static/js/jquery.scrolly.min.js"></script>
	<script src="${rootPath}/static/js/browser.min.js"></script>
	<script src="${rootPath}/static/js/breakpoints.min.js"></script>
	<script src="${rootPath}/static/js/util.js"></script>
	<script src="${rootPath}/static/js/main.js"></script>

</body>
</html>