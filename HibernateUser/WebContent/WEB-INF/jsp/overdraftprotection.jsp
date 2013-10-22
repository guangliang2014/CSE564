<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ASU Bank Profile and Settings</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="script.js"></script>
</head>
<body>
<div id="wrapper">
  <div id="header">
	  <div id="logo">
			<h1><a href="#">ASU Bank </a></h1>
		</div>
		<div id="slogan"> <ul>
			<li class="first current_page_item"><a href="#">Home</a> </li>
			<li><a href="#" id="strID">${user.strID}</a></li>
			<li><a href="#">Services</a></li>
			<li><a href="#">LogOut</a></li>
          </ul>		</div>
		
  	</div>
	<div id="menu">
			<ul>
			<li class="first current_page_item">
				<form:form class="menuform" action="profilesetting.html" method="POST" commandName="user" style="border:0px; float:left; display:inline; ">
					<form:hidden path="strID" value="${user.strID}" />
					<input class="menuinput" type="submit" value="Accounts" />
				</form:form>
			</li>
			<li>
				<form:form class="menuform" action="profilesetting.html" method="POST" commandName="user" style="border:0px; float:left; display:inline;">
					<form:hidden path="strID" value="${user.strID}" />
					<input class="menuinput" type="submit" value="Transfer" />
				</form:form>
			</li>
			<li>
				<form:form class="menuform" action="profilesetting.html" method="POST" commandName="user" style="border:0px; float:left; display:inline;">
					<form:hidden path="strID" value="${user.strID}" />
					<input class="menuinput" type="submit" value="Profile & Settings" />
				</form:form>			
			</li>			
			<li>
				<form:form class="menuform" action="profilesetting.html" method="POST" commandName="user" style="border:0px; float:left; display:inline;">
					<form:hidden path="strID" value="${user.strID}" />
					<input class="menuinput" type="submit" value="Help & Support" />
				</form:form>
			</li></ul>
	</div>
	<div style="padding:0">
		<div style="height:500px; width: 900px; padding:50px; margin:0px 50px; text-align:center">
			<div id="settings" style="height:400px;width:400px; padding:20px; border: 1;border:thin dashed;float:center; margin:auto auto">
				<h4 style="text-align:left;margin-bottom:0;margin-top:10px;">Change Contact</h4>
				<form:form action="overdraft.html" method="POST" commandName="accountSet" style="border:0px;padding-top:0">
					<form:hidden path="strID" value="${user.strID}" />
					<table style="border-spacing: 0px 25px;">
						<tr>
							<td>Max Overdraft</td>
							<td style="padding-right:60px;"><form:input path="maxOverdraft" type="text" pattern=".{10}" maxlength="10" autocomplete="off" style="height:30px;width:200px"  /></td>
						</tr>
						<tr>
							<td>Password</td>
							<td style="padding-right:60px;"><form:input path="password" type="password" maxlength="20" required="true" autocomplete="off" style="height:30px;width:200px;"  /></td>
						</tr>
					</table>
					<input type="submit" name="action" value="Update Contact" style="margin-bottom:15px; margin-right:60px; padding:5px 10px;" /><br />
					<p style="color:red; float:left;margin-bottom:15px">${ErrorMsg}</p>
				</form:form>
				<p style="font-size:10px;float:left">* Only space will not change anything.</p>
				<!-- <a href="#">Change Password</a><br /><br />
				<a href="#">Change Contact</a><br /><br />
				<a href="#">Overdraft Protection</a>-->
			</div>			
		</div>
	</div>
		
	<div id="page-bottom">
		<div id="page-bottom-content">
			<h3>ASU Bank Policy</h3>
		  <p>Banking products are provided by Bank of America, N.A. and affiliated banks, Members FDIC and wholly owned subsidiaries of Bank of America Corporation.<br>
			  Investing in securities involves risks, and there is always the potential of losing money when you invest in securities. You should review any planned financial transactions that may have tax or legal implications with your personal tax or legal advisor.<br>
		  </p>
		</div>
		<div id="page-bottom-sidebar">
			<h3>Popular Links</h3>
			<ul class="list">
				<li class="first"><a href="#">Order checks</a></li>
				<li><a href="#">Order a Debit Card</a></li>
				<li class="last"><a href="#">Order a Foreign Currency</a></li>
			</ul>
		</div>
		<br class="clearfix" />
	</div>
</div>
<div id="footer">
	Copyright (c) 2013 ASUBank.com. All rights reserved.
</div>
</body>
</html>