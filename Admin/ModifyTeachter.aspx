﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyTeachter.aspx.cs" Inherits="AdminC_ModifyTeachter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>基于网络的BS无纸化考试系统的出题模块</title>
      <LINK href="Template/Style.css"type=text/css rel=stylesheet><LINK  href="Template/Manage.css" type=text/css rel=stylesheet>
</head>
<body>
    <FORM id=form1   runat=server>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="Images/new_019.jpg" border=0></TD>
    <TD width="100%" background=Images/new_020.jpg height=20></TD>
    <TD style="width: 15px"><IMG src="Images/new_021.jpg" 
  border=0></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD width=15 background=Images/new_022.jpg style="height: 61px"><IMG 
      src="Images/new_022.jpg" border=0> </TD>
    <TD vAlign=top width="100%" bgColor=#ffffff style="height: 61px">
      <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
        <TR>
          <TD class=manageHead>
              当前位置：修改教师信息</TD></TR>
        <TR>
          <TD align="left" style="height: 2px">
              <table align="center" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
                  width: 100%; font-family: Tahoma; border-collapse: collapse">
                  <tr>
                      <td align="right" style="width: 97px; height: 25px">
                          姓名：</td>
                      <td style="height: 25px">
                          <div align="left">
                              <asp:TextBox ID="txtUserName" runat="server" MaxLength="20"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserName"
                                  ErrorMessage="不能为空！"></asp:RequiredFieldValidator></div>
                      </td>
                  </tr>
                  <tr style="color: #000000">
                      <td align="right" style="width: 97px; height: 34px">
                                密码：</td>
                      <td style="height: 34px">
                          <asp:TextBox ID="txtUserPwd" runat="server" MaxLength="20"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserPwd"
                              ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr style="color: #000000">
                      <td align="right" style="width: 97px; height: 31px">
                          电子邮件：</td>
                      <td style="height: 31px">
                          <asp:TextBox ID="txtEmal" runat="server"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmal"
                              ErrorMessage="格式错误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                  </tr>
                  <tr>
                      <td align="right" style="width: 97px">
                          工号：</td>
                      <td>
                          <asp:TextBox ID="txtNumber" runat="server" MaxLength="20" Width="134px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNumber"
                              ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr align="center" height="55">
                      <td colspan="2">
                          <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
                          <asp:Button ID="Button2" runat="server" class="button" OnClick="Button2_Click" Text="修改" /></td>
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
    <TD width=15><IMG src="Images/new_026.jpg" 
  border=0></TD></TR></TBODY></TABLE>
</FORM>
</body>
</html>
