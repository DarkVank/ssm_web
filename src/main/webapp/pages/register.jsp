<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>注册</title>

  <link rel="stylesheet" href="../layui/css/layui.css"/>
  <link rel="stylesheet" href="../css/login_style.css"/>
  <link rel="stylesheet" href="../css/socisty.css"/>

</head>
<body>
    <div class="layui-container">  
        <div class="layui-row">
            <div class="layui-col-md4 local_top">
              <div class="layui-row " >
                <a href="main.jsp">

                  <img src="../images/lock.png" class="local_left"/>
                </a>
                
              </div>
            </div> 

            <!-- right -->
            <div class="layui-col-md4 layui-col-md-offset4 bg local_top">
                <!-- nav导航栏 -->
                <ul class="layui-nav layui-col-space3 " >
                    <li class="layui-nav-item layui-col-md4"><a href="">微信登录</a></li>
                    <li class="layui-nav-item "><a href="">免密登录</a></li>
                    <li class="layui-nav-item layui-col-md4"><a href="">密码登录</a></li>
                </ul>
                <div class="layui-form-mid layui-word-aux"></div>


                  <!-- 主要内容 -->
                 <div class="layui-row" >
                  <form class="layui-form " action="#" method="post">
                     <div class="layui-form-item">
                      <div class="layui-input-block">
                        <input type="input" name="username" required  lay-verify="required" placeholder="自定义用户名" autocomplete="off" class="layui-input form_local">
                      </div>
                    </div> 

                    <div class="layui-form-item">
                      <div class="layui-input-block">
                        <input type="tel" name="phone" required  lay-verify="required" placeholder="手机号" autocomplete="off" class="layui-input form_local">
                      </div>
                    </div> 

                    <div class="layui-form-item">
                      <div class="layui-input-block">
                        <input type="password" name="password" required lay-verify="required" placeholder="输入密码" autocomplete="off" class="layui-input form_local">
                      </div>
                    </div>

                      <div class="layui-form-item">
                        <div class="layui-input-block local_top">
                          <button class="layui-btn form_local" lay-submit >立即注册</button>
                        </div>


                        
                        
                        
                      </div>
                  </form>
                </div> 

                <div class="layui-fluid location0">
                  其他方式登录
                </div>

                <hr/>
                  <!-- Social-Icons -->
                  <div id="social" class="social agileits ">
                    <ul class="social-icons agileits location-center">
                      <li class="agileits "><a href="#" class="facebook agileits " title="Go to Our Facebook Page"></a></li>
                      <li class="agileits "><a href="#" class="agileits  twitter" title="Go to Our Twitter Account"></a></li>
                      <li class="agileits "><a href="#" class="agileits  googleplus" title="Go to Our Google Plus Account"></a></li>
                      <li class="agileits "><a href="#" class="instagram agileits " title="Go to Our Instagram Account"></a></li>
                      <li class="agileits "><a href="#" class="agileits  youtube" title="Go to Our Youtube Channel"></a></li>
                    </ul>
                  </div>
            <!-- end Social-Icons -->
            </div>
          </div>

          
    </div>

    <div class="login_position">
      <img src="../images/unInternet.png">
    </div>
    <div class="">
      <!-- 底部固定区域 -->

      
    </div>

    <script src="../layui/layui.js"></script>

</body>
</html>