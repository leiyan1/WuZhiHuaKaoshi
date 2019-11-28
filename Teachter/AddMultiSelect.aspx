<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddMultiSelect.aspx.cs" Inherits="AdminC_AddMultiSelect" %>

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
              当前位置：多选题信息管理</TD></TR>
        <TR>
          <TD align="left" style="height: 2px">
              <table align="center" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
                  width: 100%; font-family: Tahoma; border-collapse: collapse">
                  <tr>
                      <td align="center" style="width: 85px; height: 18px;">
                          考试科目：</td>
                      <td style="height: 18px">
                          <asp:DropDownList ID="ddlCourse" runat="server" Font-Size="9pt" Width="268px">
                          </asp:DropDownList></td>
                  </tr>    
                  <tr>
                      <td align="center" style="width: 85px; height: 25px">
                          分数：</td>
                      <td style="height: 25px">
                          <asp:TextBox ID="txtScore" runat="server">5</asp:TextBox></td>
                  </tr>
               
                  <tr>
                      <td align="center" style="width: 85px; height: 104px">
                          题目：</td>
                      <td style="height: 104px">
                          <asp:TextBox ID="txtTitle" runat="server" Height="80px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
                              ErrorMessage="不能为空！"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td align="center" nowrap="nowrap" style="width: 85px">
                          答案A：</td>
                      <td>
                          <asp:TextBox ID="txtAnswerA" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnswerA"
                              ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr style="color: #000000">
                      <td align="center" style="width: 85px">
                          答案B：</td>
                      <td>
                          <asp:TextBox ID="txtAnswerB" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAnswerB"
                              ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td align="center" style="width: 85px">
                          答案C：</td>
                      <td>
                          <asp:TextBox ID="txtAnswerC" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswerC"
                              ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td align="center" style="width: 85px">
                          答案D：</td>
                      <td>
                          <asp:TextBox ID="txtAnswerD" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAnswerD"
                              ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td align="center" style="width: 85px; height: 47px">
                          答案：</td>
                      <td style="height: 47px">
                          <asp:CheckBoxList ID="cblAnswer" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>A</asp:ListItem>
                              <asp:ListItem>B</asp:ListItem>
                              <asp:ListItem>C</asp:ListItem>
                              <asp:ListItem>D</asp:ListItem>
                          </asp:CheckBoxList>
                          &nbsp;&nbsp;
                      </td>
                  </tr>
                  <tr align="center" height="50">
                      <td colspan="2">
                          <asp:Label ID="lblMessage" runat="server" ForeColor="red"></asp:Label><br />
                          <asp:Button ID="Button1" runat="server" Height="22px" OnClick="Button1_Click" Text="修改"
                              Width="56px" />
                          <asp:Button ID="imgBtnSave" runat="server" OnClick="Button2_Click" Text="保存" /></td>
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
