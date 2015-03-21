<%--
  Created by IntelliJ IDEA.
  User: anthonycallaert
  Date: 21/03/15
  Time: 01:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<html>
<head>
    <title></title>
</head>
<body>
<form role="form" name="form" action="" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    <div>
        <label for="email">Email address</label>
        <input type="email" name="email" id="email" value="${form.email}" required autofocus/>
    </div>
    <div>
        <label for="password">Password</label>
        <input type="password" name="password" id="password" required/>
    </div>
    <div>
        <label for="passwordRepeated">Repeat</label>
        <input type="password" name="passwordRepeated" id="passwordRepeated" required/>
    </div>
    <div>
        <label for="role">Role</label>
        <select name="role" id="role" required>
            <option <c:if test="${form.role == 'USER'}">selected</c:if>>USER</option>
            <option <c:if test="${form.role == 'ADMIN'}">selected</c:if>>ADMIN</option>
        </select>
    </div>
    <button type="submit">Save</button>
</form>
</body>
</html>
