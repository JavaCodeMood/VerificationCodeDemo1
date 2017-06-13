<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="check" class="com.lhf.check.Check_Code"/>
<%
  check.makeChecknum();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>精巧的文字图形验证码</title>
</head>
<script language="javascript" type="text/javascript" src="js/check.js"></script>
   <link href="css/style.css" rel="stylesheet" type="text/css">
    <body>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="328" height="214" border="0" align="center" cellpadding="0" cellspacing="0" background="images/bg.jpg">
      <tr>
        <td width="24" height="60">&nbsp;</td>
        <td width="97">&nbsp;</td>
        <td width="188">&nbsp;</td>
        <td width="19">&nbsp;</td>
      </tr>
        <form name="form1" method="POST">
      <tr>
        <td height="30">&nbsp;</td>
        <td align="right" class="STYLE1">用户名：</td>
        <td><input name="name" type="text" id="name" size="15"></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="30">&nbsp;</td>
        <td align="right" class="STYLE1">密码：</td>
        <td><input name="password" type="password" id="password" value="" size="15"></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="34">&nbsp;</td>
        <td align="right" class="STYLE1">验证码：</td>
        <td><input name="checkes" type="text" id="checkes" size="5">
          <input type="hidden" name="checks" value="<%=check.getChecknums()%>">
          <%=check.getChecknum()%></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td colspan="2" align="center"><input type="image" name="imageField" src="images/bg_3.jpg" onClick="return check();">&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="image" name="imageField2" src="images/bg_5.jpg" onClick="form.reset();return false;"></td>
        <td>&nbsp;</td>
      </tr>
        </form>
      <tr>
        <td height="25">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>

    </body>
</html>
