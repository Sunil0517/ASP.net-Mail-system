<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Recived.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/theme.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main>
    <div class="container">
        <header class="mb-auto py-vh-2 col-12">
          <a class="navbar-brand pe-md-4 fs-4 col-12 col-md-auto text-center" href="Compose.aspx">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-stack"
              viewBox="0 0 16 16">
              <path
                d="m14.12 10.163 1.715.858c.22.11.22.424 0 .534L8.267 15.34a.598.598 0 0 1-.534 0L.165 11.555a.299.299 0 0 1 0-.534l1.716-.858 5.317 2.659c.505.252 1.1.252 1.604 0l5.317-2.66zM7.733.063a.598.598 0 0 1 .534 0l7.568 3.784a.3.3 0 0 1 0 .535L8.267 8.165a.598.598 0 0 1-.534 0L.165 4.382a.299.299 0 0 1 0-.535L7.733.063z" />
              <path
                d="m14.12 6.576 1.715.858c.22.11.22.424 0 .534l-7.568 3.784a.598.598 0 0 1-.534 0L.165 7.968a.299.299 0 0 1 0-.534l1.716-.858 5.317 2.659c.505.252 1.1.252 1.604 0l5.317-2.659z" />
            </svg>
            <span class="ms-md-1 mt-1 fw-bolder me-md-5">Compose</span>
          </a>
          <a class="navbar-brand pe-md-4 fs-4 col-12 col-md-auto text-center" href="Recived.aspx">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="currentColor"
              class="w-6 h-6">
              <path
                d="M3.375 3C2.339 3 1.5 3.84 1.5 4.875v.75c0 1.036.84 1.875 1.875 1.875h17.25c1.035 0 1.875-.84 1.875-1.875v-.75C22.5 3.839 21.66 3 20.625 3H3.375z" />
              <path fill-rule="evenodd"
                d="M3.087 9l.54 9.176A3 3 0 006.62 21h10.757a3 3 0 002.995-2.824L20.913 9H3.087zM12 10.5a.75.75 0 01.75.75v4.94l1.72-1.72a.75.75 0 111.06 1.06l-3 3a.75.75 0 01-1.06 0l-3-3a.75.75 0 111.06-1.06l1.72 1.72v-4.94a.75.75 0 01.75-.75z"
                clip-rule="evenodd" />
            </svg>
            <span class="ms-md-1 mt-1 fw-bolder me-md-5 text-decoration-underline">Recived</span>
          </a>
          <a class="navbar-brand pe-md-4 fs-4 col-12 col-md-auto text-center" href="Sent.aspx">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="currentColor"
              class="w-6 h-6">
              <path
                d="M3.478 2.405a.75.75 0 00-.926.94l2.432 7.905H13.5a.75.75 0 010 1.5H4.984l-2.432 7.905a.75.75 0 00.926.94 60.519 60.519 0 0018.445-8.986.75.75 0 000-1.218A60.517 60.517 0 003.478 2.405z" />
            </svg>

            <span class="ms-md-1 mt-1 fw-bolder me-md-5">Sent</span>
          </a>  

        </header>


      <div class="row d-flex justify-content-center  pb-0">
        

       
          <asp:Repeater ID="r1" runat="server">
              <ItemTemplate>
          <div class="row d-flex align-items-start" data-aos="fade-right">
            <div class="col-12 col-lg-7">
                <!-- <asp:Label ID="Label1" runat="server" Text='<%# Eval("subject") %>'  class="h3 mt-5 border-top pt-5"></asp:Label>-->
             <h2 class="h3 mt-5 border-top pt-5"><%# Eval("subject") %></h2> 
               <!--  <asp:Label ID="Label2" runat="server" Text='<%# Eval("emailBody") %>' class="text-secondary"></asp:Label>-->
              <p class=" text-secondary"><%# Eval("emailBody") %></p>
            </div>
            <div class="col-12 col-lg-4 offset-lg-1  p-5 mt-5">
              <h3 class="h6">From</h3>
                <!-- <asp:Label ID="Label3" runat="server" Text='<%# Eval("emailFrom") %>' class="text-secondary"></asp:Label>-->
               <!--  <asp:Label ID="Label4" runat="server" Text='<%# Eval("dateTime") %>'></asp:Label>-->
              <p class="text-secondary"><%# Eval("emailFrom") %></p>
              <p class="text-secondary"><%# Eval("dateTime") %></p>
            </div>
          </div>
              </ItemTemplate>
          </asp:Repeater>
        
      </div>
    </div>

  </main>
</asp:Content>

