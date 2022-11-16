<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="EditDetails.aspx.cs" Inherits="Task1.EditDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 5em;">
        <div class="container-fluid" style="color: black; margin-left: 15em;">
            <form class="row g-3" style="margin-left: 5rem;">
                <div class="col-12" style="margin-top: 5rem;">
                    <h2 style="background-color: black; color: darkgray; padding: 5px; width: 650px; text-align: center;">EDIT DETAILS</h2>
                </div>
                <div class="row mb-3">
                    <label for="fname" class="col-sm-1 col-form-label">First Name</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="fname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="lname" class="col-sm-1 col-form-label">Last Name</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="lname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="phone" class="col-sm-1 col-form-label">Phone No.</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
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
                    <label for="address" class="col-sm-1 col-form-label">Address</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="state" class="col-sm-1 col-form-label">State</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="state" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="designation" class="col-sm-1 col-form-label">Designation</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="designation" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
                <br />
                <div class="col-12" style="margin-left: 10em;">
                    <asp:Button ID="edit" runat="server" OnClick="Button1_Click" Text="Update" Width="200px" CssClass="btn btn-secondary" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
