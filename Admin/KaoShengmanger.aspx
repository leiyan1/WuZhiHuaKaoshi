﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KaoShengmanger.aspx.cs" Inherits="AdminC_KaoShengmanger" %>

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
          <TD class=manageHead>
              当前位置：学生信息管理</TD></TR>
        <TR>
          <TD align="left">
              <asp:GridView ID="GvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                  BackColor="White" CellPadding="5" DataKeyNames="UserID" OnPageIndexChanging="GvInfo_PageIndexChanging"
                  OnRowDataBound="GvInfo_RowDataBound" OnRowDeleting="GvInfo_RowDeleting" Width="100%">
                  <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                      NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                  <RowStyle HorizontalAlign="Left" />
                  <Columns>
                      <asp:TemplateField HeaderText="姓名">
                          <ItemTemplate>
                              <asp:Label ID="UserName" runat="server" Text='<%# Bind("UserName") %>' Width="69px"></asp:Label>
                          </ItemTemplate>
                          <ItemStyle HorizontalAlign="Left" Width="80px" />
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="密码">
                          <ItemTemplate>
                              <asp:Label ID="UserPwd" runat="server" Text='<%# Bind("UserPwd") %>' Width="84px"></asp:Label>
                          </ItemTemplate>
                          <ItemStyle HorizontalAlign="Left" Width="80px" />
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="学生号">
                          <ItemTemplate>
                              <asp:Label ID="UserNubmer" runat="server" Text='<%# Bind("UserNubmer") %>' Width="107px"></asp:Label>
                          </ItemTemplate>
                          <ItemStyle HorizontalAlign="Left" Width="80px" />
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="电子邮件">
                          <ItemTemplate>
                              <asp:Label ID="Emal" runat="server" Text='<%# Bind("Emal") %>' Width="125px"></asp:Label>
                          </ItemTemplate>
                          <ItemStyle HorizontalAlign="Left" Width="80px" />
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="所在班级">
                          <ItemTemplate>
                              <asp:Label ID="XiName" runat="server" Text='<%# Bind("XiName") %>' Width="125px"></asp:Label>
                          </ItemTemplate>
                          <ItemStyle HorizontalAlign="Left" Width="80px" />
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="所在部门">
                          <ItemTemplate>
                              <asp:Label ID="BuMen" runat="server" Text='<%# Bind("BuMen") %>' Width="125px"></asp:Label>
                          </ItemTemplate>
                          <ItemStyle HorizontalAlign="Left" Width="80px" />
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="联系电话">
                          <ItemTemplate>
                              <asp:Label ID="dianhua" runat="server" Text='<%# Bind("dianhua") %>' Width="125px"></asp:Label>
                          </ItemTemplate>
                          <ItemStyle HorizontalAlign="Left" Width="80px" />
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="查看">
                          <ItemTemplate>
                              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ModifyKaoSheng.aspx?id="+Eval("UserID") %>'
                                  Text="查看" Width="75px"></asp:HyperLink>
                          </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" Width="30px" />
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="删除" ShowHeader="False">
                          <ItemTemplate>
                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                  Text="删除" Width="46px"></asp:LinkButton>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
                  <PagerTemplate>
                      <table border="0" width="100%">
                          <tr>
                              <td>
                                  <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                      Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                  <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                      CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                  <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                      Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                  <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                      Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                              共
                                  <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                              第
                                  <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                              </td>
                              <td align="right" width="20%">
                              </td>
                          </tr>
                      </table>
                  </PagerTemplate>
                  <HeaderStyle BackColor="#F6F6F6" />
              </asp:GridView>
              <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></TD></TR></TABLE>
      </TD>
    <TD width=15 background=Images/new_023.jpg style="height: 61px"><IMG 
      src="Images/new_023.jpg" border=0> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD width=15 style="height: 15px"><IMG src="Images/new_024.jpg" border=0></TD>
    <TD align=middle width="100%" background=Images/new_025.jpg style="height: 15px"></TD>
    <TD width=15 style="height: 15px"><IMG src="Images/new_026.jpg" 
  border=0></TD></TR></TBODY></TABLE>
</FORM>
</body>
</html>
