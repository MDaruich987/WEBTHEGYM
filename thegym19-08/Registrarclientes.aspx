﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="Registrarclientes.aspx.cs" Inherits="thegym19_08.Registrarclientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
	 	    			<li class="live">Consultar <span class="m_1">cliente</span></li>
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
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     <ContentTemplate>
                         <asp:Panel ID="Panel1" runat="server" backcolor="#AAE3FF" bordercolor="#00BFF0" borderstyle="Solid" height="530px">
                             <ul class="spinning">
                                 <a href="pricing.html">
                                 <li class="live">registrar <span class="m_1">cliente</span></li>
                                 <li></li>
                                 </a>
                             </ul>
                             <table class="auto-style1">
                                 <tr>
                                     <td>
                                         <table class="auto-style2">
                                             <tr>
                                                 <td class="auto-style31">&nbsp;</td>
                                                 <td class="auto-style3" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                 <td class="auto-style18">
                                                     <asp:ScriptManager ID="smanager1" runat="server">
                                                     </asp:ScriptManager>
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="auto-style31">&nbsp;&nbsp;&nbsp;<asp:Label ID="lblnombre0" runat="server" Text="Nombre:"></asp:Label>
                                             <br />
                                                 </td>
                                                 <td class="auto-style3">
                                             <br />
                                                     <asp:TextBox ID="tbnombre0" runat="server" TabIndex="1" Width="144px"></asp:TextBox>
                                             <br />
                                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbnombre0" ErrorMessage="*Ingrese solo letras" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"> </asp:RegularExpressionValidator>
                                             <br />
                                                 </td>
                                                 <td class="auto-style24">
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbnombre0" Display="Dynamic" ErrorMessage="*" OnDataBinding="btnaceptar0_Click" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                                 </td>
                                                 <td class="auto-style28">
                                                     &nbsp;
                                                     <asp:Label ID="lblapellido0" runat="server" Text="Apellido:"></asp:Label>
                                                 </td>
                                                 <td class="auto-style14">
                                                     <br />
                                                     <asp:TextBox ID="tbapellido0" runat="server" TabIndex="2" Width="144px"></asp:TextBox>
                                             <br />
                                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbapellido0" ErrorMessage="*Ingrese solo letras" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"> </asp:RegularExpressionValidator>
                                                 </td>
                                                 <td class="auto-style18">
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbapellido0" Display="Dynamic" ErrorMessage="*" OnDataBinding="btnaceptar0_Click" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;
                                                     <asp:Label ID="lbldni0" runat="server" Text="DNI:"></asp:Label>
                                             <br />
                                                 </td>
                                                 <td class="auto-style7">
                                             <br />
                                                     <asp:TextBox ID="tbdni0" runat="server" TabIndex="3" TextMode="Number" Width="144px"></asp:TextBox>
                                             <br />
                                                 </td>
                                                 <td class="auto-style22">
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbdni0" Display="Dynamic" ErrorMessage="*" OnDataBinding="btnaceptar0_Click" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                                 </td>
                                                 <td class="auto-style29">
                                                     &nbsp;
                                                     <asp:Label ID="lbltelefono1" runat="server" Text="Teléfono:"></asp:Label>
                                                 </td>
                                                 <td class="auto-style15">
                                                     <asp:TextBox ID="tbtelefono1" runat="server" TabIndex="6" TextMode="Number" Width="123px"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbnombre0" Display="Dynamic" ErrorMessage="*" OnDataBinding="btnaceptar0_Click" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                                 </td>
                                                 <td class="auto-style18" rowspan="3">
                                                     &nbsp;</td>
                                             </tr>
                                             <tr>
                                                 <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;<asp:Label ID="lblemail1" runat="server" Text="E-mail:"></asp:Label>
                                             <br />
                                             <br />
                                             <br />
                                                 </td>
                                                 <td class="auto-style3">
                                             <br />
                                                     <asp:TextBox ID="tbemail1" runat="server" TabIndex="7" TextMode="Email" Width="144px"></asp:TextBox>
                                             <br />
                                             <br />
                                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail1" ErrorMessage="Email invalido" OnDataBinding="btnaceptar0_Click" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                             <br />
                                                 </td>
                                                 <td class="auto-style24">
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbemail1" Display="Dynamic" ErrorMessage="*" OnDataBinding="btnaceptar0_Click" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                                 </td>
                                                 <td class="auto-style28">
                                             <br />
                                             <br />
                                                     <asp:Label ID="lblfechanacimiento1" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
                                             <br />
                                             <br />
                                                 </td>
                                                 <td class="auto-style14">
                                             <br />
                                             <br />
                                                     <asp:TextBox ID="tbfechanacimiento1" runat="server" CssClass="form-control-static" TabIndex="4" Width="119px" TextMode="Date"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbfechanacimiento1" Display="Dynamic" ErrorMessage="*" OnDataBinding="btnaceptar0_Click" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                             <br />
                                             <br />
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <br />
                                                     &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblfotografia1" runat="server" Text="Fotografía:"></asp:Label>
                                             <br /> &nbsp;&nbsp;
                                             <br />
                                             <br />
                                                 </td>
                                                 <td class="auto-style5">
                                                     <br />
                                             <br />
                                                     <div id="div48" style="width:80%;float:left;">
                                                         <asp:UpdatePanel ID="UpdatePanel2" runat=server>
                                                             <ContentTemplate>
                                                                 <asp:FileUpload ID="fuImage" runat="server" Width="229px" /> 

                                                             </ContentTemplate>
                                                             <Triggers>
                                                                 <asp:PostBackTrigger ControlID="btnaceptar0" />

                                                             </Triggers>

                                                         </asp:UpdatePanel>

                                                     </div>
                                             <br />
                                             <br />
                                                 </td>
                                                 <td class="auto-style5">
                                             <br />
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fuImage" Display="Dynamic" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" OnDataBinding="btnaceptar0_Click"></asp:RequiredFieldValidator>
                                             <br />
                                             <br />
                                                 </td>
                                                 <td class="auto-style5">
                                             <br />
                                                     <asp:Label ID="LblDomicilio" runat="server" Text="Domicilio:"></asp:Label>
                                             <br />
                                             <br />
                                             <br />
                                                 </td>
                                                 <td class="auto-style8">
                                                     <asp:TextBox ID="tbdomicilio" runat="server" Width="126px"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tbdomicilio" Display="Dynamic" ErrorMessage="*" OnDataBinding="btncancelar_Click1" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                             <br />
                                             <br />
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="auto-style33" colspan="2">
                                                     <asp:Label ID="LblReg" runat="server"></asp:Label>
                                                 </td>
                                                 <td class="auto-style17">&nbsp;&nbsp;&nbsp;
                                             <br />
                                                     <asp:Button ID="btnaceptar0" runat="server" Height="32px" OnClick="btnaceptar0_Click" TabIndex="10" Text="Aceptar" Width="126px" />
                                                 </td>
                                                 <td class="auto-style30">&nbsp;</td>
                                                 <td class="auto-style15">
                                             <br />
                                                     <asp:Button ID="btncancelar" runat="server" Height="32px" OnClick="btncancelar_Click1" TabIndex="11" Text="Cancelar" Width="126px" />
                                                 </td>
                                                 <td class="auto-style18"></td>
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




</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
             <a href="#menu" class="class scroll"><a href="#menu" class="class scroll">
    <asp:Label ID="lblmensajebienvenida" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
    </a></a>
</asp:Content>

