<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index.jsp</title>
</head>
<body>
<h2>Все пользователи</h2><br />

    <table border=\"1\" width=\"100%\" cellpadding=\"5\">
        <tr>
            <th>Номер</th>
            <th>Имя</th>
            <th>Возраст</th>
            <th colspan="2">Функции</th>
        </tr>

            <c:forEach var="user" items="${requestScope.users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.age}</td>
                    <td>
                        <form method="post" action="<c:url value='/delete'/>">
                            <input type="number" hidden name="id" value="${user.id}" />
                            <input type="submit" name="delete" value="Удалить"/>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="<c:url value='/update'/>">
                            <input type="number" hidden name="id" value="${user.id}" />
                            <input type="submit" value="Редактированть"/>
                        </form>
                    </td>
                </tr>

            </c:forEach>

    </table>

<h2>Создание нового пользователя</h2><br />

<form method="post" action="<c:url value='/add_user'/>">

    <label><input type="text" name="name"></label>Имя<br>
    <label><input type="number" name="age"></label>Возраст<br>

    <input type="submit" value="Ok" name="Ok"><br>
</form>
</body>
</html>
