<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="ConsultaActividades.aspx.cs" Inherits="thegym19_08.ConsultaActividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 103%;
            height: 606px;
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
                                <asp:Button ID="btnregistrar" runat="server" BackColor="#00BFF0" BorderStyle="None" Height="28px" OnClick="btnregistrar_Click" Text="Registrar" />
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
            <br />
                 <asp:Panel ID="Panel1" runat="server" BackColor="#AAE3FF" BorderColor="#00BFF0" BorderStyle="Solid" Height="1021px">

                     <p>
                         &nbsp;</p>
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
                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Label ID="lblbuscar" runat="server" Text="Buscar:"></asp:Label>
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:TextBox ID="tbbuscar" runat="server" Width="363px"></asp:TextBox>
                                             <asp:Label ID="LblError" runat="server" Font-Bold="True" ForeColor="Red" Height="30px" Text="Ingrese el nombre de una actividad" Visible="False"></asp:Label>
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
                                                         <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="235px" Width="600px" style="margin-left: 196px" AutoGenerateEditButton="True">
                                                             <EditRowStyle Width="150px" />
                                                             <RowStyle Width="150px" />
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
                                         <td>&nbsp;</td>
                                     </tr>
                                 </table>
                             </td>
                         </tr>
                     </table>
                 </asp:Panel>



                 
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <a href="#menu" class="class scroll">
    <asp:Label ID="lblmensajebienvenida" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
    </a>
</asp:Content>

