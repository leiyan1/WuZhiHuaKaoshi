<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowPage.aspx.cs" Inherits="AdminC_ShowPage" %>

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
              当前位置：试卷信息</TD></TR>
        <TR>
          <TD align="left" style="height: 2px">
              <table border="0" cellpadding="2" cellspacing="1" style="width: 100%">
                  <tr>
                      <td align="center" colspan="4" nowrap="nowrap" style="height: 28px">
                          <asp:Label ID="lblPaperName" runat="server"></asp:Label>
                          &nbsp;&nbsp;
                      </td>
                  </tr>
                  <tr>
                      <td align="left" colspan="4" nowrap="nowrap" style="height: 28px">
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                              ForeColor="#333333" GridLines="None" Width="100%">
                              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                              <Columns>
                                  <asp:TemplateField>
                                      <HeaderTemplate>
                                          <asp:Label ID="Label24" runat="server" Text="一、单选题">
                                            </asp:Label>
                                      </HeaderTemplate>
                                      <ItemTemplate>
                                          <table id="Table2" align="center" border="0" cellpadding="1" cellspacing="1" style="width: 101%">
                                              <tr>
                                                  <td colspan="3">
                                                      <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex+1 %>'>
									                </asp:Label>
                                                      <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title","、{0}") %>'>
									                </asp:Label>
                                                      <asp:Label ID="Label3" runat="server" Text='<%# Eval("Answer") %>' Visible="False">
									                </asp:Label>
                                                      <asp:Label ID="Label4" runat="server" Text='<%# Eval("Mark") %>' Visible="false">
									                </asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td width="35%">
                                                      <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Sl" Text='<%# Eval("AnswerA") %>' /></td>
                                                  <td width="35%">
                                                      <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sl" Text='<%# Eval("AnswerB") %>' /></td>
                                                  <td style="width: 50px">
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td width="35%">
                                                      <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Sl" Text='<%# Eval("AnswerC") %>' /></td>
                                                  <td width="35%">
                                                      <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Sl" Text='<%# Eval("AnswerD") %>' /></td>
                                                  <td style="width: 50px">
                                                  </td>
                                              </tr>
                                          </table>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="12pt" ForeColor="White"
                                  HorizontalAlign="Left" />
                              <EditRowStyle BackColor="#999999" />
                              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          </asp:GridView>
                          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4"
                              ForeColor="#333333" GridLines="None" Width="100%">
                              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                              <Columns>
                                  <asp:TemplateField>
                                      <HeaderTemplate>
                                          <asp:Label ID="Label22" runat="server" Text="二、多选题">
									                </asp:Label>
                                      </HeaderTemplate>
                                      <ItemTemplate>
                                          <table id="Table3" align="center" border="0" cellpadding="1" cellspacing="1" width="100%">
                                              <tr>
                                                  <td colspan="3">
                                                      <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItemIndex+1 %>'>
									                </asp:Label>
                                                      <asp:Label ID="Label6" runat="server" Text='<%# Eval("Title","、{0}") %>'>
									                </asp:Label>
                                                      <asp:Label ID="Label7" runat="server" Text='<%# Eval("Answer") %>' Visible="False">
									                </asp:Label>
                                                      <asp:Label ID="Label8" runat="server" Text='<%# Eval("Mark") %>'>
									                </asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td style="height: 22px" width="35%">
                                                      <asp:CheckBox ID="CheckBox1" runat="server" Text='<%# Eval("AnswerA") %>' /></td>
                                                  <td style="height: 22px" width="35%">
                                                      <asp:CheckBox ID="CheckBox2" runat="server" Text='<%# Eval("AnswerB") %>' /></td>
                                                  <td style="height: 22px">
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td width="35%">
                                                      <asp:CheckBox ID="CheckBox3" runat="server" Text='<%# Eval("AnswerC") %>' /></td>
                                                  <td width="350%">
                                                      <asp:CheckBox ID="CheckBox4" runat="server" Text='<%# Eval("AnswerD") %>' /></td>
                                                  <td>
                                                  </td>
                                              </tr>
                                          </table>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="12pt" ForeColor="White"
                                  HorizontalAlign="Left" />
                              <EditRowStyle BackColor="#999999" />
                              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          </asp:GridView>
                          <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4"
                              ForeColor="#333333" GridLines="None" Width="100%">
                              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                              <Columns>
                                  <asp:TemplateField HeaderText="三、判断题">
                                      <ItemTemplate>
                                          <table id="Table3" align="center" border="0" cellpadding="1" cellspacing="1" width="100%">
                                              <tr>
                                                  <td colspan="3">
                                                      <asp:Label ID="Label10" runat="server" Text='<%# Eval("Title","{0}") %>'>
													                </asp:Label>
                                                      <asp:Label ID="Label66" runat="server" Text='<%# Eval("ID") %>' Visible="False">
													                </asp:Label>
                                                      本题分数：
                                                      <asp:Label ID="Label44" runat="server" Text='<%# Eval("Mark") %>'>
													                </asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td width="35%">
                                                      <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Sl" Text="正确" /></td>
                                                  <td width="35%">
                                                      <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sl" Text="错误" /></td>
                                                  <td>
                                                  </td>
                                              </tr>
                                          </table>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="12pt" ForeColor="White"
                                  HorizontalAlign="Left" />
                              <EditRowStyle BackColor="#999999" />
                              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          </asp:GridView>
                          <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4"
                              ForeColor="#333333" GridLines="None" PageSize="2" Width="100%">
                              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                              <Columns>
                                  <asp:TemplateField>
                                      <HeaderTemplate>
                                          <asp:Label ID="Label20" runat="server" Text="四、填空题">
									                </asp:Label>
                                      </HeaderTemplate>
                                      <ItemTemplate>
                                          <table id="Table4" align="center" border="0" cellpadding="1" cellspacing="1" width="100%">
                                              <tr>
                                                  <td width="85%">
                                                      <asp:Label ID="Label150" runat="server" Text='<%# Eval("ID") %>' Visible="false">
									                </asp:Label>
                                                      <asp:Label ID="Label9" runat="server" Text='<%# Container.DataItemIndex+1 %>'>
									                </asp:Label>
                                                      <asp:Label ID="Label10" runat="server" Text='<%# Eval("Title","、{0}") %>'>
									                </asp:Label>
                                                      <asp:Label ID="Label11" runat="server" Text='<%# Eval("Answer") %>' Visible="False">
									                </asp:Label>
                                                      <asp:Label ID="Label12" runat="server" Text='<%# Eval("Mark") %>'>
									                </asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td width="35%">
                                                      <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="100%"></asp:TextBox></td>
                                              </tr>
                                          </table>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="12pt" ForeColor="White"
                                  HorizontalAlign="Left" />
                              <EditRowStyle BackColor="#999999" />
                              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          </asp:GridView>
                          &nbsp;
                      </td>
                  </tr>
                  <tr>
                      <td align="center" colspan="4" nowrap="nowrap" style="height: 28px">
                      </td>
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
