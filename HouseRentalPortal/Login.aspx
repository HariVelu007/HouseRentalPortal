<%@ Page Title="" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HouseRentalPortal.Login" %>

<asp:Content ID="LoginBodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="container-fluid">
                <div class="card mx-auto w-50">
                    <div class="card-header bg-primary text-light">
                        Login
                    </div>
                    <div class="card-body">
                        <div class="row mb-2">
                            <div class="col-4">
                                <label for="txtEmail" class="form-label">Email</label>
                            </div>
                            <div class="col-8">
                                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" />
                                <asp:RequiredFieldValidator ErrorMessage="Email is required" ControlToValidate="txtEmail" runat="server" CssClass="text-danger" Display="Dynamic" />
                                <asp:RegularExpressionValidator ErrorMessage="Invalid Email" ControlToValidate="txtEmail" runat="server" CssClass="text-danger" Display="Dynamic"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-4">
                                <label for="txtPassword" class="form-label">Password</label>
                            </div>
                            <div class="col-8">
                                <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" />
                                <asp:RequiredFieldValidator ErrorMessage="Password is required" ControlToValidate="txtPassword" runat="server"
                                    Display="Dynamic" CssClass="text-danger" />
                            </div>
                        </div>                        
                        <div class="row mb-2">
                            <div class="col-12 text-center">
                                <asp:Button ID="btnLogin" Text="Login" runat="server" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                                <asp:Button ID="btnRegister" Text="Register" CausesValidation="false" runat="server" CssClass="btn btn-secondary" OnClick="btnRegister_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
