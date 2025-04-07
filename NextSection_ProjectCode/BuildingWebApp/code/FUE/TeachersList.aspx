<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TeachersList.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Teacher_SSN" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Teacher_SSN" HeaderText="Teacher_SSN" ReadOnly="True" SortExpression="Teacher_SSN" />
        <asp:BoundField DataField="Teacher_Fname" HeaderText="Teacher_Fname" SortExpression="Teacher_Fname" />
        <asp:BoundField DataField="Teacher_Lname" HeaderText="Teacher_Lname" SortExpression="Teacher_Lname" />
        <asp:BoundField DataField="Teacher_sex" HeaderText="Teacher_sex" SortExpression="Teacher_sex" />
        <asp:BoundField DataField="Teacher_SALARY" HeaderText="Teacher_SALARY" SortExpression="Teacher_SALARY" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Teacher]"></asp:SqlDataSource>
</asp:Content>

