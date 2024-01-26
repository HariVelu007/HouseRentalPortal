<%@ Page Title="" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HouseRentalPortal.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div class="card mx-auto w-50">
        <div class="card-header bg-primary text-light">
            Register
        </div>
        <div class="card-body">
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div class="row mb-2">
                        <div class="col-4">
                            <label for="txtUserName" class="form-label">User Name</label>
                        </div>
                        <div class="col-8">
                            <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator ErrorMessage="User name is required" ControlToValidate="txtUserName" runat="server" CssClass="text-danger" Display="Dynamic" />
                        </div>
                    </div>
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
                            <label>Password</label>
                        </div>
                        <div class="col-8">
                            <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" />
                            <asp:RequiredFieldValidator ErrorMessage="Password is required" ControlToValidate="txtPassword" runat="server"
                                Display="Dynamic" CssClass="text-danger" />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-4">
                            <label for="txtConfirmPassword" class="form-label">Confirm Password</label>
                        </div>
                        <div class="col-8">
                            <asp:TextBox runat="server" ID="txtConfirmPassword" CssClass="form-control" TextMode="Password" />
                            <asp:RequiredFieldValidator ErrorMessage="Confirm password is required" ControlToValidate="txtConfirmPassword" runat="server"
                                Display="Dynamic" CssClass="text-danger" />
                            <asp:CompareValidator ErrorMessage="Password and confirm password must match" ControlToCompare="txtConfirmPassword" runat="server" 
                                Display="Dynamic" CssClass="text-danger" ControlToValidate="txtPassword"/>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-12 text-center">

                            <asp:Button ID="btnRegister" Text="Register" runat="server" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
                            <asp:Button ID="btnClear" Text="Clear" runat="server" CssClass="btn btn-secondary" OnClick="btnClear_Click" />
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </div>
</asp:Content>
