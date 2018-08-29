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
                 <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="#00BFF0" BorderStyle="Solid" Height="901px" CssClass="auto-style5" Width="771px">
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
                                                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style8" Height="235px" OnPageIndexChanged="GridView1_PageIndexChanged" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="314px" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Id_plan">
                                                             <Columns>
                                                                 <asp:TemplateField HeaderText="ID">
                                                                     <EditItemTemplate>
                                                                         <asp:TextBox ID="txtid" runat="server" Text='<%# Bind("Id_plan") %>' ReadOnly="True" Width="53px"></asp:TextBox>
                                                                     </EditItemTemplate>
                                                                     <ItemTemplate>
                                                                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id_plan") %>'></asp:Label>
                                                                     </ItemTemplate>
                                                                 </asp:TemplateField>
                                                                 <asp:TemplateField HeaderText="Nombre">
                                                                     <EditItemTemplate>
                                                                         <asp:TextBox ID="txtnombre" runat="server" Text='<%# Bind("Nombre") %>' Width="111px"></asp:TextBox>
                                                                     </EditItemTemplate>
                                                                     <ItemTemplate>
                                                                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                                                     </ItemTemplate>
                                                                 </asp:TemplateField>
                                                                 <asp:TemplateField HeaderText="Precio">
                                                                     <EditItemTemplate>
                                                                         <asp:TextBox ID="txtprecio" runat="server" Text='<%# Bind("Precio") %>' TextMode="Number" Width="104px"></asp:TextBox>
                                                                     </EditItemTemplate>
                                                                     <ItemTemplate>
                                                                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                                                                     </ItemTemplate>
                                                                 </asp:TemplateField>
                                                                 <asp:TemplateField HeaderText="Duracion">
                                                                     <EditItemTemplate>
                                                                         <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Duracion") %>' TextMode="Number" Width="64px"></asp:TextBox>
                                                                     </EditItemTemplate>
                                                                     <ItemTemplate>
                                                                         <asp:Label ID="Label4" runat="server" Text='<%# Bind("Duracion") %>'></asp:Label>
                                                                     </ItemTemplate>
                                                                 </asp:TemplateField>
                                                                 <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                                                 <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                                                                 <asp:CommandField ButtonType="Button" ShowDeleteButton="True" DeleteText="Inhabilitar" />
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
                                             <ul class="spinning">
                                                 <a href="pricing.html">
                                                 <li class="live">actividades <span class="m_1">DEL plan</span></li>
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
                                                                     <asp:GridView ID="gbactividadesplanbusqueda" runat="server" CssClass="auto-style2" Height="235px" Width="309px" AutoGenerateColumns="False">
                                                                         <Columns>
                                                                             <asp:BoundField DataField="NombreActividad" HeaderText="Nombre de Actividad" />
                                                                         </Columns>
                                                                         <HeaderStyle BackColor="#72D0F4" />
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

