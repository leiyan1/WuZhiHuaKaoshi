<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyChapter.aspx.cs" Inherits="AdminC_ModifyChapter" %>

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
              当前位置：修改考试科目信息</TD></TR>
        <TR>
          <TD align="left" style="height: 2px">
              <table align="center" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
                  width: 100%; font-family: Tahoma; border-collapse: collapse">
                  <tr>
                      <td align="right" style="width: 97px; height: 25px">
                          考试科目名称</td>
                      <td style="height: 25px">
                          <div align="left">
                              <asp:TextBox ID="txtUserName" runat="server" MaxLength="20"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserName"
                                  ErrorMessage="不能为空！"></asp:RequiredFieldValidator></div>
                      </td>
                  </tr>
                  <tr style="color: #000000">
                      <td align="right" style="width: 97px; height: 84px">
                          考试科目描述：</td>
                      <td style="height: 84px">
                          <asp:TextBox ID="txtUserPwd" runat="server" Height="94px" MaxLength="20" TextMode="MultiLine"
                              Width="445px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserPwd"
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
