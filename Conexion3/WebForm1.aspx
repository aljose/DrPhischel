<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Conexion3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        DrPhischel Bienvenido<br />
        <br />
        <asp:Label ID="lblerror" runat="server"></asp:Label>
    
        <br />
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
    
    </div>
        <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" Height="29px" />
        &nbsp;<asp:Button ID="Button2" runat="server" Text="Registrarse" />
        </p>
    </form>
</body>
</html>
