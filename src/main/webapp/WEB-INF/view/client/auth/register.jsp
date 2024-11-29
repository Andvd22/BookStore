<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Space Login Form Flat Responsive Widget Template :: w3layouts</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Space Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->

<!-- css files -->
<style>
	/*--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
--*/
/* reset */
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
ol,ul{list-style:none;margin:0px;padding:0px;}
blockquote,q{quotes:none;}
blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
table{border-collapse:collapse;border-spacing:0;}
/* start editing from here */
a{text-decoration:none;}
.txt-rt{text-align:right;}/* text align right */
.txt-lt{text-align:left;}/* text align left */
.txt-center{text-align:center;}/* text align center */
.float-rt{float:right;}/* float right */
.float-lt{float:left;}/* float left */
.clear{clear:both;}/* clear float */
.pos-relative{position:relative;}/* Position Relative */
.pos-absolute{position:absolute;}/* Position Absolute */
.vertical-base{	vertical-align:baseline;}/* vertical align baseline */
.vertical-top{	vertical-align:top;}/* vertical align top */
nav.vertical ul li{	display:block;}/* vertical menu */
nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
img{max-width:100%;}
/*end reset*/
body{
	font-family: 'Montserrat', sans-serif;
	margin:0;
	background: url(https://i.pinimg.com/originals/16/63/9b/16639bba09e9f233071c06b6df151468.jpg) no-repeat;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    -ms-background-size: cover;
    background-attachment: fixed;
	background-position: center;
}
body a{
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-o-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-ms-transition: 0.5s all;
}
 ul{
	padding: 0;
	margin: 0;
}
h1,h2,h3,h4,h5,h6{
	margin:0;
	padding:0;
}
p{
	padding: 0;
	margin: 0;
	color:#999;
}
/*-- main --*/
.main {
    position: relative;
	text-align: center;
}
.main-w3l {
    position: absolute;
    top: 5%;
	width: 60%;
    margin: 0 auto;
	left: 19%;
}
h1.logo-w3  {
    font-size: 3em;
    text-transform: uppercase;
    letter-spacing: 4px;
    color: #000;
	text-align:center;
	margin: 5% 0;
	width: 100%;
}
.w3layouts-main h2 {
	color: #fff;
    font-size: 29px;
    letter-spacing: 2px;
    text-transform: uppercase;
    margin-bottom: 60px;
	text-align: center;
}
.w3layouts-main h2 span {
    padding: 0 1em;
}
.w3layouts-main{
    width: 40%;
    margin: 0 auto;
    background:rgba(0, 0, 0, 0.53);
	text-align: center;
}
.w3layouts-main{
	padding: 42px 35px 25px;
}
input[type="text"], input[type="email"], input[type="password"] {
    width: 75%;
    padding: 16px 50px 16px 50px;
    outline: none;
    font-size: 15px;
    font-weight: 300;
    color: #fff;
    margin: 14px 0px;
	font-family: 'Montserrat', sans-serif;
    border: 1px solid #fff;
    background: transparent;
    letter-spacing: 1px;
    border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius:5px;
	-o-border-radius: 5px;
}
input[type="email"] {
    background:  rgba(0, 0, 0, 0.55) url(../images/user.png) no-repeat 10px 10px;
}
input[type="password"] {
    background:  rgba(0, 0, 0, 0.55) url(../images/lock.png) no-repeat 10px 10px;
}
.w3layouts-main h6 {
    font-size: 16px;
	color: #fff;
    letter-spacing: 1px;
	margin-top: 8px;
	text-align: center;
	text-decoration:none;
}
.w3layouts-main h3 {
    font-size: 0.9em;
    color: #fff;
    margin-top: 3em;
	text-align: center;
}
.w3layouts-main a {
    color: #fff;
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-o-transition:0.5s all;
	-moz-transition:0.5s all;
	-ms-transition:0.5s all;
}
.butin {
    padding: 14px 30px;
    font-size: 1em;
    border-radius: 30px;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	-ms-border-radius:30px;
	-o-border-radius: 30px;
    text-transform: uppercase;
    letter-spacing: 1px;
    background: #2dde98;
    color: #ffffff;
    border: none;
    outline: none;
    cursor: pointer;
	font-family: 'Montserrat', sans-serif;
    margin: 24px auto;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
}
input[type="submit"]:hover {
    background: #ff4f81;
    color: #fff;
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-o-transition:0.5s all;
	-moz-transition:0.5s all;
	-ms-transition:0.5s all;
}
.w3layouts-main2 input[type="submit"] {
    margin: 27px auto 31px;
}
.social a {
    background: #3b5998;
    padding: 1em 4.68em;
    font-size: 16px;
    letter-spacing: 2px;
    color: #fff;
    text-transform: uppercase;
    border-radius: 30px;
    border-radius: 30px;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	-ms-border-radius:30px;
	-o-border-radius: 30px;
}
.social a:hover {
    background: #2dde98;
    color: #fff;
}
/*--placeholder-color--*/

::-webkit-input-placeholder{
	color:rgba(255, 255, 255, 0.65);
}

:-moz-placeholder { /* Firefox 18- */
   color: rgba(255, 255, 255, 0.65); 
}

::-moz-placeholder {  /* Firefox 19+ */
   color: rgba(255, 255, 255, 0.65);  
}

:-ms-input-placeholder {  
   color: rgba(255, 255, 255, 0.65);  
}
/*--//placeholder-color--*/
/*-- //main --*/

/*--footer--*/
.footer-w3l p {
    margin: 3.5em 0em 0em;
    color: #fff;
    font-size: 15px;
    font-weight: 300;
    letter-spacing: 2px;
}
.footer-w3l a {
    color:#2dde98;
	font-family: 'Montserrat', sans-serif;
}
.footer-w3l a:hover {
    color:#fff;
    text-decoration: underline;
}
/*--//footer--*/

/*--responsive--*/

@media(max-width: 1920px){
	h1.logo-w3 {
		margin: 10% 0 5%;
	}
	.social a {
		padding: 1em 6.68em;
	}
}
@media(max-width: 1680px){
	h1.logo-w3 {
		margin: 7% 0 5%;
	}
	.social a {
		padding: 1em 5.38em;
	}
}
@media(max-width: 1600px){
	h1.logo-w3 {
		margin: 5% 0;
	}
	.social a {
		padding: 1em 4.68em;
	}
}
@media(max-width: 1440px){
	.w3layouts-main {
		padding: 40px 40px;
	}
	.w3layouts-main {
		width: 45%;
	}
	h1.logo-w3 {
		font-size: 2.8em;
	}
}
@media(max-width: 1366px){
	.main-w3l {
		width: 68%;
		left: 17%;
	}
	h1.logo-w3 {
		font-size: 2.7em;
	}
	.footer-w3l p {
		margin: 3em 0em 2em;
	}
}
@media(max-width: 1280px){
	h1.logo-w3 {
		font-size: 2.8em;
	}
	.main-w3l {
		width: 71%;
		left: 15%;
	}
	.footer-w3l p {
		margin: 4.5em 0em 0em;
	}
}
@media(max-width: 1080px){
	h1.logo-w3 {
		font-size: 2.7em;
		letter-spacing: 3px;
	}
	.w3layouts-main h2, .w3layouts-main2 h3 {
		font-size: 27px;
	}
	.w3layouts-main {
		width: 50%;
	}
}
@media(max-width: 1050px){
	.w3layouts-main {
		width: 48%;
	}
	.social a {
		padding: 1em 3.8em;
	}
}
@media(max-width: 1024px){
	h1.logo-w3 {
		font-size: 2.6em;
	}
	.w3layouts-main h2, .w3layouts-main2 h3 {
		font-size: 26px;
	}
	.social a {
		padding: 1em 3.5em;
	}
	.w3layouts-main {
		width: 53%;
	}
	.footer-w3l p {
		margin: 2em 0em;
	}
}
@media(max-width: 991px){
	h1.logo-w3 {
		font-size: 2.5em;
		margin: 4% 0;
	}
	.w3layouts-main h2, .w3layouts-main2 h3 {
		font-size: 25px;
	}
	.social a {
		padding: 1em 4.5em;
		font-size: 15px;
	}
	input[type="submit"] {
		padding: 14px 30px;
		font-size: .875em;
	}
}
@media(max-width: 900px){
	.w3layouts-main {
		width: 57%;
	}	
	input[type="text"], input[type="email"], input[type="password"] {
		width: 73%;
	}
}
@media(max-width: 800px){
	.main-w3l {
		width: 91%;
		left: 4.5%;
	}
	h1.logo-w3 {
		font-size: 2.4em;
		letter-spacing: 2px;
	}
	.w3layouts-main {
		width: 53%;
	}
}
@media(max-width: 768px){
}
@media(max-width: 736px){
	h1.logo-w3 {
		font-size: 2.3em;
	}
	.w3layouts-main2 input[type="submit"] {
		margin: 28px auto 31px;
	}
	.social a {
		padding: 1em 4em;
	}
	.footer-w3l p {
		font-size: 14px;
		letter-spacing: 1px;
	}
	.w3layouts-main h2 {
		margin-bottom: 45px;
	}
}
@media(max-width: 667px){
	.w3layouts-main {
		width: 58%;
	}
	h1.logo-w3 {
		font-size: 2em;
		letter-spacing: 1px;
	}
	.w3layouts-main h2, .w3layouts-main2 h3 {
		font-size: 23px;
	}
	input[type="text"], input[type="email"], input[type="password"] {
		width: 74%;
	}
}
@media(max-width: 640px){
	.social a {
		padding: 1em 3.5em;
	}
	input[type="submit"] {
		padding: 12px 30px;
	}
}
@media(max-width: 600px){
	.w3layouts-main {
		width: 62%;
	}
	input[type="text"], input[type="email"], input[type="password"] {
		width: 72%;
	}
}
@media(max-width: 568px){
	.w3layouts-main {
		width: 65%;
	}
	.footer-w3l p {
		line-height: 26px;
	}
}
@media(max-width: 480px){
	h1.logo-w3 {
		font-size: 1.8em;
	}
	.w3layouts-main h2, .w3layouts-main2 h3 {
		font-size: 20px;
		letter-spacing: 1px;
	}
	input[type="submit"] {
		font-size: 0.95em;
	}
	.w3layouts-main {
		width: 80%;
	}
}
@media(max-width: 414px){
	h1.logo-w3 {
		font-size: 1.75em;
		line-height: 1.4;
	}
	.w3layouts-main {
		width: 80%;
	}
	.w3layouts-main {
		padding: 40px 30px;
	}
	input[type="text"], input[type="email"], input[type="password"] {
		width: 66%;
	}
	.w3layouts-main h6 {
		font-size: 15px;
	}
	ul.top-links li a i.fa {
		height: 32px;
		line-height: 34px;
		width: 32px;
		font-size: 14px;
	}
	input[type="submit"] {
		font-size: 0.85em;
		letter-spacing: 0px;
	}
	.footer-w3l p {
		font-size: 14px;
	}
	input[type="text"], input[type="email"], input[type="password"] {
		letter-spacing: 0px;
	}
	.social a {
		padding: 1em 2em;
	}
}
@media(max-width: 384px){
	.w3layouts-main {
		padding: 30px 20px;
		width: 88%;
	}
}
@media(max-width: 375px){
	h1.logo-w3 {
		font-size: 1.7em;
	}
	.social a {
		font-size: 14px;
	}
}
@media(max-width: 320px){
	h1.logo-w3 {
		font-size: 1.55em;
        color: #ff4f81;
	}
	.w3layouts-main h2, .w3layouts-main2 h3 {
		font-size: 19px;
		letter-spacing: 0px;
	}
	.w3layouts-main {
		width: 90%;
		padding: 25px 15px;
	}
	.w3layouts-main h6 {
		font-size: 14px;
		margin-top: 0px;
	}
	input[type="text"], input[type="email"], input[type="password"] {
		width: 60%;
	}
	.footer-w3l p {
		font-size: 13px;
		margin: 2em 0em 1.5em;
	}
	.social a {
		padding: 1em 2em;
		font-size: 13px;
		letter-spacing: 1px;
	}
	input[type="email"] ,input[type="password"] {
		background-size: 28px;
		padding: 14px 50px 14px 50px;
		font-size: 14px;
	}
}
/*--//responsive--*/
</style>
<!-- css files -->

<!-- Online-fonts -->
<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<!-- //Online-fonts -->

</head>
<body>
	<!-- main -->
	<div class="main">
		<div class="main-w3l">
			<h1 class="logo-w3" style="color: rgb(255, 255, 255)">ChillShop</h1>
			<div class="w3layouts-main">
				<h2><span>Đăng nhập ngay</span></h2>
				<form:form method="post" action="/register" modelAttribute="registerUser">
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <c:set var="errorFirstName">
                                                            <form:errors path="firstName" cssClass="invalid-feedback" style="color: rgb(255, 255, 255);"/>
                                                        </c:set>
                                                        <form:input class="form-control ${not empty errorFirstName ? 'is-invalid' : ''}" id="inputFirstName" type="text" placeholder="Nhập họ:" path="firstName"/>
                                                        <label for="inputFirstName"></label>
                                                        ${errorFirstName}
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <form:input class="form-control" id="inputLastName" type="text" placeholder="Nhập tên:" path="lastName"/>
                                                        <label for="inputLastName"></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <c:set var="errorEmail">
                                                    <form:errors path="email" cssClass="invalid-feedback" style="color: rgb(255, 255, 255);"/>
                                                </c:set>
                                                <form:input class="form-control ${not empty errorEmail ? 'is-invalid' : ''}" id="inputEmail" type="email" placeholder="abc@gmail.com" path="email" />
                                                <label for="inputEmail"></label>
                                                ${errorEmail}
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <form:input class="form-control" id="inputPassword" type="password" placeholder="Tạo mật khẩu" path="password"/>
                                                        <label for="inputPassword"></label>
                                                        <!-- <form:errors path="confirmPassword"/> -->
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <c:set var="errorPassword">
                                                            <form:errors path="confirmPassword" cssClass="invalid-feedback" style="color: rgb(255, 255, 255);"/>
                                                        </c:set>
                                                        <form:input class="form-control ${not empty errorPassword ? 'is-invalid' : ''}" id="inputPasswordConfirm" type="password" placeholder="Nhập lại mật khẩu" path="confirmPassword"/>
                                                        <label for="inputPasswordConfirm"></label>
                                                        ${errorPassword}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><button class="butin" href="login.html">Create Account</button></div>
                                            </div>
                                        </form:form>
                                        <h6><a href="/login">Đã có tài khoản?Đăng nhập ngay</a></h6>
			</div>
			<!-- //main -->
			
			<!--footer-->
			<!--//footer-->
		</div>
	</div>

</body>
</html>
