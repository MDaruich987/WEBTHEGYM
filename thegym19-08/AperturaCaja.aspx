<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AperturaCaja.aspx.cs" Inherits="thegym19_08.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Overline="False" Font-Size="X-Large" Font-Underline="True" ForeColor="#000099" Text="Apertura De Caja"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Text="Usuario:"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="tbusuario" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Text="Sucursal:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbsucursal" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Text="Fecha:"></asp:Label>
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
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Text="Monto de Apertura:"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="tbmonto" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Text="Estado:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbestado" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <br />
                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Text="Numero de Caja: "></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="id_caja" DataValueField="id_caja">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TheGymConnectionString2 %>" SelectCommand="SELECT [id_caja] FROM [Caja]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Names="Arial" Font-Size="Large" OnClick="Button1_Click" Text="Registrar Apertura de Caja" Width="246px" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
