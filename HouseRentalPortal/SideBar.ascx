<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SideBar.ascx.cs" Inherits="HouseRentalPortal.SideBar" %>
<div class="bg-light container-fluid">
    <div class="pb-2">
        <label class="form-label">Price Range</label>
        <div class="row">
            <div class="col-6">
                <asp:TextBox runat="server" CssClass="form-control" />
            </div>
            <div class="col-6">
                <asp:TextBox runat="server" CssClass="form-control" />
            </div>
        </div>
    </div>
    <div class="pb-2">
        <label class="form-label">Property Type</label>
        <div class="row">
            <div class="col-12">
                <asp:DropDownList runat="server" CssClass="form-select">
                    <asp:ListItem Text="Apartment"/>
                    <asp:ListItem Text="House" />
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <div class="pb-2">
        <label class="form-label">Bedrooms</label>
        <div class="row">
            <div class="col-12">
                <asp:CheckBoxList runat="server" CssClass="form-control">
                    <asp:ListItem Text="1+ Bedroom" />
                    <asp:ListItem Text="2+ Bedrooms" />
                    <asp:ListItem Text="3+ Bedrooms" />
                </asp:CheckBoxList>
            </div>
        </div>
    </div>
    <div class="pb-2">
        <label class="form-label">Bathrooms</label>
        <div class="row">
            <div class="col-12">
                <asp:CheckBoxList runat="server" CssClass="form-control">
                    <asp:ListItem Text="1+ Bathroom" />
                    <asp:ListItem Text="2+ Bathrooms" />
                    <asp:ListItem Text="3+ Bathrooms" />
                </asp:CheckBoxList>
            </div>
        </div>
    </div>
    <div class="pb-2">
        <label class="form-label">Listed By</label>
        <div class="row">
            <div class="col-12">
                <asp:CheckBoxList runat="server" CssClass="form-control">
                    <asp:ListItem Text="Owner"/>
                    <asp:ListItem Text="Dealer" />
                    <asp:ListItem Text="Builder" />
                </asp:CheckBoxList>
            </div>
        </div>
    </div>
    <div class="py-2">
        <div class="row">
            <div class="d-flex justify-content-end ">                  
                <asp:Button Text="Apply" runat="server" CssClass="btn btn-primary me-2"/>
                <asp:Button Text="Clear" runat="server" CssClass="btn btn-secondary"/>
            </div>
        </div>
    </div>
</div>
