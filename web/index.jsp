<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .container{
                display:flex;
                justify-content: center;
                align-items: center;
                gap:2rem;
            }
            .button-24 {
                background:#94d7d6;
                border: 1px solid #FF4742;
                border-radius: 6px;
                box-shadow: rgba(0, 0, 0, 0.1) 1px 2px 4px;
                box-sizing: border-box;
                color: #FFFFFF;
                cursor: pointer;
                display: inline-block;
                font-family: nunito,roboto,proxima-nova,"proxima nova",sans-serif;
                font-size: 16px;
                font-weight: 800;
                line-height: 16px;
                min-height: 40px;
                outline: 0;
                padding: 12px 14px;
                text-align: center;
                margin-bottom: 5px;
                text-transform: none;
                vertical-align: middle;
            }

            .button-24:hover,
            .button-24:active {
                background-color: initial;
                background-position: 0 0;
                color: #FF4742;
            }

            .button-24:active {
                opacity: .5;
            }

            .deleteForm,.viewForm,.container{
                border:1px solid #000;
                border-radius: 5px;
                margin:10px;
                overflow: hidden;
                padding:5px;
            }

            .form-container{
                display:flex;
                align-items: center;
                padding:0;
                margin:0;
            }

            .deleteForm input,.viewForm input{
                height: 100%;
                outline:none;
                border:none;
                margin-bottom: 2px;

            }
            h2{
                text-align: center;
            }
        </style>
    </head>
    <body>   
        <h2>User registration module using JSP</h2>
        <div class="container"> 
            <a href="addUser.jsp"><button class="button-24">Add Record</button></a>
            <a href="updateUser.jsp"><button class="button-24">Update Record</button></a>
            <form action="deleteUser.jsp" class="deleteForm">
                <input type="number" name="delete_id" placeholder="Enter ID " required>
                <button class="button-24">Delete Record</button>
            </form>
            <div class="form-container">
                <form action="searchUser.jsp" class="viewForm">
                    <input type="number" name="view_data"  placeholder="Enter ID " required>
                    <button class="button-24">Show Record</button>
                </form>
                <form action="view_all.jsp" class="viewForm" style="align-item: center;">
                    <button class="button-24">Show All Record</button>
                </form>
            </div>
        </div>
    </body>
</html>
