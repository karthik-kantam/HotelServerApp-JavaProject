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
        .title{
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

        button{
            font-size: 1.5em;
            padding: 1rem;
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
           .order-form{
                margin : auto;
                width: 25%;
           }
        form>div{
            display: flex;
            justify-content: space-between;
            margin-bottom: 3rem;
        }

        body{
        background-image: url('https://theidlixpress.com/wp-content/uploads/2018/08/dosa-Idlixpress.jpg');
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        backdrop-filter: blur(3px);

        }

        .box select {
          background-color: #0563af;
          color: white;
          padding: 12px;
          width: 250px;
          border: none;
          font-size: 20px;
          box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
          -webkit-appearance: button;
          appearance: button;
          outline: none;
        }



        .box select option {
          padding: 30px;
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
      <label class="title">Table number:</label>
      <input class="title" name="table_no" type="number" min="0">
    </div>
    <div class="box">
        <label class="title">Food:</label>
        <select name="ordered_food_id">
            <c:forEach items="${foods}" var="food">
                <option value="${food.food_id}" ${food == selectedRole ? 'selected' : ''}>${food.food_name}</option>
            </c:forEach>
        </select>
   </div>
   <div>
        <label class="title">Quantity:</label>
        <input class="title" name="quantity" type="number" min="0">
   </div>
      <button class="order-btn" type="submit">Order</button>
     </form>
</div>
</div>


<script>

<script/>
</body>
</html>
