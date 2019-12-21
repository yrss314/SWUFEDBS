<%-- 
    Document   : failToDatabase
    Created on : 2019-7-22, 10:19:25
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GBK">
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
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <div class="container">
                        <div class="head">
                            
                        </div>
                    </div> 
                    <li class="nav-item">
                        <a class="nav-link" href="userlogin.jsp" style="color:aliceblue">返回上个页面</a>
                    </li>
            </ul>          
        </nav>
   
    <center>wrong id or password!</center>
        <div class="jumbotron text-center" style="bottom:0;position: fixed;width: 100%;">
    <div class="foot">
        <p>Provided by Yusong Wang, Kai Wang, Yuru Wang from SWUFE, in December, 2019</p>
    </div>

</div>
    </body>
</html>
