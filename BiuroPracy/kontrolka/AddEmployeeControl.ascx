d<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddEmployeeControl.ascx.cs" Inherits="BiuroPracy.AddEmployeeControl" %>
<div class="form-group">
    <label class ="control-label col-sm-2">Email:</label>
    <div class="col-sm-10">
         <asp:TextBox ID="txtMail" class="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valiMail" controlToValidate="txtMail" runat="server" ErrorMessage="Wymagane Pole">

        </asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group">
    <label class ="control-label col-sm-2">Password:</label>
    <div class="col-sm-10">
         <asp:TextBox ID="txtPassword" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valiPassword" controlToValidate="txtPassword" runat="server" ErrorMessage="Wymagane Pole"/>
    </div>
</div>

<div class="form-group">
    <label class ="control-label col-sm-2">Imie:</label>
    <div class="col-sm-10">
         <asp:TextBox ID="txtImie" class="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="valiImie" controlToValidate="txtImie" runat="server" ErrorMessage="Wymagane Pole"/>
    </div>
</div>

<div class="form-group">
    <label class ="control-label col-sm-2">Nazwisko:</label>
    <div class="col-sm-10">
         <asp:TextBox ID="txtNazwisko" class="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="valiNazwisko" controlToValidate="txtNazwisko" runat="server" ErrorMessage="Wymagane Pole"/>
    </div>
</div>

<div class="form-group">
    <label class ="control-label col-sm-2">Data ur:</label>
    <div class="col-sm-10">
         <asp:calendar ID="calendarDateOfBirth" class="form-control" runat="server"></asp:calendar>
    </div>
</div>

<div class="form-group">
    <label class ="control-label col-sm-2">umowa o prace:</label>
    <div class="col-sm-10">
        
        <asp:DropDownList ID="dllContractOfEmployer" class="form-control" runat="server">
        </asp:DropDownList>


    </div>
</div>