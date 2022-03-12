<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LabsTPV2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View runat="server" ID="View1">
            <label for="TB1">First Value</label> 
            <br>
                  <div style="display: inline">      
    <asp:TextBox CssClass="form-control" ID="operandTB1"  runat="server"></asp:TextBox>
     </div>              
        </asp:View>
        <asp:View runat="server" ID="View2">
 <label for="DDL">Operation</label> 
            <br>
      <div style="display: inline">
           <asp:DropDownList CssClass="form-control" ID="dropDownList1" runat="server" Width="82px">
               <asp:ListItem Text="+" />
               <asp:ListItem Text="-" />
               <asp:ListItem Text="*" />
           </asp:DropDownList>
           </div>      
        </asp:View>
        <asp:View runat="server" ID="View3">
<label for="TB2">Second Value</label>
            <br>
            <div style="display: inline">
    <asp:TextBox CssClass="form-control" ID="operandTB2" runat="server"></asp:TextBox>
        </div>  
                           <div>
        <asp:CheckBox ID="isUnsigned" runat="server" Text="Is unsigned" />        
        </div>
        </asp:View>
        <asp:View runat="server" ID="View4">
       <div style="display:inline">
        <asp:Button CssClass="btn btn-primary" ID="countButton" runat="server" Text="Count" OnClick="countButton_Click" />
        </div>

        </asp:View>
    </asp:MultiView>
    <div>
    <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
        <Items>
 <asp:MenuItem Text="Operand1" Value="fv"/>
         <asp:MenuItem Text="Operation" Value="oper" />
            <asp:MenuItem Text="Operand2" Value="sv" />
            <asp:MenuItem Text ="Count" Value="count" />
             
        </Items>
    </asp:Menu>
 </div>
     <asp:RangeValidator id="Range1"
           ControlToValidate="operandTB1"
           MinimumValue="-100000"
           MaximumValue="100000"
           Type="Integer"
           EnableClientScript="false" 
           Text = "Allowed values is in range -100000 to 100000 "
           runat="server"/>
    <asp:CustomValidator ID="Custom1"
        runat="server"
        ErrorMessage = "Allowed values is in range -100000 to 100000 "
        ControlToValidate="operandTB2"
        OnServerValidate="Custom1_ServerValidate" 
        ValidateEmptyText="True">
    </asp:CustomValidator>
</asp:Content>
