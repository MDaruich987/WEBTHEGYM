<%@ Page Title="" Language="C#" MasterPageFile="~/Inicioempleado.Master" AutoEventWireup="true" CodeBehind="Consultarclientes.aspx.cs" Inherits="thegym19_08.Consultarclientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 407px;
            height: 276px;
        }
        .auto-style3 {
            height: 661px;
            width: 1026px;
            margin-left: 0px;
        }
        .auto-style5 {
            width: 434px;
        }
        .auto-style7 {
            width: 417px;
            height: 283px;
            margin-bottom: 0px;
            margin-left: 33px;
        }
        .auto-style11 {
            width: 645px;
        }
        .auto-style12 {
            margin-left: 0px;
        }
        .auto-style13 {
            width: 107%;
        }
        .auto-style14 {
            width: 117%;
        }
        .auto-style15 {
            width: 118%;
        }
        .auto-style16 {
            left: 0px;
            top: 0px;
        }
        .auto-style17 {
            margin-left: 50px;
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
                    <table class="auto-style15">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style5">
	 	    	<div class="auto-style7"><a href="Registrarclientes.aspx">
	 	    		<ul class="spinning">
	 	    			<li class="live">REGISTRAR <span class="m_1">cliente</span></li>
	 	    			<li class="room"></li>
	 	    			<div class="clear"></div>	
	 	    		</ul>
					 <div class="auto-style16">
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
        <div class="auto-style3">



                 <br />
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     <ContentTemplate>
                         <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="#00BFF0" BorderStyle="Solid" CssClass="auto-style12" Height="613px">
                             <ul class="spinning">
                                 <a href="pricing.html">
                                 <li class="live">consultar <span class="m_1">cliente</span></li>
                                 <li></li>
                                 </a>
                             </ul>
                             <asp:ScriptManager ID="ScriptManager1" runat="server">
                             </asp:ScriptManager>
                             <table class="auto-style14">
                                 <tr>
                                     <td>
                                         <table class="auto-style13">
                                             <tr>
                                                 <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:Label ID="lblbuscar" runat="server" Text="Buscar:"></asp:Label>
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:TextBox ID="tbbuscar" runat="server" Width="363px"></asp:TextBox>
                                                 </td>
                                                 <td>&nbsp;</td>
                                             </tr>
                                             <tr>
                                                 <td colspan="2">
                                             <br />
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:Button ID="btnbuscar" runat="server" Height="24px" OnClick="btnbuscar_Click" Text="Buscar" Width="144px" />
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td colspan="2">&nbsp;</td>
                                             </tr>
                                             <tr>
                                                 <td colspan="2">
                                                     <table class="nav-justified">
                                                         <tr>
                                                             <td>
                                                                 <asp:GridView ID="gridviewclientes" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style17" DataKeyNames="Id_cliente" Height="193px" OnPageIndexChanged="GridView1_PageIndexChanged"  OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowEditing="GridView1_RowEditing" PageSize="5" Width="615px" OnRowCommand="MyRowCommand">
                                                                     <Columns>
                                                                         <asp:TemplateField HeaderText="ID">
                                                                             <EditItemTemplate>
                                                                                 <asp:TextBox ID="txtid" runat="server" Height="23px" ReadOnly="True" Text='<%# Bind("Id_cliente") %>' Width="18px"></asp:TextBox>
                                                                             </EditItemTemplate>
                                                                             <ItemTemplate>
                                                                                 <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id_cliente") %>'></asp:Label>
                                                                             </ItemTemplate>
                                                                         </asp:TemplateField>
                                                                         <asp:TemplateField HeaderText="DNI">
                                                                             <EditItemTemplate>
                                                                                 <asp:TextBox ID="txtdni" runat="server" Height="23px" Text='<%# Bind("DNI") %>' TextMode="Number" Width="64px"></asp:TextBox>
                                                                             </EditItemTemplate>
                                                                             <ItemTemplate>
                                                                                 <asp:Label ID="Label2" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                                                                             </ItemTemplate>
                                                                         </asp:TemplateField>
                                                                         <asp:TemplateField HeaderText="Nombre">
                                                                             <EditItemTemplate>
                                                                                 <asp:TextBox ID="txtnombre" runat="server" Height="21px" Text='<%# Bind("Nombre") %>' Width="95px"></asp:TextBox>
                                                                             </EditItemTemplate>
                                                                             <ItemTemplate>
                                                                                 <asp:Label ID="Label3" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                                                             </ItemTemplate>
                                                                         </asp:TemplateField>
                                                                         <asp:TemplateField HeaderText="Apellido">
                                                                             <EditItemTemplate>
                                                                                 <asp:TextBox ID="txtapellido" runat="server" Height="21px" Text='<%# Bind("Apellido") %>' Width="112px"></asp:TextBox>
                                                                             </EditItemTemplate>
                                                                             <ItemTemplate>
                                                                                 <asp:Label ID="Label4" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                                                                             </ItemTemplate>
                                                                         </asp:TemplateField>
                                                                         <asp:TemplateField HeaderText="Fecha Nacimiento">
                                                                             <EditItemTemplate>
                                                                                 <asp:TextBox ID="txtfechanacimiento" runat="server" Height="20px" Text='<%# Bind("Fecha_nac") %>' TextMode="Date" Width="113px"></asp:TextBox>
                                                                             </EditItemTemplate>
                                                                             <ItemTemplate>
                                                                                 <asp:Label ID="Label5" runat="server" Text='<%# Bind("Fecha_nac") %>'></asp:Label>
                                                                             </ItemTemplate>
                                                                         </asp:TemplateField>
                                                                         <asp:TemplateField HeaderText="Email">
                                                                             <EditItemTemplate>
                                                                                 <asp:TextBox ID="txtemail" runat="server" Height="20px" Text='<%# Bind("Email") %>' TextMode="Email" Width="120px"></asp:TextBox>
                                                                             </EditItemTemplate>
                                                                             <ItemTemplate>
                                                                                 <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                                                             </ItemTemplate>
                                                                         </asp:TemplateField>
                                                                         <asp:TemplateField HeaderText="Telefono">
                                                                             <EditItemTemplate>
                                                                                 <asp:TextBox ID="txttelefono" runat="server" Height="20px" Text='<%# Bind("Telefono") %>' TextMode="Number" Width="121px"></asp:TextBox>
                                                                             </EditItemTemplate>
                                                                             <ItemTemplate>
                                                                                 <asp:Label ID="Label7" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                                                                             </ItemTemplate>
                                                                         </asp:TemplateField>
                                                                         <asp:TemplateField HeaderText="Domicilio">
                                                                             <EditItemTemplate>
                                                                                 <asp:TextBox ID="txtdomicilio" runat="server" Height="21px" Text='<%# Bind("Domicilio") %>' Width="147px"></asp:TextBox>
                                                                             </EditItemTemplate>
                                                                             <ItemTemplate>
                                                                                 <asp:Label ID="Label8" runat="server" Text='<%# Bind("Domicilio") %>'></asp:Label>
                                                                             </ItemTemplate>
                                                                         </asp:TemplateField>
                                                                         <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto">
                                                                         </asp:ImageField>
                                                                         <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                                                                         <asp:CommandField ButtonType="Button" SelectText="" CancelText="" DeleteText="Inhabilitar" EditText="" InsertText="" NewText="" ShowDeleteButton="True" UpdateText="" />
                                                                     </Columns>
                                                                     <HeaderStyle BackColor="#72D0F4" BorderColor="White" BorderStyle="None" />
                                                                 </asp:GridView>
                                                             </td>
                                                         </tr>
                                                     </table>
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td colspan="2">&nbsp;&nbsp;</td>
                                             </tr>
                                             <tr>
                                                 <td colspan="2">
                                                     &nbsp;&nbsp;&nbsp;
                                                     <asp:Label ID="lblerror" runat="server"></asp:Label>
                                                 </td>
                                             </tr>
                                         </table>
                                     </td>
                                 </tr>
                             </table>
                             </a>
                         </asp:Panel>
                     </ContentTemplate>
                 </asp:UpdatePanel>
                 <br />
        </div>
       </div>


</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <a href="#menu" class="class scroll">
    <asp:Label ID="lblmensajebienvenida" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
    </a>
</asp:Content>

