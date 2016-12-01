<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="C"%>
<html>
<head>
<title>Registration</title>
<style>
body {
	background: url('resources/images/regis.jpg');
	background-size: cover; /* to stretch image*/
	background-repeat: no-repeat;
}

table {
	margin-left: 750px;
	font-weight: bold;
}

tr {
	font-size: 20px;
}

td {
	font-size: 25;
	padding: 15px;
}
</style>
</head>
<body>

<h1>Registration</h1>
<p>ALREADY REGISTERED? <a href= "login">SIGN IN</a></p>
<a href="${flowExecutionUrl}&_eventId_home">Home</a>
<form:form commandName="us"  >
  
<table>
<tr><td>Name</td>
<td><form:input type="text" path="username" /></td></tr>
 <!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 

Enter Password</td><td><form:input type="password" path="password"  /></td></tr>
<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 

<tr><td>
Enter Confirmed Password</td><td><form:input type="password" path="confirmpassword"  /></td></tr>
<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('confirmpassword')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 
				<tr><td>
Email Id</td><td><form:input type="email" path="emailid" /></td></tr>
<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 

				

<tr><td>
Phone no.</td><td><form:input type="text" path="phno" /></td></tr>
<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('phno')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 


<tr><td>
<input type="CHECKBOX" NAME="OFFER" CHECKED>I agree to receive information about exciting offers
</td></tr>
</table>

<br /><br />

<div class="center">
<input type="submit" name="_eventId_submit" value="submit" ></div>

</form:form>
</center><br />
<%@ include file="footer.jsp" %>
