<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Title</title>
</head>
<body>
    <h2>Dear employee, please enter your details</h2>

<%--    <form action="showDetails" method="post">--%>
<%--        <div>--%>
<%--            <label>Enter your name: </label>--%>
<%--            <input type="text"  placeholder="Name" name="name">--%>
<%--        </div>--%>

<%--        <div>--%>
<%--            <label>Enter your surname: </label>--%>
<%--            <input type="text" placeholder="Surname" name="surname">--%>
<%--        </div>--%>

<%--        <button type="submit">Submit</button>--%>
<%--    </form>--%>
        
    <form:form action="showDetails" modelAttribute="employee">

        Name: <form:input path="name"/>
        <form:errors path="name"/>
        <br>
        Surname: <form:input path="surname"/>
        <form:errors path="surname"/>
        <br>
        Salary: <form:input path="salary"/>
        <form:errors path="salary"/>
        <br>
        Department:
        <form:select path="department">
            <form:option value="Information Technology" label="IT"/>
            <form:option value="Human Resources" label="HR"/>
            <form:option value="Sales" label="Sales"/>
        </form:select>
        <br>
        What is your gender?
        Male <form:radiobutton path="gender" value="Male"/>
        Female <form:radiobutton path="gender" value="Female"/>
        <br>
        Foreign Language(s):
        EN <form:checkbox path="languages" value="English"/>
        RU <form:checkbox path="languages" value="Russian"/>
        FR <form:checkbox path="languages" value="French"/>
        <br>
        PhoneNumber:
        <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
        <br>
        <input type="submit" value="Submit">
    </form:form>

</body>
</html>
