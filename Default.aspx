<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LabsTPV2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <div style="display: inline">      
    <asp:TextBox ID="operandTB1"  runat="server"></asp:TextBox>
     </div>
       <div style="display: inline">
           <asp:DropDownList ID="dropDownList1" runat="server" Width="82px">
               <asp:ListItem Text="+" />
               <asp:ListItem Text="-" />
               <asp:ListItem Text="*" />
           </asp:DropDownList>
           </div>

    <div style="display: inline">
    <asp:TextBox ID="operandTB2" runat="server"></asp:TextBox>
        </div>
        <div style="display:inline">
        <asp:Button ID="countButton" runat="server" Text="Count" OnClick="countButton_Click" />
        </div>
    <div>
        <asp:CheckBox ID="isUnsigned" runat="server" Text="Is unsigned" />        
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
        ControlToValidate="operandTB2" OnServerValidate="Custom1_ServerValidate">

    </asp:CustomValidator>
</asp:Content>
