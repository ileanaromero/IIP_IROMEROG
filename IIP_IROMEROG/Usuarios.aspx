<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="IIP_IROMEROG.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class=" CONTANIE TEXT-CENTER">
        <H1> USUARIOS </H1>

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
         <asp:Button ID="Button1" runat="server" Text="AGREGAR" />
         <asp:Button ID="Button2" runat="server" Text="MODIFICAR" />
         <asp:Button ID="Button3" runat="server" Text="CONSULTAR" />
         <asp:Button ID="Button4" runat="server" Text="BORRAR" />
</asp:Content>
