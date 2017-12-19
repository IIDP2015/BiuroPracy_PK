<%@ Page Language="C#" MasterPageFile="~/masterpage/Layout.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="BiuroPracy.AddEmployee" %>
<%@ Register TagPrefix="employee" TagName="AddEmployeeControl" Src="~/kontrolka/AddEmployeeControl.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h4>dodawanie pracowników</h4>
    <div class="bodyForm">
        <employee:AddEmployeeControl ID="crtlAddEmployee" runat="server" />
        <div class="form-group">
            <asp:Button ID="buttonSave" CssClass="btn-primary" runat="server" Text="zapisz" />

        </div>
        <div class="form-group">
            <asp:Button id="bazaTEST" CausesValidation="false" runat="server" Text="baza" OnClick="bazaTEST_Click"/>
        </div>



    </div>
</asp:Content>