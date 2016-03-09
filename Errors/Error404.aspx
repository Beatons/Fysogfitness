<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error404.aspx.cs" Inherits="Errors_Error404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>404 Error</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    
    <link rel="icon" type="image/png"  href="../Pictures/warning.png">

</head>
<body style="background-color:#373737">
    <form id="form1" runat="server">
    

       
<h2 id="text404"><center>404 Error</center></h2>
<p id="centras2">
The page you requested could not be found.
    <br /> 
    Return to home by clicking on logo 
    <br />
    <br />
    <a href="../Home" runat="server">
    <asp:Image ID="Imagination" runat="server" ImageUrl="logoerror.jpg" /></a>
</p>

    
    
    </form>
</body>
</html>
