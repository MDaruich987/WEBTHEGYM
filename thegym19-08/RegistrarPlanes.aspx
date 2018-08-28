<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="RegistrarPlanes.aspx.cs" Inherits="thegym19_08.RegistrarPlanes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 154px;
        }
        .auto-style3 {
            width: 162px;
        }
        .auto-style4 {
            width: 178px;
        }
        .auto-style5 {
            width: 1281px;
        }
        .auto-style6 {
            width: 446px;
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
	 	    	<div class="auto-style7"><a href="RegistrarPlanes.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">REGISTRAR <span class="m_1">plan</span></li>
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
				 <div class="auto-style6"><a href="pricing.html">
	 	    		<ul class="spinning">
	 	    			<li class="live">Consultar <span class="m_1">plan</span></li>
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
        <div class="auto-style5" style="margin-left: 62px;">



                 <br />
                 <br />
                 <asp:Panel ID="Panel1" runat="server" BackColor="#AAE3FF" BorderColor="#00BFF0" BorderStyle="Solid" Height="663px">
                     <ul class="spinning">
                         <a href="pricing.html">
                         <li class="live">registrar <span class="m_1">plan</span></li>
                         <li></li>
                         </a>
                     </ul>
                     <table class="nav-justified">
                         <tr>
                             <td>
                                 <asp:Panel ID="panelregistrarplan" runat="server">
                                     <table class="auto-style2">
                                         <tr>
                                             <td class="auto-style31" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                             <td class="auto-style6">
                                                 <asp:ScriptManager ID="smanager1" runat="server">
                                                 </asp:ScriptManager>
                                             </td>
                                         </tr>
                                         <tr>
                                             <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;
                                                 <asp:Label ID="lblnombre0" runat="server" Text="Nombre:"></asp:Label>
                                             </td>
                                             <td class="auto-style4">
                                                 <br />
                                                 <br />
                                                 <asp:TextBox ID="tbnombre" runat="server" Height="22px" TabIndex="1" Width="169px"></asp:TextBox>
                                                 <br />
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbnombre" Display="Dynamic" ErrorMessage="*" OnDataBinding="btnaceptar1_Click"></asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbnombre" ErrorMessage="Ingrese solo letras" OnDataBinding="btnaceptar1_Click" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                                                 <br />
                                                 <br />
                                             </td>
                                             <td colspan="2">
                                                 <br />
                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                 <asp:Label ID="lblduracion" runat="server" Text="Duración:"></asp:Label>
                                             </td>
                                             <td class="auto-style13">
                                                 <br />
                                                 <asp:ListBox ID="ListBox1" runat="server" Height="42px" Width="44px">
                                                     <asp:ListItem>0</asp:ListItem>
                                                     <asp:ListItem>1</asp:ListItem>
                                                     <asp:ListItem>2</asp:ListItem>
                                                     <asp:ListItem>3</asp:ListItem>
                                                     <asp:ListItem>4</asp:ListItem>
                                                     <asp:ListItem>5</asp:ListItem>
                                                     <asp:ListItem>6</asp:ListItem>
                                                     <asp:ListItem>7</asp:ListItem>
                                                     <asp:ListItem>8</asp:ListItem>
                                                     <asp:ListItem>9</asp:ListItem>
                                                     <asp:ListItem>10</asp:ListItem>
                                                     <asp:ListItem>11</asp:ListItem>
                                                     <asp:ListItem>12</asp:ListItem>
                                                 </asp:ListBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ListBox1" Display="Dynamic" ErrorMessage="*" OnDataBinding="btnaceptar1_Click"></asp:RequiredFieldValidator>
                                                 <br />
                                             </td>
                                             <td class="auto-style6">&nbsp;</td>
                                         </tr>
                                         <tr>
                                             <td class="auto-style8">&nbsp;&nbsp;&nbsp;<asp:Label ID="lblfotografia" runat="server" Text="Precio:"></asp:Label>
                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                             <td class="auto-style8" colspan="3">
                                                 <br />
                                                 <asp:TextBox ID="tbprecio" runat="server" Height="22px" TabIndex="1" Width="169px"></asp:TextBox>
                                                 <br />
                                                 <br />
                                             </td>
                                             <td class="auto-style11"></td>
                                             <td class="auto-style12"></td>
                                         </tr>
                                         <tr>
                                             <td class="auto-style31" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lbldatosdelplan0" runat="server" Font-Size="X-Large" Text="Actividades Incluidas:"></asp:Label>
                                             </td>
                                             <td class="auto-style6">&nbsp;</td>
                                         </tr>
                                         <tr>
                                             <td class="auto-style31">&nbsp;&nbsp;&nbsp;
                                                 <asp:Label ID="lblactividad" runat="server" Text="Actividad:"></asp:Label>
                                             </td>
                                             <td class="auto-style4">
                                                 <asp:DropDownList ID="ddlactividad" runat="server" Height="27px" Width="180px">
                                                 </asp:DropDownList>
                                             </td>
                                             <td colspan="2">
                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                 <asp:Label ID="lblfrecuencia" runat="server" Text="Clases semanales:"></asp:Label>
                                             </td>
                                             <td class="auto-style13">
                                                 <asp:ListBox ID="ListBox2" runat="server" Height="44px" Width="43px">
                                                     <asp:ListItem>0</asp:ListItem>
                                                     <asp:ListItem>1</asp:ListItem>
                                                     <asp:ListItem>2</asp:ListItem>
                                                     <asp:ListItem>3</asp:ListItem>
                                                     <asp:ListItem>4</asp:ListItem>
                                                     <asp:ListItem>5</asp:ListItem>
                                                     <asp:ListItem>6</asp:ListItem>
                                                     <asp:ListItem>7</asp:ListItem>
                                                 </asp:ListBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ListBox2" Display="Dynamic" ErrorMessage="*" OnDataBinding="btnaceptar1_Click"></asp:RequiredFieldValidator>
                                             </td>
                                             <td class="auto-style6">&nbsp;</td>
                                         </tr>
                                         <tr>
                                             <td class="auto-style31">&nbsp;</td>
                                             <td class="auto-style4">&nbsp;</td>
                                             <td class="auto-style5">&nbsp;</td>
                                             <td class="auto-style28">&nbsp;</td>
                                             <td class="auto-style13">&nbsp;</td>
                                             <td class="auto-style6">&nbsp;</td>
                                         </tr>
                                         <tr>
                                             <td class="auto-style31">&nbsp;</td>
                                             <td class="auto-style3" colspan="4">
                                                 <asp:GridView ID="gvactividadesincluidasenplan" runat="server" Height="200px" Width="560px">
                                                 </asp:GridView>
                                             </td>
                                             <td class="auto-style6">&nbsp;</td>
                                         </tr>
                                         <tr>
                                             <td class="auto-style31">&nbsp;</td>
                                             <td class="auto-style4">&nbsp;</td>
                                             <td class="auto-style5">&nbsp;</td>
                                             <td class="auto-style28">&nbsp;</td>
                                             <td class="auto-style13">&nbsp;</td>
                                             <td class="auto-style6">&nbsp;</td>
                                         </tr>
                                         <tr>
                                             <td class="auto-style31">&nbsp;</td>
                                             <td class="auto-style3" colspan="3">
                                                 <asp:Label ID="lblmensajeplan" runat="server"></asp:Label>
                                             </td>
                                             <td class="auto-style13">&nbsp;</td>
                                             <td class="auto-style6">&nbsp;</td>
                                         </tr>
                                         <tr>
                                             <td class="auto-style33"></td>
                                             <td class="auto-style4">
                                                 <asp:Button ID="btnaceptar1" runat="server" Height="32px" TabIndex="10" Text="Aceptar" Width="126px" OnClick="btnaceptar1_Click1" />
                                             </td>
                                             <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                                                 <br />
                                             </td>
                                             <td class="auto-style30">&nbsp;</td>
                                             <td class="auto-style13">
                                                 <asp:Button ID="btncancelar0" runat="server" Height="32px" TabIndex="11" Text="Cancelar" Width="126px" />
                                             </td>
                                             <td class="auto-style6"></td>
                                         </tr>
                                     </table>
                                 </asp:Panel>
                             </td>
                         </tr>
                     </table>
                     </a>
                 </asp:Panel>
        </div>
       </div>




</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
		     <a href="#menu" class="class scroll"><a href="#menu" class="class scroll">
    <asp:Label ID="lblmensajebienvenida" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
    </a></a>
</asp:Content>

