<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="ConsultarPlanes.aspx.cs" Inherits="thegym19_08.ConsultarPlanes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 78px;
        }
        .auto-style2 {
            margin-left: 163px;
        }
        .auto-style3 {
            margin-left: 120;
        }
        .auto-style4 {
            height: 78px;
            float: none;
            margin-left: 0px;
        }
        .auto-style5 {
            margin-left: 11px;
        }
        .auto-style6 {
            height: 78px;
            float: none;
            margin-left: 69px;
        }
        .auto-style7 {
            float: none;
            margin-left: 69px;
        }
        .auto-style8 {
            float: none;
            margin-left: 37px;
        }
        .auto-style9 {
            float: none;
            margin-left: 1px;
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
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style5">
	 	    	<div class="auto-style7"><a href="pricing.html">
	 	    		<ul class="spinning">
	 	    			<li class="live">REGISTRAR <span class="m_1">Plan</span></li>
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
				 <div class="auto-style2"><a href="pricing.html">
	 	    		<ul class="spinning">
	 	    			<li class="live">Consultar <span class="m_1">Plan</span></li>
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
<%--contenedor gris--%>
           <div class="main">
        <div class="auto-style3" style="margin-left: 62px;">

                 <br />
                 <br />
                 <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="#00BFF0" BorderStyle="Solid" Height="1154px" CssClass="auto-style5" Width="771px">
                     <ul class="spinning">
                         <a href="pricing.html">
                         <li class="live">consultar <span class="m_1">plan</span></li>
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
                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Label ID="lblbuscar" runat="server" Text="Buscar:"></asp:Label>
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:TextBox ID="tbbuscar" runat="server" Width="363px"></asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             <br />
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnbuscar" runat="server" Height="24px" Text="Buscar" Width="144px" OnClick="btnbuscar_Click" />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td>
                                             <table class="nav-justified">
                                                 <tr>
                                                     <td class="auto-style4">
                                                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style8" Height="235px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                             <Columns>
                                                                 <asp:BoundField DataField="Id_plan" HeaderText="ID" ItemStyle-Width="150px" />
                                                                 <asp:BoundField DataField="Nombre" HeaderText="Nombre" ItemStyle-Width="150px" />
                                                                 <asp:BoundField DataField="Precio" HeaderText="Precio" ItemStyle-Width="150px" />
                                                                 <asp:BoundField DataField="Duracion" HeaderText="Duracion" ItemStyle-Width="150px" />
                                                                 <asp:CommandField ButtonType="Button" ShowSelectButton="True" ItemStyle-Width="150px" />
                                                             </Columns>
                                                             <HeaderStyle BackColor="#AAE3FF" BorderColor="#72D0F4" />
                                                         </asp:GridView>
                                                     </td>
                                                 </tr>
                                             </table>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblerror" runat="server"></asp:Label>
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             <table class="nav-justified">
                                                 <tr>
                                                     <td>
                                                         <ul class="spinning">
                                                             <a href="pricing.html">
                                                             <li class="live">FICHA <span class="m_1">DEL plan</span></li>
                                                             </a>
                                                         </ul>
                                                     </td>
                                                 </tr>
                                                 <tr>
                                                     <td>&nbsp;</td>
                                                 </tr>
                                                 <tr>
                                                     <td>
                                                         <table class="nav-justified">
                                                             <tr>
                                                                 <td class="auto-style9">&nbsp;<asp:Label ID="lblnombre" runat="server" Text="Nombre:"></asp:Label>
                                                                     <br />
                                                                     <br />
                                                                 </td>
                                                                 <td>
                                                                     <asp:TextBox ID="tbnombre" runat="server" CssClass="auto-style9" ReadOnly="True" TabIndex="1" Width="187px"></asp:TextBox>
                                                                     <br />
                                                                     <br />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="lblprecioplan" runat="server" Text="Precio:"></asp:Label>
                                                                     <br />
                                                                     <br />
                                                                 </td>
                                                                 <td>
                                                                     <asp:TextBox ID="tbprecio" runat="server" ReadOnly="True" TabIndex="3" Width="190px"></asp:TextBox>
                                                                     <br />
                                                                     <br />
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="auto-style9">
                                                                     <asp:Label ID="lblduracion" runat="server" Text="Duración"></asp:Label>
                                                                     <br />
                                                                     <br />
                                                                 </td>
                                                                 <td>
                                                                     <asp:TextBox ID="tbduracion" runat="server" ReadOnly="True" TabIndex="2" Width="189px"></asp:TextBox>
                                                                     <br />
                                                                     <br />
                                                                 </td>
                                                                 <td>&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="auto-style9">&nbsp;</td>
                                                                 <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;<asp:Label ID="lblplanes0" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#333333" Text="Actividades Incluidas:"></asp:Label>
                                                                     <br />
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="auto-style9" colspan="4">
                                                                     <table class="nav-justified">
                                                                         <tr>
                                                                             <td>&nbsp;</td>
                                                                             <td>
                                                                                 <asp:GridView ID="gvactividadesplanbusqueda" runat="server" CssClass="auto-style2" Height="235px" Width="400px" AutoGenerateColumns="False" OnSelectedIndexChanged="gvactividadesplanbusqueda_SelectedIndexChanged">
                                                                                     <HeaderStyle BackColor="#72D0F4" />
                                                                                     <Columns>
                                                                                         <asp:BoundField DataField="Id_actividad" HeaderText="ID" ItemStyle-Width="150px" />
                                                                                         <asp:BoundField DataField="Nombre" HeaderText="Actividad" ItemStyle-Width="150px" />
                                                                                         <asp:BoundField DataField="Dias_semanas" HeaderText="Dias a la Semana" ItemStyle-Width="150px" />
                                                                                         <asp:CommandField ButtonType="Button" ShowSelectButton="True" ItemStyle-Width="150px" />
                                                                                     </Columns>
                                                                                 </asp:GridView>
                                                                             </td>
                                                                             <td>&nbsp;</td>
                                                                         </tr>
                                                                     </table>
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="auto-style9">&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="auto-style9">
                                                                     <asp:Label ID="LblActividad" runat="server" Text="Actividad"></asp:Label>
                                                                 </td>
                                                                 <td>
                                                                     <asp:DropDownList ID="ddlactividad" runat="server">
                                                                     </asp:DropDownList>
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="LblDias" runat="server" Text="Dias:"></asp:Label>
                                                                 </td>
                                                                 <td>
                                                                     <asp:DropDownList ID="ddlDias" runat="server">
                                                                        <asp:ListItem>0</asp:ListItem>
                                                                        <asp:ListItem>1</asp:ListItem>
                                                                        <asp:ListItem>2</asp:ListItem>
                                                                        <asp:ListItem>3</asp:ListItem>
                                                                        <asp:ListItem>4</asp:ListItem>
                                                                        <asp:ListItem>5</asp:ListItem>
                                                                        <asp:ListItem>6</asp:ListItem>
                                                                        <asp:ListItem>7</asp:ListItem>
                                                                     </asp:DropDownList>
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="auto-style9">&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="auto-style9">&nbsp;</td>
                                                                 <td colspan="2" style="text-align: right">
                                                                     <asp:Button ID="BtnEditActividad" runat="server" Text="Editar Actividad" OnClick="BtnEditActividad_Click" />
                                                                 </td>
                                                                 <td>&nbsp;</td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="auto-style9">&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                                 <td>&nbsp;</td>
                                                             </tr>
                                                         </table>
                                                     </td>
                                                 </tr>
                                                 <tr>
                                                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         <asp:Button ID="btneditar" runat="server" CssClass="auto-style3" Height="32px" TabIndex="10" Text="Editar" Width="126px" OnClick="btneditar_Click" />
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         <asp:Button ID="btninhabilitar0" runat="server" Height="32px" TabIndex="11" Text="Inhabilitar" Width="126px" />
                                                     </td>
                                                 </tr>
                                             </table>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;</td>
                                     </tr>
                                 </table>
                             </td>
                         </tr>
                     </table>
                     
                 </asp:Panel>
        </div>
       </div>




</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <a href="#menu" class="class scroll">
    <asp:Label ID="lblmensajebienvenida" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
    </a>
</asp:Content>

