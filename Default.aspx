<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>AJAX Iframe File Download Sample</title>
  <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
  <div id="container">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
      <Scripts>
        <asp:ScriptReference Path="~/iframe.js" />
      </Scripts>
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
        <asp:DropDownList runat="server" ID="Region">
          <asp:ListItem Value="North">North Region</asp:ListItem>
          <asp:ListItem Value="West">West Region</asp:ListItem>
          <asp:ListItem Value="Southeast">Southeast Region</asp:ListItem>
        </asp:DropDownList>

        <asp:Button runat="server" ID="DownloadFile" Text="Generate File" />
      </ContentTemplate>
    </asp:UpdatePanel>
  </div>
  </form>
</body>
</html>
