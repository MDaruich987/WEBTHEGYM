<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CierreCaja.aspx.cs" Inherits="thegym19_08.CierreCaja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label9" runat="server" Font-Names="Arial" Font-Size="X-Large" Font-Underline="True" Text="Cierre de Caja"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Text="Usuario:"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="tbusuario" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Text="Caja:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Text="Fecha:"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="tbfecha" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Text="Hora:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbhora" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Text="Monto de Cierre:"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="tbmonto" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Text="Estado:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbestado" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Text="Sucursal:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbsucursal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="4">
                    <asp:Button ID="Button1" runat="server" Font-Names="Arial" Font-Size="Large" Text="Registrar Cierre de Caja" Width="328px" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
