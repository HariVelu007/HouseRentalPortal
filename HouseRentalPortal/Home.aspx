<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HouseRentalPortal.Home" %>

<%@ Register Src="~/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-3">
        <uc1:SideBar runat="server" ID="SideBar" />
    </div>
    <div class="col-9">
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <asp:ListView ID="lvHouse" runat="server" OnLoad="lvHouse_Load" OnItemCommand="lvHouse_ItemCommand">
                    <LayoutTemplate>
                        <div class="d-flex">
                            <asp:PlaceHolder runat="server" ID="ItemPlaceholder" />
                        </div>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <div class="card grid-item">
                            <div class="card-header">
                            </div>
                            <div class="card-body">
                            </div>
                            <div class="card-footer">
                            </div>
                        </div>
                    </ItemTemplate>
                    <EmptyItemTemplate>
                    </EmptyItemTemplate>
                </asp:ListView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
