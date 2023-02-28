<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>

<h1>Public Employee Information</h1>
<br>
<br>
<security:authorize access="hasAnyRole('IT','SECURITY','DIRECTOR')">

<input type="button" value="For it"
       onclick="window.location.href = 'it_info'">
Only for it and security and directors
</security:authorize>

<br>
<br>

<security:authorize access="hasAnyRole('SECURITY','DIRECTOR')">
<input type="button" value="For security"
       onclick="window.location.href = 'security_info'">
Only for security and directors
</security:authorize>

<br>
<br>

<security:authorize access="hasRole('DIRECTOR')">
    <input type="button" value="For directors"
           onclick="window.location.href = 'director_info'">
    Only for directors
</security:authorize>

</body>
</html>