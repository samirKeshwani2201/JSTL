<!DOCTYPE html>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*,java.sql.*" %>

<html> 
    <head>
        <title>
            Student Registration Form
        </title>
        <style>
            .form-container {
                background-image: linear-gradient(to right, #66cec5, #1fcdb3);
                width: fit-content;
                border-radius: 5px;
                padding: 20px;
                transition: 2s;
            }
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
            }
            table tr td {
                padding: 10px;
            }
            .submitBtn {
                align-items: center;
                justify-content: center;
            }
            input:not([type="radio"]) {
                padding: 10px;
                border-radius: 5px;
                outline: none;
                width: 15rem;
            }
        </style>
    </head> 
    <body>
        <div class="container">
            <div class="form-container">
                <form action="addUser.jsp" method="post">

                    <fieldset style="width:fit-content;padding:30px;">
                        <legend style="font-weight: 800;font-size: 30px;">Create a User</legend>
                        <form action="addUser.jsp" method="get"> 
                            <table class="table"> 
                                <tr>
                                    <td><span>Username : </span></td>
                                    <td> <input type="text" placeholder="Set Username" name="username" required></td>
                                </tr>
                                <tr>
                                    <td><span>Email : </span></td>
                                    <td><input type="email" placeholder="Enter your e-mail" name="email" required></td>
                                </tr> 
                                <tr>
                                    <td><span>Password : </span></td>
                                    <td><input type="password" placeholder="Set password" name="password" required></td>
                                </tr>
                            </table>


                            <button class="button-24" type="submit" name="submit">Submit</button>

                    </fieldset>
                </form>
            </div>
        </div>

    </body> 

    <c:if test="${'POST'.equals(request.method) &&  not empty param.submit}">

        <c:set var="email" value="${param.email}"/>
        <c:set var="password" value="${param.password}" />
        <c:set var="name" value="${param.username}" />
        

    </c:if>



</html>