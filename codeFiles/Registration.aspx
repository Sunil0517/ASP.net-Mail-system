<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="d-flex h-100 w-100 bg-black text-white" data-bs-spy="scroll" data-bs-target="#navScroll">

  <div class="h-100 container-fluid">
    <div class="h-100 row d-flex align-items-stretch">

      <div class="col-12 col-md-7 col-lg-6 col-xl-5 d-flex align-items-start flex-column px-vw-5">

        <header class="mb-auto py-vh-2 col-12">
          <a class="navbar-brand pe-md-4 fs-4 col-12 col-md-auto text-center" href="index.html">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-stack"
              viewBox="0 0 16 16">
              <path
                d="m14.12 10.163 1.715.858c.22.11.22.424 0 .534L8.267 15.34a.598.598 0 0 1-.534 0L.165 11.555a.299.299 0 0 1 0-.534l1.716-.858 5.317 2.659c.505.252 1.1.252 1.604 0l5.317-2.66zM7.733.063a.598.598 0 0 1 .534 0l7.568 3.784a.3.3 0 0 1 0 .535L8.267 8.165a.598.598 0 0 1-.534 0L.165 4.382a.299.299 0 0 1 0-.535L7.733.063z" />
              <path
                d="m14.12 6.576 1.715.858c.22.11.22.424 0 .534l-7.568 3.784a.598.598 0 0 1-.534 0L.165 7.968a.299.299 0 0 1 0-.534l1.716-.858 5.317 2.659c.505.252 1.1.252 1.604 0l5.317-2.659z" />
            </svg>
            <span class="ms-md-1 mt-1 fw-bolder me-md-5">Techno</span>
          </a>

        </header>
        <main class="mb-auto col-12">
          <h1>Register a new account</h1>

          <div class="row">
            <div class="col-12">
              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Name</label>
                  <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-lg bg-gray-800 border-dark"></asp:TextBox>
              </div>

              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                  <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-lg bg-gray-800 border-dark"></asp:TextBox>
              </div>

              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">UserName</label>
                  <asp:TextBox ID="TextBox3" runat="server"  class="form-control form-control-lg bg-gray-800 border-dark"></asp:TextBox>
              </div>

              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                  <asp:TextBox ID="TextBox4" runat="server"  class="form-control form-control-lg bg-gray-800 border-dark"></asp:TextBox>
              </div>

              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">City</label>
                  <asp:TextBox ID="TextBox5" runat="server" class="form-control form-control-lg bg-gray-800 border-dark"></asp:TextBox>
              </div>
                <asp:Button ID="Button1" runat="server" Text="Register"  class="btn btn-white btn-xl mb-4" OnClick="Button1_Click"></asp:Button>
            </div>
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          </div>

        </main>
      </div>

      <div class="col-12 col-md-5 col-lg-6 col-xl-7 gradient CustomRadius"></div>

    </div>

  </div>
</div>
</asp:Content>

