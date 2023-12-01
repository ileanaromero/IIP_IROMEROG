<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="tecnicos.aspx.cs" Inherits="IIP_IROMEROG.tecnicos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" CONTANIE TEXT-CENTER">
        <H1> TECNICOS </H1>

         <div>
        <br />
        <br />
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" />

        <br />
        <br />
        <br />

    </div>
</asp:Content>
