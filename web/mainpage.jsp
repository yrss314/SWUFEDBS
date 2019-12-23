
<%@page import="servlet.DB"%>
<%@page import="java.sql.*" %>  
<%@page contentType="text/html;charset=GB2312" pageEncoding="UTF-8"%>
<%@page import="bean.*" %>
<jsp:useBean id="loginbean" type="bean.loginbean" scope="session"/>
<html>
    <head>

        <title>学生宿舍信息管理系统</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
        <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
        <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

        <style>

            .body {
                margin: 0;
            }
            /* 头部样式 */
            .head{ 

                position:relative; 
                margin-left: 0; 
                width:900px; 
                height:50px;
            }  
            .head1{

                position: absolute;
                top: 10px;
                left:0;
                bottom:0;
                right:0;
                margin-left: 0;
                width:30px; 
                height:30px；
            }
            .head2{

                position: absolute;
                top: 10px;
                left:0;
                bottom:0;
                right:0;
                margin-left: 40;
                width:30px; 
                height:30px；
            }
            .img {
                display: block;
                margin: 0 auto;
            }
            .show{ position:relative; margin:0 auto; width:600px; height:400px;}  
            .show1{position: absolute;top: 0px;left:0;bottom:0;right:0;
                   margin:0 auto; width:400px; height:400px；}

            img {
                display: block;
                margin: 0 auto;
            }

            h1 {text-align:center;font-size:80px;}

            div.img {

            }

            div.img:hover {

            }

            div.img img {
                width: 25%;
                height: auto;
            }

            div.desc {
                padding: 15px;
                text-align: center;
            }

            * {
                box-sizing: border-box;
            }

            .responsive {
                padding: 0 6px;
                float: left;
                width: 25%;
            }

            @media only screen and (max-width: 400px){
                .responsive {
                    width: 20%;
                    margin: 6px 0;
                }
            }

            @media only screen and (max-width: 500px){
                .responsive {
                    width: 100%;
                }
            }
            .clearfix:after {
                content: "";
                display: table;
                clear: both;
            }

            .text{
                margin:0 auto; 
                width:300px; 
            }
            .textt{
                margin:0 auto; 
                width:330px; 
                margin-left: 480px;
            }
            .text1            
            .text2
            .text3
            .text4
            .jumbotron{
                background: #ffffff;
            }
            .foot{ 
                margin:0 auto; 
                width:400px; 
                height:auto;
                color:#555555;
            } 
            .search{ 
                position:relative; 
                margin:0 auto; 
                width:800px; 
                height:90px;
            } 
            .search1{
                position: absolute;
                top: 30px;
                left:0;
                bottom:0;
                right:0;
                margin:0 auto;
                width:600px; 
                height:30px；
            }
            .input[type=text] {
                float: right;
                padding: 6px;
                border: none;
                margin-top: 8px;
                margin-right: 16px;
                font-size: 17px;
            }
        </style>
    </head>
    <body>
        <nav class="navbar-expand-sm bg-danger navbar-dark" style="height: 50px;">

            <div class="container">

                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <div class="head">

                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:aliceblue" onclick="window.location = 'mainpage.jsp'">返回主页</a>
                    </li>
                </ul> 
            </div>  
        </nav>

        <div class="clearfix"></div>
        <div style="padding:6px;">
        </div>
        <div class="text ">
            <h5><label for="username" width:200px><jsp:getProperty name="loginbean" property="backnews"/></label></div></h5>
    <div class="text ">
        <h5><label for="username" width:200px>我的姓名:<jsp:getProperty name="loginbean" property="name"/></label></div></h5>
<div class="text ">
    <h5><label for="username" width:200px>我的账号:<jsp:getProperty name="loginbean" property="id"/></label></div></h5>
<div class="text">
    <h5><label for="username" width:200px>电话号码:<jsp:getProperty name="loginbean" property="phone"/></label></div></h5>



<!--<center>
    <form action ="yselected.jsp" method=post name="form" id="form"  >

        <h5>选择园区：</h5> <select name="yuan">
            <option value="榕园">榕园</option>
            <option value="梅园">梅园</option>
            <option value="智园">智园</option>

        </select>
        <input type ="submit" value="提交">
    </form>

</center>
-->

<center>
<%
    request.setCharacterEncoding("gb2312");
    ResultSet rs;
    String yid = (String) session.getAttribute("yuan");

    try {

        PreparedStatement sql = DB.dbCon().prepareStatement("SELECT * FROM yuan where yid=?");

        sql.setString(1, yid);

        rs = sql.executeQuery();
        if (rs.next()) {
            out.print("<table border=2>");
            out.print("<tr>");
            out.print("<th width=150>" + "园号");

            out.print("<th width=150>" + "园名");
            out.print("<th width=150>" + "宿舍数");
            out.print("<th width=150>" + "已分配宿舍");

            out.print("<th width=150>" + "房型");
            out.print("<th width=150>" + "房费");

            out.print("</TR>");

            out.print("<tr>");
            out.print("<td>" + rs.getString(1) + "</td>");
            out.print("<td>" + rs.getString(2) + "</td>");

            out.print("<td>" + rs.getInt(3) + "</td>");
            out.print("<td>" + rs.getInt(4) + "</td>");
            out.print("<td>" + rs.getString(5) + "</td>");
            out.print("<td>" + rs.getString(6) + "</td>");

            out.print("</tr>");

            out.print("</table");

        }
        session.setAttribute("yid", rs.getString(1));
    } catch (SQLException e) {
        out.print(e);
    }

%> 
</center>
<div class="search">
    <div class="search1">
        <form action="result.jsp" method="post" style="width:500px;margin: 0 auto;" name=form>
            <input type="text" name="search" style="width:430px;margin: 0 auto;" placeholder="请输入学号/身份证号/寝室号...">
            <button class="button" type="submit" >搜索</button>
        </form>
    </div>


</div>  
<div class="jumbotron text-center" style="bottom:0;position: fixed;width: 100%;">
    <div class="foot">
        <p>Provided by Yusong Wang, Kai Wang, Yuru Wang from SWUFE, in December, 2019</p>
    </div>

</div>

</body>
</html>
