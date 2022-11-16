<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Task1.Register1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 5em;">
        <div class="container-fluid" style="color : black; margin-left:15em;">
            <form class="row" style="margin-left: 10rem;">
                <div class="col-12" style="margin-top: 1rem;">
                    <h2 style="background-color: black; color: darkgray; padding: 5px; width: 650px; text-align: center;">EMPLOYEE REGISTRATION FORM</h2>
                </div>
                <br />
                <div class="row mb-3">
                    <label for="empid" class="col-sm-1 col-form-label">Emp Id</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="empid" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
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
                    <label for="dob" class="col-sm-1 col-form-label">Date of Birth</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="dob" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
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
                <div class="col-12 mb-4" style="margin-left: 1em;">
                    <asp:Button ID="register" runat="server" OnClick="Button1_Click" Text="Register" Width="200px" CssClass="btn btn-secondary" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Already registered? Click here to Login" Width="400px" CssClass="btn btn-secondary" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
