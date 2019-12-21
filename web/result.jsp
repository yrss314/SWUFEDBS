

<%@page import="servlet.DB"%>
<%@page import="java.sql.*" %>  
<%@page contentType="text/html;charset=GB2312" pageEncoding="UTF-8"%>
<%@page import="bean.*" %>

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




    <center>

        <%
            request.setCharacterEncoding("gb2312");
            ResultSet rs1;
            String search = request.getParameter("search");
            String yid = (String) session.getAttribute("yid");
            char[] str = search.toCharArray();
            if (search != null && str.length < 8) {

                try {
                    PreparedStatement ps = DB.dbCon().prepareStatement("select * from dormitory where did =? and yid=?");
                    ps.setString(1, search);
                    ps.setString(2, yid);
                    rs1 = ps.executeQuery();
                    if (!rs1.next()) {
                        RequestDispatcher dis = request.getRequestDispatcher("searcherror.jsp");
                        dis.forward(request, response);
                    }
                    out.print("<table border=2>");
                    out.print("<tr>");
                    out.print("<th width=150>" + "寝室号");
                    out.print("<th width=150>" + "园号");
                    out.print("<th width=150>" + "水费");
                    out.print("<th width=150>" + "电费");

                    out.print("</TR>");

                    out.print("<tr>");
                    out.print("<td>" + rs1.getString(1) + "</td>");
                    out.print("<td>" + rs1.getString(2) + "</td>");
                    out.print("<td>" + rs1.getString(3) + "</td>");
                    out.print("<td>" + rs1.getString(4) + "</td>");

                    out.print("</tr>");

                    out.print("</table>");
                } catch (Exception e) {
                    out.print(e);
                }
            } else if (search != null && str.length == 8) {

                try {
                    PreparedStatement ps = DB.dbCon().prepareStatement("select student.sid,student_info.sname,student_info.ssex,student_info.sage,student_info.sdept,student_info.class,student.yid,student.did,student.bed,student_info.phone from student,student_info where student.sid =? and student_info.sid=? and student.yid=?");
                    ps.setString(1, search);
                    ps.setString(2, search);
                    ps.setString(3, yid);
                    rs1 = ps.executeQuery();
                    if (!rs1.next()) {
                        RequestDispatcher dis = request.getRequestDispatcher("searcherror.jsp");
                        dis.forward(request, response);
                    }
                    //ybean.setSearch(search);
                    //ybean.setSs(true);
                    //ybean.setDid(rs1.getString(1));
                    //ybean.setYid(rs1.getInt(2));
                    //ybean.setWaterrate(rs1.getString(3));
                    //ybean.setElerate(rs1.getString(4));
                    out.print("<table border=2>");
                    out.print("<tr>");
                    out.print("<th width=100>" + "学号");
                    out.print("<th width=100>" + "姓名");
                    out.print("<th width=100>" + "性别");
                    out.print("<th width=100>" + "年龄");
                    out.print("<th width=100>" + "专业");
                    out.print("<th width=100>" + "班级");
                    out.print("<th width=100>" + "园号");
                    out.print("<th width=100>" + "寝室号");
                    out.print("<th width=100>" + "床号");
                    out.print("<th width=100>" + "联系方式");
                    out.print("</TR>");

                    out.print("<tr>");
                    out.print("<td>" + rs1.getInt(1) + "</td>");
                    out.print("<td>" + rs1.getString(2) + "</td>");
                    out.print("<td>" + rs1.getString(3) + "</td>");
                    out.print("<td>" + rs1.getString(4) + "</td>");
                    out.print("<td>" + rs1.getString(5) + "</td>");
                    out.print("<td>" + rs1.getString(6) + "</td>");
                    out.print("<td>" + rs1.getString(7) + "</td>");
                    out.print("<td>" + rs1.getString(8) + "</td>");
                    out.print("<td>" + rs1.getString(9) + "</td>");
                    out.print("<td>" + rs1.getString(10) + "</td>");
                    out.print("</tr>");

                    out.print("</table>");
                } catch (Exception e) {
                    out.print(e);
                }
            } else if (search != null && str.length > 8) {

                try {
                    PreparedStatement ps = DB.dbCon().prepareStatement("select * from rent where cid=? and yid=?");
                    ps.setString(1, search);
                    ps.setString(2, yid);
                    //PreparedStatement ps = DB.dbCon().prepareStatement("select * from info_pro where p_name=?");
                    //ps.setString(1, search);
                    rs1 = ps.executeQuery();
                    if (!rs1.next()) {
                        RequestDispatcher dis = request.getRequestDispatcher("searcherror.jsp");
                        dis.forward(request, response);
                    }

                    //ybean.setSearch(search);
                    //ybean.setSs(true);
                    //ybean.setDid(rs1.getString(1));
                    //ybean.setYid(rs1.getInt(2));
                    //ybean.setWaterrate(rs1.getString(3));
                    //ybean.setElerate(rs1.getString(4));
                    out.print("<table border=2>");
                    out.print("<tr>");
                    out.print("<th width=250>" + "身份证号");
                    out.print("<th width=100>" + "园号");
                    out.print("<th width=100>" + "寝室号");
                    out.print("<th width=100>" + "床号");
                    out.print("<th width=100>" + "入住时间");
                    out.print("<th width=100>" + "离开时间");
                    out.print("<th width=100>" + "房费");

                    out.print("</TR>");

                    out.print("<tr>");
                    out.print("<td>" + rs1.getString(1) + "</td>");
                    out.print("<td>" + rs1.getString(2) + "</td>");
                    out.print("<td>" + rs1.getString(3) + "</td>");
                    out.print("<td>" + rs1.getString(4) + "</td>");
                    out.print("<td>" + rs1.getString(5) + "</td>");
                    out.print("<td>" + rs1.getString(6) + "</td>");
                    out.print("<td>" + rs1.getString(7) + "</td>");

                    out.print("</tr>");

                    out.print("</table>");
                } catch (Exception e) {
                    out.print(e);
                }
            }
        %> 

        <div class="jumbotron text-center" style="bottom:0;position: fixed;width: 100%;">
            <div class="foot">
                <p>Provided by Yusong Wang, Kai Wang, Yuru Wang from SWUFE, in December, 2019</p>
            </div>

        </div>

    </body>
</html>