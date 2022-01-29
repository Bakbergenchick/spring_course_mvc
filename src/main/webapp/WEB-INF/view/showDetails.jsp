<%@ taglib prefix="jst" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Title</title>
</head>
<body>
    <h2>Welcome Dear employee, your details: </h2>
    <br>
    <br>

<p>Your name: <b>${employee.name}</b></p>
<p>Your surname: <b>${employee.surname}</b></p>
<p>Your salary: <b>${employee.salary}</b></p>
<p>Your department: <b>${employee.department}</b></p>
<p>Your gender: <b>${employee.gender}</b></p>
<p>Your languages: </p>
<ul>
    <jst:forEach var="lg" items="${employee.languages}">
        <li>${lg}</li>
    </jst:forEach>

</ul>
<p>Your phoneNumber: ${employee.phoneNumber}</p>
</body>
</html>
