<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultForm.aspx.cs" Inherits="LabsTPV2.ResultForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label runat="server">Answer is <% Response.Write(Request.QueryString["result"]); %></asp:Label>
        </div>
    </form>
</body>
</html>
