<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="ConsultarEmpleados.aspx.cs" Inherits="thegym19_08.ConsultarEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            float: none;
            width: 377px;
            margin-left: 62px;
        }
        .auto-style3 {
            float: none;
            width: 377px;
            margin-left: 5px;
        }
        .auto-style5 {
            float: none;
            width: 1060px;
            margin-left: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--    </form>--%>

<%--    imagenes botones--%>
    <br />
    <br />
    		    <div class="row content-middle">
		      <!-- start content-middle -->
				<div class="clear">
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style5">
	 	    	<div class="auto-style7"><a href="RegistrarEmpleados.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">REGISTRAR <span class="m_1">Empleados</span></li>
	 	    			<li class="room"></li>
	 	    			<div class="clear"></div>	
	 	    		</ul>
					 <div class="view view-fifth">
				  	   <img src="images/pic3.jpg" class="img-responsive" alt=""/>
					      <div class="mask">
	                       	<div class="info">Registrar</div>
			              </div>
	                  </div>
			     </a></div>
				            </td>
                            <td>
				 <div class="auto-style2"><a href="ConsultarEmpleados.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">Consultar <span class="m_1">Empleados</span></li>
	 	    			<li class="room"></li>
	 	    			<div class="clear"></div>	
	 	    		</ul>
					 <div class="view view-fifth">
				  	   <img src="images/pic2.jpg" class="img-responsive"  alt=""/>
					      <div class="mask">
	                       	<div class="info">Consultar</div>
			              </div>
	                  </div>
			     </a></div>
				            </td>
                        </tr>
                    </table>
                    </div>
		   </div>
    <div class="main">
        <div class="auto-style5" style="margin-left: 62px;">


            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="#00BFF0" BorderStyle="Solid" Height="696px">
                        <ul class="spinning">
                            <a href="pricing.html">
                            <li class="live">consultar <span class="m_1">empleados</span></li>
                            <li></li>
                            </a>
                        </ul>
                        <p>
                            &nbsp;</p>
                        <table class="nav-justified">
                            <tr>
                                <td>
                                    <table class="nav-justified">
                                        <tr>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lblbuscar" runat="server" Text="Buscar:"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="tbbuscar" runat="server" Width="363px"></asp:TextBox>
                                                &nbsp;&nbsp;
                                                <asp:CheckBox ID="CkbDNI" runat="server" Text="DNI" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                             <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnbuscar" runat="server" Height="24px" OnClick="btnbuscar_Click" Text="Buscar" Width="144px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="nav-justified">
                                                    <tr>
                                                        <td>
                                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style3" DataKeyNames="Id_empleado" EmptyDataText="No se encontraron resultados" EnableSortingAndPagingCallbacks="True" Height="235px" OnPageIndexChanged="GridView1_PageIndexChanged" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="5" ShowHeaderWhenEmpty="True" Width="469px" Font-Overline="False" Font-Size="Small" OnRowDeleting="GridView1_RowDeleting">
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="ID">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="Id_empleado" runat="server" BorderStyle="None" Height="20px" ReadOnly="True" Text='<%# Bind("Id_empleado") %>' Width="33px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("Id_empleado") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Nombre">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtnombre" runat="server" Height="22px" Text='<%# Bind("Nombre") %>' Width="79px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Apellido">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtapellido" runat="server" Height="22px" Text='<%# Bind("Apellido") %>' Width="90px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Fecha Nacimiento">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtfechanacimiento" runat="server" Height="23px" Text='<%# Bind("Fecha_nac") %>' TextMode="Date" Width="98px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Fecha_nac") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Email">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtemail" runat="server" Height="22px" Text='<%# Bind("Email") %>' TextMode="Email" Width="92px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Teléfono">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txttelefono" runat="server" Height="22px" Text='<%# Bind("Telefono") %>' TextMode="Number" Width="93px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Domicilio">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtdomicilio" runat="server" Height="22px" Text='<%# Bind("Domicilio") %>' Width="82px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Domicilio") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="DNI">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtDNI" runat="server" Height="22px" Text='<%# Bind("DNI") %>' TextMode="Number" Width="89px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Fecha Contratación">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtfechacontratacion" runat="server" Text='<%# Bind("Fecha_cont") %>' Width="91px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Fecha_cont") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Titulo">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txttitulo" runat="server" Text='<%# Bind("Titulo") %>' Width="114px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Titulo") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Experiencia">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtexperiencia" runat="server" Text='<%# Bind("Experiencia") %>' Width="127px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("Experiencia") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    
                                                                    
                                                                    <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto">
                                                                    </asp:ImageField>
                                                                    
                                                                    
                                                                    <asp:CommandField ButtonType="Button" CancelText="" DeleteText="" HeaderText="Editar" ShowEditButton="True" />
                                                                    <asp:CommandField ButtonType="Button" DeleteText="Inhabilitar" HeaderText="Inhabilitar" ShowDeleteButton="True" />
                                                                </Columns>
                                                                <HeaderStyle BackColor="#AAE3FF" />
                                                            </asp:GridView>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <br />
                                                <asp:Label ID="lblerrorbusqueda" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>


            <br />
            <br />



                 <br />
        </div>
       </div>


<%--    </form>--%>


</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
             <a href="#menu" class="class scroll"><a href="#menu" class="class scroll">
    <asp:Label ID="lblmensajebienvenida" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
    </a></a>
</asp:Content>

