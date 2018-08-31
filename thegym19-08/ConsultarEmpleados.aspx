<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="ConsultarEmpleados.aspx.cs" Inherits="thegym19_08.ConsultarEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            float: none;
            width: 477px;
            margin-left: 62px;
        }
        .auto-style5 {
            float: none;
            width: 1060px;
            margin-left: 5px;
        }
        .auto-style6 {
            width: 448px;
        }
        .auto-style7 {
            width: 514px;
        }
        .auto-style9 {
            width: 286px;
        }
        .auto-style10 {
            width: 121%;
            height: 339px;
        }
        .auto-style11 {
            float: none;
            width: 1167px;
            margin-left: 5px;
        }
        .auto-style12 {
            width: 152px;
        }
        .auto-style13 {
            width: 169px;
        }
        .auto-style14 {
            width: 152px;
            height: 28px;
        }
        .auto-style15 {
            width: 286px;
            height: 28px;
        }
        .auto-style16 {
            width: 169px;
            height: 28px;
        }
        .auto-style17 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--<asp:BoundField DataField="Foto" HeaderText="Foto" ItemStyle-Width="150" >
                                                                 <ItemStyle Width="150px" />
                                                                 </asp:BoundField>--%>
<%--<asp:TemplateField>
                                                                     <ItemTemplate>
                                                                         <asp:Button ID="Button1" runat="server"  Text="Seleccionar" OnClick="GridView1_SelectedIndexChanged" />
                                                                        
                                                                     </ItemTemplate>
                                                                 </asp:TemplateField>--%>
    <br />
    <br />
    		    <div class="row content-middle">
		      <!-- start content-middle -->
				<div class="clear">
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style11">
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
                    <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="#00BFF0" BorderStyle="Solid" Height="992px">
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
                                                        <td >
                                                            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="182px" Width="469px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Font-Bold="False" Font-Underline="False">
                                                             <AlternatingRowStyle BackColor="White" Font-Underline="False" ForeColor="#284775" />
                                                             <Columns>
                                                                 
                                                                 <asp:BoundField DataField="Nombre" HeaderText="Nombre" ItemStyle-Width="100"  >
                                                                 <ItemStyle Width="100px" />
                                                                 </asp:BoundField>
                                                                 <asp:BoundField DataField="Apellido" HeaderText="Apellido" ItemStyle-Width="100" >
                                                                 <ItemStyle Width="100px" />
                                                                 </asp:BoundField>
                                                                 <asp:BoundField DataField="DNI" HeaderText="DNI" ItemStyle-Width="100" >
                                                                 <ItemStyle Width="100px" />
                                                                 </asp:BoundField>
                                                                 <asp:BoundField DataField="Fecha_nac" HeaderText="Fecha Nacimiento" ItemStyle-Width="100"  >
                                                                 <ItemStyle Width="100px" />
                                                                 </asp:BoundField>
                                                                 <asp:BoundField DataField="Email" HeaderText="Emai" ItemStyle-Width="100" >
                                                                 <ItemStyle Width="100px" />
                                                                 </asp:BoundField>
                                                                 <asp:BoundField DataField="Telefono" HeaderText="Telefono" ItemStyle-Width="100" >
                                                                 <ItemStyle Width="100px" />
                                                                 </asp:BoundField>
                                                                 <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" ItemStyle-Width="100" ConvertEmptyStringToNull="true" >
                                                                 <ItemStyle Width="100px" />
                                                                 </asp:BoundField>
                                                                 <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto" ItemStyle-Width="150"></asp:ImageField>
                                                                 <%--<asp:BoundField DataField="Fecha_cont" HeaderText="Fecha Contratacion" ItemStyle-Width="100" />--%>
                                                                 <asp:BoundField DataField="Titulo" HeaderText="Titulo" ItemStyle-Width="100" />
                                                                 <asp:BoundField DataField="Experiencia" HeaderText="Experiencia" ItemStyle-Width="100" />
                                                                 <asp:BoundField DataField="Cargo_nom" HeaderText="Cargo" ItemStyle-Width="100" />
                                                                 <%--<asp:BoundField DataField="Foto" HeaderText="Foto" ItemStyle-Width="150" >
                                                                 <ItemStyle Width="150px" />
                                                                 </asp:BoundField>--%>
                                                                 <%--<asp:TemplateField>
                                                                     <ItemTemplate>
                                                                         <asp:Button ID="Button1" runat="server"  Text="Seleccionar" OnClick="GridView1_SelectedIndexChanged" />
                                                                        
                                                                     </ItemTemplate>
                                                                 </asp:TemplateField>--%>
                                                                 <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                                             </Columns>
                                                             <EditRowStyle BackColor="#999999" Font-Underline="true" />
                                                             <EmptyDataRowStyle Font-Underline="False" />
                                                             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Underline="False" />
                                                             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Underline="False" />
                                                             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                             <RowStyle BackColor="#F7F6F3" Font-Underline="False" ForeColor="#333333" />
                                                             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                             <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                             <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                             <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                         </asp:GridView>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="background-color: #72D0F4">
                                                <ul class="spinning">
                                                    <a href="pricing.html">
                                                    <li class="live">FICHA <span class="m_1">DE Empleado</span></li>
                                                    </a>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <br />
                                                <br />
                                                <asp:Label ID="lblerrorbusqueda" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="nav-justified">
                                                    <tr>
                                                        <td class="auto-style12">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="LblNombre" runat="server" Text="Nombre:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style9">
                                                            <asp:TextBox ID="TbNombre" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style13">
                                                            <asp:Label ID="LblApellido" runat="server" Text="Apellido:"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TbApellido" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style12">&nbsp;</td>
                                                        <td class="auto-style9">&nbsp;</td>
                                                        <td class="auto-style13">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style12">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="LblDNI" runat="server" Text="DNI:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style9">
                                                            <asp:TextBox ID="TbDNI" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style13">
                                                            <asp:Label ID="LblFechNac" runat="server" Text="Fecha Nacimiento:"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TbFechaNac" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style12">&nbsp;</td>
                                                        <td class="auto-style9">&nbsp;</td>
                                                        <td class="auto-style13">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style14">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="LblEmail" runat="server" Text="Email:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style15">
                                                            <asp:TextBox ID="TbEmail" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style16">
                                                            <asp:Label ID="LblTelefono" runat="server" Text="Telefono:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style17">
                                                            <asp:TextBox ID="TbTelefono" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style12">&nbsp;</td>
                                                        <td class="auto-style9">&nbsp;</td>
                                                        <td class="auto-style13">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style12">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label1" runat="server" Text="Domicilio:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style9">
                                                            <asp:TextBox ID="TbDomicilio" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style13">
                                                            <asp:Label ID="LblTitulo" runat="server" Text="Titulo:"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TbTitulo" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style12">&nbsp;</td>
                                                        <td class="auto-style9">&nbsp;</td>
                                                        <td class="auto-style13">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style12">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="LblExperiencia" runat="server" Text="Experiencia:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style9">
                                                            <asp:TextBox ID="TbExperiencia" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style13">
                                                            <asp:Label ID="LblCargo" runat="server" Text="Cargo:"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlCargo" runat="server">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style12">&nbsp;</td>
                                                        <td class="auto-style9">&nbsp;</td>
                                                        <td class="auto-style13">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style12">&nbsp;</td>
                                                        <td class="auto-style9">
                                                            <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" />
                                                        </td>
                                                        <td class="auto-style13">
                                                            <asp:Button ID="btnInhabilitar" runat="server" Text="Inhabilitar" />
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
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
