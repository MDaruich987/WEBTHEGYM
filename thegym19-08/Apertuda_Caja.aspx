<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apertuda_Caja.aspx.cs" Inherits="WebApplication3.WebForm1" %>

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
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label1" runat="server" Text="Apertura de Caja" Font-Names="Arial" Font-Size="XX-Large" ForeColor="#336699"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblusuario" runat="server" Text="Usuario:" Font-Names="Arial"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblsucursal" runat="server" Text="Sucursal:" Font-Names="Arial"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Nombre">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TheGymConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Sucursal]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblhora" runat="server" Text="Hora:" Font-Names="Arial"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="tbhora" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblfecha" runat="server" Text="Fecha:" Font-Names="Arial"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbfecha" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Total en caja:" Font-Names="Arial"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Registrar apertura de caja" Width="235px" Font-Names="Arial" Font-Size="Medium" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="4" style="margin-left: 40px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id_pago" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Id_pago" HeaderText="Id_pago" ReadOnly="True" SortExpression="Id_pago" />
                            <asp:BoundField DataField="FK_empleado" HeaderText="FK_empleado" SortExpression="FK_empleado" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                            <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TheGymConnectionString %>" DeleteCommand="DELETE FROM [Pago] WHERE [Id_pago] = @Id_pago" InsertCommand="INSERT INTO [Pago] ([FK_empleado], [Fecha], [Monto]) VALUES (@FK_empleado, @Fecha, @Monto)" ProviderName="<%$ ConnectionStrings:TheGymConnectionString.ProviderName %>" SelectCommand="SELECT [Id_pago], [FK_empleado], [Fecha], [Monto] FROM [Pago]" UpdateCommand="UPDATE [Pago] SET [FK_empleado] = @FK_empleado, [Fecha] = @Fecha, [Monto] = @Monto WHERE [Id_pago] = @Id_pago">
                        <DeleteParameters>
                            <asp:Parameter Name="Id_pago" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="FK_empleado" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="Fecha" />
                            <asp:Parameter Name="Monto" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="FK_empleado" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="Fecha" />
                            <asp:Parameter Name="Monto" Type="Decimal" />
                            <asp:Parameter Name="Id_pago" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>