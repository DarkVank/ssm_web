 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>管理员信息</title>
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
      <li class="layui-nav-item layui-hide-xs"><a href="">云市场</a></li>
      <li class="layui-nav-item layui-hide-xs"><a href="">社区</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">系统管理</a>
        <dl class="layui-nav-child">
          <dd><a href="user-list.jsp">用户管理</a></dd>
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
          <a href="javascript:;">首页</a>
          <!-- -----------------------------------------------------------
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
            <dd><a href="user-list.jsp">用户管理</a></dd>
            <dd><a href="role-list.jsp">角色管理</a></dd>
            <dd><a href="#">访问日志</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="#">云市场</a></li>
        <li class="layui-nav-item"><a href="#">社区</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body ">
    <!-- 内容主体区域 -->
    <div class="layui-btn-group demoTable">
      <button class="layui-btn" data-type="getCheckData">获取选中行数据</button>
      <button class="layui-btn" data-type="getCheckLength">获取选中数目</button>
      <button class="layui-btn" data-type="isAll">验证是否全选</button>
    </div>

    <table class="layui-table">

        <tr>
          <th >ID</th>
          <th >用户名</th>
          <th >password</th>
        </tr>



        <c:forEach items="${userList}" var="user">
          <tr>
            <td >${user.id}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
          </tr>
        </c:forEach>

    </table>


  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    copy@
  </div>
</div>


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
      