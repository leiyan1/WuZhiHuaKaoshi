<%@ Page  Language="C#"   EnableEventValidation="false" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>基于网络的BS无纸化考试系统</title>
    <link href="images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	background-image: url(login1_08.gif);
	background-repeat: repeat-x;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	line-height: 1.5;
	font-weight: normal;
	color: #546D87;
	background-color: #BBD9F5;
}
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div align=center>
    <table width="990" height="650" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td width="318" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="299" align="right"><img src="images/login1_01.gif" width="318" height="299" /></td>
        </tr>
        <tr>
          <td height="351" align="right"><img src="images/login1_04.gif" width="318" height="351" /></td>
        </tr>
      </table>
    </td>
    <td width="366" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="299" background="images/login_6.gif"><img src="images/login1_02.gif" width="366" height="299" /></td>
        </tr>
        <tr>
          <td valign="top" background="images/login_9.gif" style="height: 29px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="color: #ffffff">
              <tr>
                <td width="25%" height="25">&nbsp;登录账号：</td>
                <td width="48%" valign="top" align="left">
                  <label>
                      <asp:TextBox ID="txtUserID" runat="server" Width="119px"></asp:TextBox></label></td>
                  <td rowspan="3">
                      <a href="#"></a>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/login_2.gif" OnClick="ImageButton1_Click1" /><br />
                      <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Reg.gif" OnClick="ImageButton1_Click" CausesValidation="False" />&nbsp;</td>
              </tr>
              <tr>
                <td style="height: 28px">&nbsp;登录密码：</td>
                <td align="left" style="height: 28px">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="117px"></asp:TextBox></td>
              </tr>
              <tr>
                <td style="height: 6px">&nbsp;用户角色：</td>
                <td style="height: 6px" align="left"><a href="#"></a>
                    <asp:DropDownList ID="Ddl_usertype_C" runat="server" Width="123px">
                        <asp:ListItem>管理员</asp:ListItem>
                        <asp:ListItem>教师</asp:ListItem>
                        <asp:ListItem>学生</asp:ListItem>
                    </asp:DropDownList>&nbsp;<a href="#"></a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td background="images/login1_07.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td style="height: 129px">
                    <asp:RequiredFieldValidator ID="fileusename" runat="server" ControlToValidate="txtUserID"
                        ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator><asp:RequiredFieldValidator ID="filepass"
                            runat="server" ControlToValidate="txtPwd" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
    <td width="318" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="299" align="left" background="images/login1_03.gif">&nbsp;</td>
        </tr>
        <tr>
          <td height="351" align="left" background="images/login1_06.gif">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
