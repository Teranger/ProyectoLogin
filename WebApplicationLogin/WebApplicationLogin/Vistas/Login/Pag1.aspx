<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pag1.aspx.cs" Inherits="WebApplicationLogin.Vistas.Login.Pag1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><b><asp:Label ID="Label1" runat="server" Text="BIENVENIDO!!!!!"></asp:Label></b></h1>
       <h2><b> <asp:Label ID="Nombre" runat="server" Text=""></asp:Label></b></h2>
    </div>
    
        <div>
           
            <asp:Button Class="sal" ID="btnsal" runat="server" Text="Salir" type="submit" OnClick="btnsal_Click" />
       
        </div>

    </form>
</body>
</html>
