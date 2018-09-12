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
        .auto-style3 {
            width: 295px;
        }
        .auto-style4 {
            width: 295px;
            height: 124px;
        }
        .auto-style5 {
            height: 124px;
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
                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Text="Sucursal:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbsucursal" runat="server" Enabled="False" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Text="Fecha:"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="tbfecha" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Text="Hora:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbhora" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Text="Estado:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbestado" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="4">
                    <asp:Button ID="Button1" runat="server" Font-Names="Arial" Font-Size="Large" Text="Generar Cierre" Width="237px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    <div>
    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <br />
                    <asp:Label ID="lblmonto" runat="server" Font-Names="Arial" Text="Monto de Cierre:" Visible="False"></asp:Label>
                    <br />
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbmonto0" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btcerrar" runat="server" Font-Names="Arial" Font-Size="Large" Text="Cerrar Caja" Width="237px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
