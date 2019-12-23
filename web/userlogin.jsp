
<%@page contentType="text/html" pageEncoding="GBK"%>



<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GBK">
        <title>学生宿舍信息管理系统</title>


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
                height: 200px;

            }
            .picture1{

                width: 170px;
                height:160px;margin:auto; position: absolute;top: 0; left: 0; bottom: 0; right: 0; 



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
                height: 45px;
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
                background-color: white; 
                color: black; 
                border: 2px solid #e12516;
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

            <div class="picture">
                <div class="picture1">
                    <img src="images/1.png" width=150 height=150 />
                </div>
            </div>
            <form action="loginservlet" method="post">

                <div class="text">
                    <div class="text11">
                        <div class="text1">
                            <h3><label for="uid">学号/工号</label></h3>
                        </div>
                        <div class="text2">
                            <div class="text3">
                                <input type="text"  name="id" placeholder=" 请输入您的学号/工号"style="height:30px;width:200px;border:2px solid #e12516;border-radius:10px;" />
                            </div>
                        </div>
                    </div>
                    <div class="text12">
                        <div class="text1">
                            <h3><label for="username">密码</label></h3>
                        </div>
                        <div class="text2">
                            <div class="text3">
                                <input type="password"  name="password" placeholder=" 请输入密码" style="height:30px;width:200px;border:2px solid #e12516;border-radius:10px;"/>
                            </div>
                        </div>
                    </div>
                    <div class="text12">
                        <div class="text1">
                            <h3><label for="select" style="height:30px;width:200px;border:2px solid #e12516;border-radius:10px;">选择园区</label></h3>
                        </div>
                        <div class="text2">
                            <div class="text3">

                                <select name="yuan">
                                    <option value="1">榕园</option>
                                    <option value="2">梅园</option>
                                    <option value="3">智园</option>

                                </select>
                            </div>
                        </div>
                    </div>




                </div>


                <div class="showbt2">
                    <div class="showbt11">

                        <button class="button button4" type="submit">登录</button>
                    </div>
                </div>
            </form>

            <div class="showbt2">
                <div class="showbt11">
                    <button class="button button5" onclick="window.location = 'resgister.jsp'">注册</button>
                </div>
            </div>
        </div> 

    </body>
</html>