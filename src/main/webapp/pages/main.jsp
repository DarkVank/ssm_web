 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>首页</title>
  <link rel="stylesheet" href="../layui/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div></div>
    <div class="layui-logo layui-hide-xs layui-bg-black">数据库管理系统</div>
    <!-- 头部区域（可配合layui 已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <!-- 移动端显示 -->
      <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
        <i class="layui-icon layui-icon-spread-left"></i>
      </li>
      
      <li class="layui-nav-item layui-hide-xs"><a href="main.jsp">首页</a></li>
      <li class="layui-nav-item layui-hide-xs"><a href="#">云市场</a></li>
      <li class="layui-nav-item layui-hide-xs"><a href="#">社区</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">系统管理</a>
        <dl class="layui-nav-child">
          <dd><a href="${pageContext.request.contextPath}/user/list">用户管理</a></dd>
          <dd><a href="role-list.jsp">角色管理</a></dd>
          <dd><a href="#">访问日志</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item layui-hide layui-show-md-inline-block">
        <a href="javascript:;">
          <img src="" class="layui-nav-img">
          tester
        </a>
        <dl class="layui-nav-child">
          <dd><a href="own.jsp">Your Profile</a></dd>
          <dd><a href="login.jsp">Settings</a></dd>
          <dd><a href="#">Sign out</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
        <a href="javascript:;">
          <i class="layui-icon layui-icon-more-vertical"></i>
        </a>
      </li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="main.jsp">首页</a>
          <!-- -----------------------------------------------------------
            <a href="javascript:;">首页</a>
            <dl class="layui-nav-child">
            <dd><a href="javascript:;">选项一</a></dd>
            <dd><a href="javascript:;">选项二</a></dd>
            <dd><a href="javascript:;">选项三</a></dd>
            <dd><a href="">跳转项</a></dd>
          </dl> 
        -->
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">系统管理</a>
          <dl class="layui-nav-child">
            <dd><a href="${pageContext.request.contextPath}/user/list">用户管理</a></dd>
            <dd><a href="role-list.jsp">角色管理</a></dd>
            <dd><a href="#">访问日志</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">云市场</a></li>
        <li class="layui-nav-item"><a href="">社区</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body ">
    <!-- 内容主体区域 -->
   
                     
                
    
      <!-- 注意：如果你直接复制所有代码到本地，上述 JS 路径需要改成你本地的 -->
  </div>
  
  <script src="../layui/layui.js" charset="utf-8"></script>

  <div class="layui-footer">
    <!-- 底部固定区域 -->
    copy@
  </div>
</div>
<script src="../layui/layui.js" charset="utf-8"></script>

<!-- js -->
<script src="../layui/layui.js" charset="utf-8"> </script>

<script>
  layui.use('element', function(){
    var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
    
    //监听导航点击
    element.on('nav(demo)', function(elem){
      //console.log(elem)
      layer.msg(elem.text());
    });
  });
</script>

</body>
</html>
      