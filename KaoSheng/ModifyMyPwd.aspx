﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyMyPwd.aspx.cs" Inherits="UserC_ModifyMyPwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>基于网络的BS无纸化考试系统</title>
    <LINK href="Template/Style.css"type=text/css rel=stylesheet><LINK  href="Template/Manage.css" type=text/css rel=stylesheet>
</head>
<body>
    <FORM id=form1   runat=server>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="Images/new_019.jpg" border=0></TD>
    <TD width="100%" background=Images/new_020.jpg height=20></TD>
    <TD width=15><IMG src="Images/new_021.jpg" 
  border=0></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD width=15 background=Images/new_022.jpg style="height: 61px"><IMG 
      src="Images/new_022.jpg" border=0> </TD>
    <TD vAlign=top width="100%" bgColor=#ffffff style="height: 61px">
      <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
        <TR>
          <TD class=manageHead>当前位置：修改登录密码 </TD></TR>
        <TR>
          <TD height=2 align="left">
              <table border="0" cellpadding="2" cellspacing="1" style="width: 100%">
                  <tr>
                      <td align="left" nowrap="nowrap" style="width: 95px">
                          原密码:</td>
                      <td width="35%">
                          &nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                      <td align="left" nowrap="nowrap" width="16%">
                      </td>
                      <td width="34%">
                      </td>
                  </tr>
                  <tr>
                      <td align="left" nowrap="nowrap" style="width: 95px">
                          新密码:</td>
                      <td>
                          <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="138px"></asp:TextBox></td>
                      <td align="left">
                      </td>
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td align="center" colspan="4" nowrap="nowrap" style="height: 31px">
                          &nbsp;<input id="Button1" runat="server" class="button" name="Submit" onserverclick="Button1_ServerClick"
                              style="width: 87px" type="button" value="修改密码" />
                          <asp:Label ID="lbInfo" runat="server"></asp:Label></td>
                  </tr>
              </table>
          </TD></TR></TABLE>
      </TD>
    <TD width=15 background=Images/new_023.jpg style="height: 61px"><IMG 
      src="Images/new_023.jpg" border=0> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="Images/new_024.jpg" border=0></TD>
    <TD align=middle width="100%" background=Images/new_025.jpg 
    height=15></TD>
    <TD style="width: 15px"><IMG src="Images/new_026.jpg" 
  border=0></TD></TR></TBODY></TABLE>
</FORM>
</body>
</html>
