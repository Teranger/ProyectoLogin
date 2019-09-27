<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebApplicationLogin.Vistas.Login.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
      <div class="imgcontainer">
        <img src="../../Imagenes/User.png" alt="Img" class="avatar"/>
        <h1> <b><asp:Label ID="Titulo" runat="server" Text="LOGIN"></asp:Label></b></h1>
      </div>

        <div class="container">
         <br/>

        <label for="uname"><b>Usuario</b></label>
         <asp:TextBox class="Nom_User" ID="Nom_User" runat="server"  type="text" placeholder="Usuario" name="uname" ></asp:TextBox>
        

        <label for="psw"><b>Contraseña</b></label>
         <asp:TextBox Class="Contra" ID="Contra" runat="server" type="password" placeholder="Contraseña" name="psw" ></asp:TextBox>
        
        <b><asp:Label  ID="Pass2" runat="server" Text="Confirmar Contraseña"></asp:Label></b>
         <asp:TextBox Class="Contra" ID="Contra2" runat="server" type="password" placeholder="Contraseña" name="psw" ></asp:TextBox>


         <div class="alert alert-danger" id="NoRegistrado" runat="server">
           <strong>Error!</strong> Verifique su usuario y Contraseña.
         </div>
         
            <div class="alert alert-danger" id="Exito" runat="server">
           <strong>Registrado con Exito!</strong> Ingrese de nuevo sus datos para Comenzar.
         </div>
         
         <asp:Button Class="btnAceptar" ID="btnAceptar" runat="server" Text="Aceptar" type="submit" OnClick="btnAceptar_Click" />
       
       
          <span class="psw">¿No estas Registrado? 
             <asp:Button ID="Reg" runat="server" type="submit" class="btnregis" Text="Registrate" OnClick="Reg_Click" />  
          </span>
       
       
     </div>

     <div class="container" style="background-color:#f1f1f1">
         <asp:Button ID="Cancel" runat="server" type="button" class="cancelbtn" Text="Cancelar" OnClick="Cancel_Click" /> 
        
     </div>

    </form>
</body>
</html>
