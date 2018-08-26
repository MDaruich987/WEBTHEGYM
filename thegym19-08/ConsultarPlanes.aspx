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
                 <asp:Panel ID="Panel1" runat="server" BackColor="#AAE3FF" BorderColor="#00BFF0" BorderStyle="Solid" Height="1080px">
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
                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Label ID="lblbuscar" runat="server" Text="Buscar:"></asp:Label>
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:TextBox ID="tbbuscar" runat="server" Width="363px"></asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             <br />
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Button ID="btnbuscar" runat="server" Height="24px" Text="Buscar" Width="144px" OnClick="btnbuscar_Click" />
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
                                                         <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="235px" Width="469px" style="margin-left: 195px">
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
                                                         <asp:TextBox ID="tbnombre" runat="server" CssClass="auto-style8" ReadOnly="True" TabIndex="1" Width="187px"></asp:TextBox>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:Label ID="lblprecioplan" runat="server" Text="Precio:"></asp:Label>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:TextBox ID="tbprecio" runat="server" TabIndex="3" Width="190px" ReadOnly="True"></asp:TextBox>
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
                                                     <td>
                                                         &nbsp;</td>
                                                     <td>
                                                         &nbsp;</td>
                                                 </tr>
                                                 <tr>
                                                     <td class="auto-style9">
                                                         &nbsp;</td>
                                                     <td colspan="3">
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         <asp:Label ID="lblplanes0" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Actividades Incluidas:"></asp:Label>
                                                     </td>
                                                 </tr>
                                                 <tr>
                                                     <td class="auto-style9" colspan="4">
                                                         <table class="nav-justified">
                                                             <tr>
                                                                 <td>&nbsp;</td>
                                                                 <td>
                                                                     <asp:GridView ID="gbactividadesplanbusqueda" runat="server" CssClass="auto-style2" Height="235px" Width="400px">
                                                                     </asp:GridView>
                                                                 </td>
                                                                 <td>&nbsp;</td>
                                                             </tr>
                                                         </table>
                                                     </td>
                                                 </tr>
                                                 <tr>
                                                     <td class="auto-style9">&nbsp;</td>
                                                     <td>
                                                         &nbsp;</td>
                                                     <td>
                                                         &nbsp;</td>
                                                     <td>&nbsp;</td>
                                                 </tr>
                                             </table>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Button ID="btneditar" runat="server" CssClass="auto-style3" Height="32px" TabIndex="10" Text="Editar" Width="126px" />
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Button ID="btninhabilitar0" runat="server" Height="32px" TabIndex="11" Text="Inhabilitar" Width="126px" />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             <table class="nav-justified">
                                                 <tr>
                                                     <td>&nbsp;</td>
                                                     <td>&nbsp;</td>
                                                     <td>&nbsp;</td>
                                                     <td>&nbsp;</td>
                                                 </tr>
                                             </table>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;</td>
                                     </tr>
                                 </table>
                             </td>
                         </tr>
                     </table>
                     </a>
                 </asp:Panel>
        </div>
       </div>




</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <a href="#menu" class="class scroll">
    <asp:Label ID="lblmensajebienvenida" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
    </a>
</asp:Content>

