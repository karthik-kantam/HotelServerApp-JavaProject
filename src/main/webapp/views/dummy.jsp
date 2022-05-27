


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order here</title>

    <style>
        h1{
            text-align: center;
        }
        form{
            display:flex;
            flex-direction:column;
            align-items: center;
            justify-content: center;
        }
        .table-no{
            font-size: 1.5em;
            margin-bottom:1em;
        }
        table {
            font-family: arial, sans-serif;
            font-size: 1.5em;
            border-collapse: collapse;
            width: 50%;
            background-color: #ACFFAD;
        }



        td, th {
            border: 1px solid #71EFA3;
            text-align: center;
            padding: 8px;
        }



        tr:nth-child(even) {
            background-color: #71EFA3;
        }
        input{
            font-size: 1em;
        }
        button{
            margin-top: 1em;
            font-size: 1.5em;
            background-color: #54436B;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<h1>Place your order </h1>

<form:form action="/menu" method="POST" modelAttribute="o">
    <div>
      <label class="table-no">Table number:</label>
      <form:input class="table-no" path="table_no" type="number" min="0" max="10"/>
    </div>
    <table>
      <tr>
        <th>Food</th>
        <th>Price</th>
        <th>Quantity</th>
      </tr>
      <c:forEach items="${foods}" var="food">
          <tr>
            <td>${food.food_name }</td>
            <td>₹ ${food.food_price }</td>
            <!--<td><input name="${food.food_id}" type="number" value="0"/></td>-->
            <form:input type="hidden" path="ordered_food_id" value="${food.food_id}"/>
            <td><form:input path="quantity" type="number" value=""/></td>
          </tr>
      </c:forEach>
    </table>

    <form:button type="submit" class="order-btn">Order</form:button>

</form:form>

</body>
</html>


========================
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order here</title>

    <style>
        h1{
            text-align: center;
        }
        form{
            display:flex;
            flex-direction:column;
            align-items: center;
            justify-content: center;
        }
        .table-no{
            font-size: 1.5em;
            margin-bottom:1em;
        }
        table {
            font-family: arial, sans-serif;
            font-size: 1.5em;
            border-collapse: collapse;
            width: 50%;
            background-color: #ACFFAD;
        }



        td, th {
            border: 1px solid #71EFA3;
            text-align: center;
            padding: 8px;
        }



        tr:nth-child(even) {
            background-color: #71EFA3;
        }
        input{
            font-size: 1em;
        }
        button{
            margin-top: 1em;
            font-size: 1.5em;
            background-color: #54436B;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<h1>Place your order </h1>

<form action="/menu" method="POST">
<div>
  <label class="table-no">Table number:</label>
  <input class="table-no" type="number" min="0" max="10" id="myInput1" onchange="myChangeFunction(this)" >
</div>
<table>
  <tr>
    <th>Food</th>
    <th>Price</th>
    <th>Quantity</th>
  </tr>
  <c:forEach items="${foods}" var="food">
	  <tr>
	    <input id="myInput2" type="hidden" name="table_no"/>
	    <td>${food.food_name }</td>
	    <td>₹ ${food.food_price }</td>
	    <input type="hidden" name="ordered_food_id" value="${food.food_id}"/>
	    <td><input name="quantity" type="number" id="${food.food_id}"/></td>
	    <td><button class="order-btn" type="submit">Order</button></td>
	  </tr>
  </c:forEach>
</table>


<!--<button class="order-btn" type="submit">Order</button>-->
</form>
<script type="text/javascript">
  function myChangeFunction(input1) {
    var input2 = document.getElementById('myInput2');
    input2.value = input1.value;
  }
</script>
</body>
</html>

==========================

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order here</title>

    <style>
        h1{
            text-align: center;
        }
        form{
            display:flex;
            flex-direction:column;
            align-items: center;
            justify-content: center;
        }
        .table-no{
            font-size: 1.5em;
            margin-bottom:1em;
        }
        table {
            font-family: arial, sans-serif;
            font-size: 1.5em;
            border-collapse: collapse;
            width: 50%;
            background-color: #ACFFAD;
        }



        td, th {
            border: 1px solid #71EFA3;
            text-align: center;
            padding: 8px;
        }



        tr:nth-child(even) {
            background-color: #71EFA3;
        }
        input{
            font-size: 1em;
        }
        button{
            margin-top: 1em;
            font-size: 1.5em;
            background-color: #54436B;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<h1>Place your order </h1>

<form action="/menu" method="POST">
<div>
  <label class="table-no">Table number:</label>
  <input class="table-no" type="number" min="0" max="10" id="myInput1" onchange="myChangeFunction(this)" >
</div>
<table>
  <tr>
    <th>Food</th>
    <th>Price</th>
    <th>Quantity</th>
  </tr>
  <c:forEach items="${foods}" var="food">
	  <tr>
	    <input id="myInput2" type="hidden" name="table_no"/>
	    <td>${food.food_name }</td>
	    <td>₹ ${food.food_price }</td>
	    <input type="hidden" name="ordered_food_id" value="${food.food_id}"/>
	    <td><input name="quantity" type="number"/></td>
	    <td><button class="order-btn" type="submit">Order</button></td>
	  </tr>
  </c:forEach>
</table>


<!--<button class="order-btn" type="submit">Order</button>-->
</form>
<script type="text/javascript">
  function myChangeFunction(input1) {
    var input2 = document.getElementById('myInput2');
    input2.value = input1.value;
  }
</script>
</body>
</html>

-------------
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order here</title>

    <style>
        h1{
            text-align: center;
        }
        .wrapper{
        display:flex;
        }
        .table-no{
            font-size: 1.5em;
            margin-bottom:1em;
        }
        table {
            font-family: arial, sans-serif;
            font-size: 1.5em;
            border-collapse: collapse;
            width: 50%;
            background-color: #ACFFAD;
        }
        td, th {
            border: 1px solid #71EFA3;
            text-align: center;
            padding: 8px;
        }
        tr:nth-child(even) {
            background-color: #71EFA3;
        }
        input{
            font-size: 1em;
        }
        button{
            font-size: 1.5em;
            background-color: #54436B;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        form{
            display: flex;
            flex-direction: column;
            align-items: stretch;
           }
    </style>
</head>
<body>

<h1>Place your order </h1>


<div class="wrapper">
<table>
   <tr>
   <th colspan="2">Menu</th>
   </tr>
  <tr>
    <th>Food</th>
    <th>Price</th>
  </tr>
  <c:forEach items="${foods}" var="food">
	  <tr>
	    <td>${food.food_name }</td>
	    <td>₹ ${food.food_price }</td>
	  </tr>
  </c:forEach>
</table>
<div class="order-form">
    <form action="/menu" method="POST">
    <div>
      <label class="table-no">Table number:</label>
      <input class="table-no" name="table_no" type="number" min="0" max="10">
    </div>
    <div>
        <div>Food</div>
        <select name="ordered_food_id">
            <c:forEach items="${foods}" var="food">
                <option value="${food.food_id}" ${food == selectedRole ? 'selected' : ''}>${food.food_name}</option>
            </c:forEach>
        </select>
   </div>
        <label>Quantity:</label>
        <input name="quantity" type="number" min="0">
      <button class="order-btn" type="submit">Order</button>
     </form>
</div>
</div>


<script>

<script/>
</body>
</html>
