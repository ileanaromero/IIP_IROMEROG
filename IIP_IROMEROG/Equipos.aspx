<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Equipos.aspx.cs" Inherits="IIP_IROMEROG.Equipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class=" CONTANIE TEXT-CENTER">
        <H1> EQUIPOS </H1>

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
