<%@ Page Title="" Language="C#" MasterPageFile="~/InicioGerente.Master" AutoEventWireup="true" CodeBehind="RegistrarSucursales.aspx.cs" Inherits="thegym19_08.RegistrarSucursales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

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
	 	    	<div class="auto-style7"><a href="pricing.html">
	 	    		<ul class="spinning">
	 	    			<li class="live">REGISTRAR <span class="m_1">sucursal</span></li>
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
	 	    			<li class="live">Consultar <span class="m_1">sucursal</span></li>
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
                 <asp:Panel ID="Panel1" runat="server" BackColor="#AAE3FF" BorderColor="#00BFF0" BorderStyle="Solid" Height="474px">
                     <ul class="spinning">
                         <a href="pricing.html">
                         <li class="live">registrar <span class="m_1">sucursal</span></li>
                         <li></li>
                         </a>
                     </ul>
                     <asp:ScriptManager ID="ScriptManager1" runat="server">
                     </asp:ScriptManager>
                     <table class="nav-justified">
                         <tr>
                             <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="lblnombre" runat="server" Text="Nombre:"></asp:Label>
                                 <br />
                                 <br />
                             </td>
                             <td colspan="2">
                                 <asp:TextBox ID="tbnombre" runat="server" Height="32px" Width="298px" MaxLength="50"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*" ForeColor="Red" Height="40px" ControlToValidate="tbnombre" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                                 <br />
                                 <br />
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="lbldireccion" runat="server" Text="Dirección:"></asp:Label>
                                 <br />
                                 &nbsp;</td>
                             <td>
                                 <asp:TextBox ID="tbdireccion" runat="server" Height="31px" Width="296px" MaxLength="50"></asp:TextBox>
                                 <br />
                                 <br />
                             </td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="lbldireccion0" runat="server" Text="Teléfono:"></asp:Label>
                                 <br />
                                 <br />
                             </td>
                             <td>
                                 <asp:TextBox ID="tbtelefono" runat="server" Height="35px" Width="297px" MaxLength="10"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*" Height="40px" ForeColor="Red" ControlToValidate="tbtelefono" ValidationExpression="^\+$" ValidationGroup="check"></asp:RegularExpressionValidator>
                                 <br />
                                 <br />
                             </td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="lblimagen" runat="server" Text="Imagen:"></asp:Label>
                                 &nbsp;<br />
                                 <br />
                             </td>
                             <td class="auto-style3">
                                 <asp:FileUpload ID="FileUpload1" runat="server" Height="31px" Width="387px" />
                                 <br />
                             </td>
                             <td class="auto-style3"></td>
                             <td class="auto-style3"></td>
                         </tr>
                         <tr>
                             <td class="auto-style1">&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style1">&nbsp;</td>
                             <td>
                                 <asp:Button ID="btnregistrar" runat="server" Height="29px" Text="Registrar" Width="201px" OnClick="btnregistrar_Click" />
                             </td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                     </table>
                     </a>
                 </asp:Panel>
        </div>
       </div>

    </form>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
                 <p class="auto-style1">
                     <asp:Label ID="lblbienvenida" runat="server" Font-Names="Arial" Font-Size="Larger" ForeColor="White"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="btnlogout" runat="server" Height="30px" OnClick="btnlogout_Click" Text="LOG OUT" Width="81px" />
                     &nbsp;</p>
             </asp:Content>

