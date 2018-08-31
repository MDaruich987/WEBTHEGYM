<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="ConsultaActividades.aspx.cs" Inherits="thegym19_08.ConsultaActividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 117%;
            height: 1074px;
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
        .auto-style7 {
            height: 22px;
        }
        .auto-style8 {
            margin-left: 67px;
            width: 401px;
        }
        .auto-style9 {
            margin-left: 67px;
            width: 675px;
        }
        .auto-style10 {
            width: 477px;
        }
        .auto-style11 {
            width: 927px;
        }
        .auto-style12 {
            left: 0px;
            top: 0px;
            width: 476px;
            height: 250px;
        }
        .auto-style13 {
            width: 502px;
        }
        .auto-style14 {
            left: 0px;
            top: 0px;
            width: 455px;
        }
        .auto-style15 {
            height: 312px;
            width: 487px;
        }
        .auto-style16 {
            display: block;
            max-width: 100%;
            height: 208px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    imagenes botones--%>
    <br />
    <br />
    		    <div class="auto-style11">
		      <!-- start content-middle -->
				<div class="clear">
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style9">
	 	    	                <div class="auto-style15"><a href="RegistrarActividades.aspx">
	 	    		                <ul class="spinning">
	 	    			            <li class="live">REGISTRAR <span class="m_1">actividades</span></li>
	 	    			            <li class="room"></li>
	 	    			<div class="clear"></div>	
	 	    		</ul>
					 <div class="auto-style12">
				  	   <img src="images/pic3.jpg" class="img-responsive" alt=""/>
					      <div class="mask">
	                       	<div class="info">Registrar</div>
			              </div>
	                  </div>
			     </a></div>
				            </td>
                            <td class="auto-style13">
				 <div class="auto-style10"><a href="ConsultaActividades.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">Consultar <span class="m_1">actividades</span></li>
	 	    			<li class="room"></li>
	 	    			<div class="clear"></div>	
	 	    		</ul>
					 <div class="auto-style14">
				  	   <img src="images/pic2.jpg" class="auto-style16"  alt=""/>
					      <div class="mask">
	                       	<div class="info">Registrar</div>
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
                    <asp:Panel ID="Panel1" runat="server" BackColor="#F8F8F8" BorderColor="#00BFF0" BorderStyle="Solid" Height="1023px">
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
                                                            <asp:GridView ID="gvactividad" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style6" Height="211px" PageSize="4" Width="617px" Font-Names="bizagi-font" Font-Overline="False" OnSelectedIndexChanged="gvactividad_SelectedIndexChanged" >
                                                                <Columns>
                                                                    <asp:BoundField DataField="Id_actividad" HeaderText="ID" />
                                                                    <asp:BoundField DataField="Actividad" HeaderText="Nombre" />
                                                                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                                                                    <asp:BoundField DataField="Profesor" HeaderText="Profesor" />
                                                                    <asp:BoundField DataField="Sucursal" HeaderText="Sucursal" />
                                                                    <asp:BoundField DataField="HoraInicio" HeaderText="Hora Inicio" />
                                                                    <asp:BoundField DataField="HoraFin" HeaderText="Hora Fin" />
                                                                    <asp:BoundField DataField="Cupos" HeaderText="Cupos" />
                                                                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                                                </Columns>
                                                                <HeaderStyle BackColor="#72D0F4" BorderStyle="None" />
                                                            </asp:GridView>
                                                            <br />
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style7"></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblmensajerror" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="nav-justified">
                                                    <tr>
                                                        <td>
                                                            <ul class="spinning">
                                                                <a href="pricing.html">
                                                                <li class="live">FICHA <span class="m_1">DE Actividad</span></li>
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
                                                                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <asp:Label ID="LblNombre" runat="server" Text="Nombre:"></asp:Label>
                                                                    </td>
                                                                    <td class="auto-style8">
                                                                        <asp:TextBox ID="TxbNombre" runat="server" Width="191px" ReadOnly="True"></asp:TextBox>
                                                                    </td>
                                                                    <td class="auto-style7">
                                                                        <asp:Label ID="LblProfesor" runat="server" Text="Profesor:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlProfesor" runat="server" Width="189px">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <br />
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <asp:Label ID="LblSucursal" runat="server" Text="Sucursal:"></asp:Label>
                                                                        &nbsp;</td>
                                                                    <td class="auto-style8">
                                                                        <br />
                                                                        <asp:DropDownList ID="DroplisSucursal" runat="server" Height="23px" Width="195px">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td class="auto-style7">
                                                                        <br />
                                                                        <asp:Label ID="LblHorario" runat="server" Text="Horario:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <br />
                                                                        <asp:Label ID="LblDe" runat="server" Height="30px" Text="De:"></asp:Label>
                                                                        &nbsp;<asp:TextBox ID="TxbDe" runat="server" Width="61px" ReadOnly="True"></asp:TextBox>
                                                                        &nbsp;<asp:Label ID="Lbla" runat="server" Height="30px" Text="a"></asp:Label>
                                                                        <asp:TextBox ID="TxbA" runat="server" Width="61px" ReadOnly="True"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <br />
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <asp:Label ID="LblCupos" runat="server" Text="Cupos:"></asp:Label>
                                                                        &nbsp;</td>
                                                                    <td class="auto-style8">
                                                                        <br />
                                                                        <asp:TextBox ID="TxbCupos" runat="server" ReadOnly="True" Width="193px"></asp:TextBox>
                                                                    </td>
                                                                    <td class="auto-style7">&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <br />
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <asp:Label ID="LblDesc" runat="server" Text="Descripcion:"></asp:Label>
                                                                        &nbsp;</td>
                                                                    <td class="auto-style8">
                                                                        <br />
                                                                        <asp:TextBox ID="TxbDesc" runat="server" Height="48px" TextMode="MultiLine" Width="197px" ReadOnly="True"></asp:TextBox>
                                                                    </td>
                                                                    <td class="auto-style7">&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="auto-style5">&nbsp;</td>
                                                                    <td class="auto-style8">
                                                                        <br />
                                                                    </td>
                                                                    <td class="auto-style7">&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="auto-style5">&nbsp;</td>
                                                                    <td class="auto-style8">&nbsp;<asp:Button ID="BtnEditar" runat="server" Text="Editar" OnClick="BtnEditar_Click" />
                                                                    </td>
                                                                    <td class="auto-style7">
                                                                        <asp:Button ID="BtnInhabilitar" runat="server" Text="Inhabilitar" />
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

