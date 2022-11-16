<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Task1.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 5em;">
        <div class="container-fluid" style="color: black; margin-left: 15em;">
            <form class="row g-3" style="margin-left: 5rem;">
                <div class="col-12" style="margin-top: 5rem;">
                    <h2 style="background-color: black; color: darkgray; padding: 5px; width: 650px; text-align: center;">LOGIN</h2>
                </div>
                <br />
                <br />
                <div class="row mb-3">
                    <label for="email" class="col-sm-1 col-form-label">Email</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="password" class="col-sm-1 col-form-label">Password</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="remember" class="col-sm-1 col-form-label"></label>
                    <div class="col-sm-5">
                        <asp:CheckBox ID="remember" runat="server" Text="&nbspRemember me"/>  
                    </div>
                </div>
                <div class="col-12" style="margin-left: 10em;">
                    <asp:Button ID="login" runat="server" OnClick="Button1_Click1" Text="Login" Width="300px" CssClass="btn btn-secondary" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
