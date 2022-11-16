<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="Task1.WelcomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 5em;">
        <div class="container-fluid" style="color: black; margin-left: 15em;">
            <form class="row g-3" style="margin-left: 5rem;">
                <br />
                <br />
                <br />
                <div class="col-12" style="margin-top: 5rem;">
                    <h2 style="background-color: black; color: darkgray; padding: 5px; width: 650px; text-align: center;">Welcome,
                        <asp:Label ID="textbox1" runat="server" Font-Bold="True"></asp:Label><br />
                    </h2>
                </div>
                <br />
                <div class="col-12" style="margin-left: 10em;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Details" Width="300px" CssClass="btn btn-secondary" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
