<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="ConsultaActividades.aspx.cs" Inherits="thegym19_08.ConsultaActividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 95%;
            height: 606px;
        }
        .auto-style4 {
            margin-left: 159px;
        }
        .auto-style5 {
            margin-left: 67px;
        }
        .auto-style6 {
            margin-left: 39px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    imagenes botones--%>
    <br />
    <br />
    		    <div class="row content-middle">
		      <!-- start content-middle -->
				<div class="clear">
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style5">
	 	    	<div class="auto-style7"><a href="RegistrarActividades.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">REGISTRAR <span class="m_1">actividades</span></li>
	 	    			<li class="room"></li>
	 	    			<div class="clear"></div>	
	 	    		</ul>
					 <div class="view view-fifth">
				  	   <img src="images/pic3.jpg" class="img-responsive" alt=""/>
					      <div class="mask">
	                       	<div class="info">
                                <asp:Button ID="btnregistrar" runat="server" BackColor="#00BFF0" BorderStyle="None" Height="28px" Text="Registrar" />
                              </div>
			              </div>
	                  </div>
			     </a></div>
				            </td>
                            <td>
				 <div class="auto-style2"><a href="ConsultaActividades.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">Consultar <span class="m_1">actividades</span></li>
	 	    			<li class="room"></li>
	 	    			<div class="clear"></div>	
	 	    		</ul>
					 <div class="view view-fifth">
				  	   <img src="images/pic2.jpg" class="img-responsive"  alt=""/>
					      <div class="mask">
	                       	<div class="info"><a href="RegistrarActividades.aspx">
	 	    		            <asp:Button ID="btnconsultar" runat="server" BackColor="#00BFF0" BorderStyle="None" ForeColor="White" Height="28px" Text="Consultar" />
			     </a></div>
			              </div>
	                  </div>
			     </a></div>
				            </td>
                        </tr>
                    </table>
                    </div>
		   </div>
    <div class="main">
        <div class="auto-style3" style="margin-left: 62px;">


            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server" BackColor="#F8F8F8" BorderColor="#00BFF0" BorderStyle="Solid" Height="531px">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <table class="nav-justified">
                            <tr>
                                <td>
                                    <table class="nav-justified">
                                        <tr>
                                            <td>
                                                <ul class="spinning">
                                                    <a href="pricing.html">
                                                    <li class="live">consultar <span class="m_1">actividades</span></li>
                                                    <li></li>
                                                    </a>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lblbuscar" runat="server" Text="Buscar:"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="tbbuscar" runat="server" Width="363px"></asp:TextBox>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lblerrorbusqueda" runat="server"></asp:Label>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                             <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnbuscaractividad" runat="server" Height="24px" OnClick="btnbuscaractividad_Click" Text="Buscar" Width="144px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="nav-justified">
                                                    <tr>
                                                        <td class="auto-style4">&nbsp;</td>
                                                        <td>
                                                            <asp:GridView ID="gvactividad" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style6" Height="211px" OnPageIndexChanged="gvactividad_PageIndexChanged" OnRowCancelingEdit="gvactividad_RowCancelingEdit" OnRowEditing="gvactividad_RowEditing" OnRowUpdating="gvactividad_RowUpdating" PageSize="4" Width="617px" DataKeyNames="Id_actividad" Font-Names="bizagi-font" Font-Overline="False" OnRowCommand="gvactividad_RowCommand">
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="ID">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtid" runat="server" BorderStyle="None" Height="23px" ReadOnly="True" Text='<%# Bind("Id_actividad") %>' Width="36px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id_actividad") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Nombre">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtnombre" runat="server" Height="20px" Text='<%# Bind("nombre_actividad") %>' Width="80px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre_actividad") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Descripción">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtdescrip" runat="server" Height="21px" Text='<%# Bind("descripcion_actividad") %>' Width="64px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("descripcion_actividad") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Profesor">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtprofesor" runat="server" Height="20px" ReadOnly="True" Text='<%# Bind("nombre_empleado") %>' Width="102px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("nombre_empleado") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Sucursal">
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtsucursal" runat="server" Height="21px" ReadOnly="True" Text='<%# Bind("nombre_sucursal") %>' Width="90px"></asp:TextBox>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("nombre_sucursal") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                                                                    <asp:CommandField ButtonType="Button" DeleteText="Inhabilitar" ShowDeleteButton="True" />
                                                                </Columns>
                                                                <HeaderStyle BackColor="#72D0F4" BorderStyle="None" />
                                                            </asp:GridView>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblmensajerror" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>




                 
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <a href="#menu" class="class scroll">
    <asp:Label ID="lblmensajebienvenida" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
    </a>
</asp:Content>

