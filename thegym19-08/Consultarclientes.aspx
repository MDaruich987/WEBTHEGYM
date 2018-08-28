<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="Consultarclientes.aspx.cs" Inherits="thegym19_08.Consultarclientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 407px;
            height: 276px;
        }
        .auto-style3 {
            height: 1119px;
        }
        .auto-style4 {
            width: 152px;
        }
        .auto-style5 {
            width: 434px;
        }
        .auto-style6 {
            width: 301px;
        }
        .auto-style7 {
            width: 417px;
            height: 283px;
            margin-bottom: 0px;
        }
        .auto-style8 {
            margin-left: 27;
        }
        .auto-style9 {
            width: 139px;
        }
        .auto-style10 {
            margin-bottom: 6;
        }
        .auto-style11 {
            width: 645px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--contenedor gris--%>
    <br />
    <br />
    		    <div class="row content-middle">
		      <!-- start content-middle -->
				<div class="clear">
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style5">
	 	    	<div class="auto-style7"><a href="Registrarclientes.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">REGISTRAR <span class="m_1">cliente</span></li>
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
				 <div class="auto-style2"><a href="Consultarclientes.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">Consultar <span class="m_1">Cliente</span></li>
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
                 <asp:Panel ID="Panel1" runat="server" BackColor="#AAE3FF" BorderColor="#00BFF0" BorderStyle="Solid" Height="1021px">
                     <ul class="spinning">
                         <a href="pricing.html">
                         <li class="live">consultar <span class="m_1">cliente</span></li>
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
                                         <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Label ID="lblbuscar" runat="server" Text="Buscar:"></asp:Label>
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:TextBox ID="tbbuscar" runat="server" Width="363px"></asp:TextBox>
                                         </td>
                                         <td>
                                             <asp:CheckBox ID="CkbDNI" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Gray" Text="DNI" />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">
                                             <br />
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Button ID="btnbuscar" runat="server" Height="24px" Text="Buscar" Width="144px" OnClick="btnbuscar_Click" />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">
                                             <table class="nav-justified">
                                                 <tr>
                                                     <td class="auto-style4">&nbsp;</td>
                                                     <td>
                                                         <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="235px" Width="469px">
                                                         </asp:GridView>
                                                     </td>
                                                     <td>&nbsp;</td>
                                                 </tr>
                                             </table>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">
                                             <ul class="spinning">
                                                 <a href="pricing.html">
                                                 <li class="live">FICHA <span class="m_1">DEL CLIENTE</span></li>
                                                 </a>
                                             </ul>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">
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
                                                         <asp:Label ID="lblapellido" runat="server" Text="Apellido:"></asp:Label>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:TextBox ID="tbapellido" runat="server" TabIndex="2" Width="173px"></asp:TextBox>
                                                         <br />
                                                         <br />
                                                     </td>
                                                 </tr>
                                                 <tr>
                                                     <td class="auto-style9">
                                                         <asp:Label ID="lbldni" runat="server" Text="DNI:"></asp:Label>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:TextBox ID="tbdni" runat="server" CssClass="auto-style10" ReadOnly="True" TabIndex="3" Width="190px"></asp:TextBox>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:Label ID="lblfechanacimiento" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:TextBox ID="tbfechanacimiento" runat="server" TabIndex="4" Width="173px"></asp:TextBox>
                                                         <br />
                                                         <br />
                                                     </td>
                                                 </tr>
                                                 <tr>
                                                     <td class="auto-style9">
                                                         <asp:Label ID="lbldomicilio" runat="server" Text="Domicilio:"></asp:Label>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:TextBox ID="tbdomicilio" runat="server" ReadOnly="True" TabIndex="5" Width="192px"></asp:TextBox>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:Label ID="lbltelefono" runat="server" Text="Teléfono:"></asp:Label>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:TextBox ID="tbtelefono" runat="server" ReadOnly="True" TabIndex="6" Width="173px"></asp:TextBox>
                                                         <br />
                                                         <br />
                                                     </td>
                                                 </tr>
                                                 <tr>
                                                     <td class="auto-style9">
                                                         <asp:Label ID="lblemail" runat="server" Text="E-mail:"></asp:Label>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:TextBox ID="tbemail" runat="server" ReadOnly="True" TabIndex="7" Width="192px"></asp:TextBox>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:Label ID="lblfotografia" runat="server" Text="Fotografía:"></asp:Label>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td rowspan="3">
                                                         <asp:Image ID="imgfotografia" runat="server" Height="118px" Width="171px" />
                                                     </td>
                                                 </tr>
                                                 <tr>
                                                     <td class="auto-style9">
                                                         <asp:Label ID="lblplancontratado" runat="server" Text="Plan:"></asp:Label>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>
                                                         <asp:TextBox ID="tbplancontratado" runat="server" ReadOnly="True" TabIndex="7" Width="192px"></asp:TextBox>
                                                         <br />
                                                         <br />
                                                     </td>
                                                     <td>&nbsp;</td>
                                                 </tr>
                                                 <tr>
                                                     <td class="auto-style9">&nbsp;</td>
                                                     <td>&nbsp;</td>
                                                     <td>&nbsp;</td>
                                                 </tr>
                                                 <tr>
                                                     <td class="auto-style9">&nbsp;</td>
                                                     <td>
                                                         <asp:Button ID="btneditar" runat="server" Height="32px" TabIndex="10" Text="Editar" Width="126px" />
                                                     </td>
                                                     <td>
                                                         <asp:Button ID="btninhabilitar" runat="server" Height="32px" TabIndex="11" Text="Inhabilitar" Width="126px" />
                                                     </td>
                                                     <td>&nbsp;</td>
                                                 </tr>
                                             </table>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">&nbsp;</td>
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

