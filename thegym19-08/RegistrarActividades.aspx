<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="RegistrarActividades.aspx.cs" Inherits="thegym19_08.RegistrarActividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
	 	    	<div class="auto-style7"><a href="RegistrarActividades.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">REGISTRAR <span class="m_1">Actividad</span></li>
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
				 <div class="auto-style2"><a href="ConsultaActividades.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">Consultar <span class="m_1">Actividad</span></li>
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
                         <li class="live">registrar <span class="m_1">actividad</span></li>
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
                                         <td>
                                             &nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Label ID="LblNombre" runat="server" Text="Nombre:"></asp:Label>
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:TextBox ID="TBNombre" runat="server" Width="182px"></asp:TextBox>
                                             <br />
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:Label ID="LblProfesor" runat="server" Text="Profesor:"></asp:Label>
                                             <br />
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:DropDownList ID="ddlprofesor" runat="server" Height="26px" Width="231px">
                                             </asp:DropDownList>
                                             <br />
                                             <br />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Label ID="LblSucursal" runat="server" Text="Sucursal:"></asp:Label>
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:DropDownList ID="DlistSucursal" runat="server" Width="182px" Height="29px">
                                             </asp:DropDownList>
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:Label ID="LblHorario" runat="server" Text="Horario:"></asp:Label>
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:Label ID="LblHorario0" runat="server" Text="De:"></asp:Label>
                                             &nbsp;
                                             <asp:DropDownList ID="DplistInicio" runat="server" Height="29px" Width="77px">
                                             </asp:DropDownList>
                                             &nbsp;
                                             <asp:Label ID="LblHorario1" runat="server" Text="a:"></asp:Label>
                                             &nbsp;
                                             <asp:DropDownList ID="DplistFin" runat="server" Height="24px" Width="77px">
                                             </asp:DropDownList>
                                             <br />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Label ID="LblCupos" runat="server" Text="Cupos:"></asp:Label>
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style2" Height="29px" Width="182px">
                                             </asp:DropDownList>
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:Label ID="LblFoto" runat="server" Text="Foto:"></asp:Label>
                                             <br />
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:FileUpload ID="FileUpFoto" runat="server" Width="236px" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Label ID="LblDescrip0" runat="server" Height="22px" Text="Descripcion:"></asp:Label>
                                             <br />
                                             <br />
                                         </td>
                                         <td>
                                             <asp:TextBox ID="TextBox1" runat="server" Height="43px" TextMode="MultiLine" Width="182px"></asp:TextBox>
                                         </td>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;</td>
                                         <td>
                                             <br />
                                         </td>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;</td>
                                         <td>
                                             <asp:Button ID="BTNRegistrarPP1" runat="server" Text="Registrar" />
                                         </td>
                                         <td>&nbsp;</td>
                                         <td>
                                             <asp:Button ID="BTNCancelarP0" runat="server" Text="Cancelar" />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
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
