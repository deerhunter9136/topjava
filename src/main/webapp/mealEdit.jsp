<%--
  Created by IntelliJ IDEA.
  User: NewPC
  Date: 06.02.2022
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Edit Meal</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h3><a href="meals">Meals</a></h3>
<h2>Edit Meal</h2>
<form method="POST" action='meals' name="editMeal">

    Id
    <label>
        <input
                type="number" name="id"
                value=${requestScope.meal.id}>
    </label>

    Date-Time
    <label>
        <input
                type="datetime-local" name="datetime"
                value=${requestScope.meal.dateTime}>
    </label>

    Description
    <label>
        <input
                type="text" name="description"
                value=${requestScope.meal.description}>
    </label>

    Calories
    <label>
        <input
                type="number" name="calories"
                value=${requestScope.meal.calories}>
    </label>
    <input
            type="submit" value="submit"/>
</form>
</body>
