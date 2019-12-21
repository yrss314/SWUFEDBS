<%-- 
    Document   : login
    Created on : 2019-12-20, 13:23:24
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="GBK"%>



<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GBK">
        <title>学生宿舍信息管理系统-登录</title>


        <style>



            .bac{
                background-color: #e12516;
                color: #fff;
                height: 100%;
                width: 100%;
            }
            .picture{
                position: relative;
                margin:0 auto; 
                width: 250px;
                height: 250px;

            }
            .picture1{

                width: 180px;
                height:180px;margin:auto; position: absolute;top: 0; left: 0; bottom: 0; right: 0; 



            }
            .picture2{
                margin:0 auto; 
                width: 250px;
                height: 50px;


            }
            .pic{
                margin:0 auto; 

            }
            .showbt1{
                position: relative;
                margin:0 auto; 
                top: 0; left: 0; bottom: 0; right: 0; 
                width: 290px;
                height: 80px;
            }
            .showbtt{
                position: relative;
                margin:0 auto; 
                top: 0; left: 0; bottom: 0; right: 0; 
                width: 290px;
                height: 20px;
            }
            .showbt11{
                position: relative;

                width: 100px;
                height: 50px;
            }

            .showbt2{
                margin:0 auto; 
                width: 285px;
                height:60px;
            }
            .text{
                margin:0 auto; width:320px;height: 135px; }
            .text11{margin:0 auto; width:320px;height: 50px; }
            .text12{margin:0 auto; width:320px;height: 50px; }
            .text13{margin:0 auto; width:320px;height: 50px; }
            .text1{
                margin-left: 0; 
                width: 120px; 
                height: 50px;
                float: left;

            }
            .text2{
                position:relative;
                margin-right: 0; 
                width:  200px;
                height: 50px;
                float: right;
            }
            .text3{
                position: absolute;
                top: 20px;
                left:0;
                bottom:0;
                right:0;
                margin:0 auto;
                width:200px;
                height: 40px; 
            }
            .button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 16px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 13px;
                margin: 0 0;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                cursor: pointer;
                border-radius:15px;

            }
            .button3 {
                background-color: white; 
                color: black; 
                border: 2px solid #e12516;
                width: 20;
                width: 140;

            }

            .button3:hover {
                background-color: #e12516;
                color: white;
                border: 2px solid white;
                width: 140;

            }

            .button4 {
                background-color: white; 
                color: black; 
                border: 2px solid #e12516;
                width: 280;

            }

            .button4:hover {
                background-color: #e12516;
                color: white;
                width: 280;
                border: 2px solid white;

            }
            .button5 {
                background-color: #e12516; 
                color: white; 
                border: 2px solid white;
                width: 280;

            }

            .button5:hover {
                background-color: #e12516;
                color: white;
                width: 280;
                border: 2px solid white;
            }
        </style>
    </head>
    <body>
        <div class="bac">
            <div class="picture2">
                

            </div>
            <div class="showbtt">
                
            </div>
            <div class="picture">
                <div class="picture1">
                    <img src="images/1.png" width=150 height=150 />
                </div>
            </div>
            
            
                <div class="showbt1">

                    <button class="button button3" onclick="window.location = 'managerlogin.jsp'">我是管理者</button>

                    <button class="button button3" onclick="window.location = 'userlogin.jsp'">我是用户</button>

                </div>

               

           <div class="showbt2">
                <div class="showbt11">
                    <button class="button button5" onclick="window.location = 'resgister.jsp'">注册</button>
                </div>
            </div>
        </div> 

    </body>
</html>
