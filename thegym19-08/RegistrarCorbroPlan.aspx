<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarCorbroPlan.aspx.cs" Inherits="thegym19_08.RegistrarCorbroPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            border-collapse: collapse;
            border: 5px solid #000000;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 519px;
        }
        .auto-style5 {
            width: 519px;
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 519px;
            height: 21px;
        }
        .auto-style8 {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="BtnConsultar" runat="server" Text="Consultar" />
                </td>
            </tr>
        </table>

    </div>
    <div class="auto-style1">
    
        <table align="center" class="auto-style2">
            <tr>
                <td colspan="2">
                    <asp:Label ID="LblTitulo" runat="server" Font-Size="XX-Large" Text="Registro de Cobro de Plan"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;
                    <asp:Label ID="LblBuscar" runat="server" Height="25px" Text="Buscar Cliente:  "></asp:Label>
                    <asp:TextBox ID="TxBuscar" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style6">&nbsp;<asp:CheckBox ID="CkbDNI" runat="server" Height="25px" Text="DNI" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnBuscar" runat="server" Font-Bold="False" OnClick="BtnBuscar_Click" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Id_cliente" HeaderText="ID" ItemStyle-Width="150px" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" ItemStyle-Width="150px"/>
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" ItemStyle-Width="150px"/>
                            <asp:BoundField DataField="DNI" HeaderText="DNI" ItemStyle-Width="150px" />
                            <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto" ItemStyle-Width="150"></asp:ImageField>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="LblDatos" runat="server" Font-Size="X-Large" Text="Datos de Cobro" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LblCliente" runat="server" Height="25px" Text="Cliente:" Visible="False"></asp:Label>
                    <asp:TextBox ID="TxCliente" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="LblFecha" runat="server" Height="25px" Text="Fecha:" Visible="False"></asp:Label>
                    <asp:TextBox ID="TxFecha" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LblPlan" runat="server" Height="25px" Text="Plan:" Visible="False"></asp:Label>
                    <asp:DropDownList ID="DdlPlan" runat="server" AutoPostBack="true" OnTextChanged="DdlPlan_TextChanged" Visible="False">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;
                    <asp:Label ID="LblTotal" runat="server" Height="25px" Text="Total:   " Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="TxTotal" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LblMedioPago" runat="server" Height="25px" Text="Medio de Pago:" Visible="False"></asp:Label>
                    <asp:DropDownList ID="DdlMedioPago" runat="server" OnSelectedIndexChanged="DdlMedioPago_SelectedIndexChanged" Visible="False" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="LblComprobante" runat="server" Text="Nro Comprobante:" Visible="False"></asp:Label>
                    <asp:TextBox ID="TxbComprobante" runat="server" Visible="False" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="BtnAceptar" runat="server" Text="Aceptar" OnClick="BtnAceptar_Click" />
                </td>
                <td>
                    <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
