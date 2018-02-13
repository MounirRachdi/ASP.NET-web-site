<%@ Page Title="Site web Admin" Language="C#" MasterPageFile="admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs"  %>

<script runat="server">
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }
   
    protected void Page_Load(object sender, EventArgs e)
    {
        object us = Session["UserID"];
        if (Session["UserID"] == null || Session["RoleId"] == null)
            Response.Redirect("Admin.aspx");
            
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }
</script>
<asp:content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #f
        {
            height: 710px;
            width: 1360px;
        }
        
    </style>
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" 
    runat="server">
    <header id="header">
        <hgroup>
            <h1 class="site_title"><a href="HTML/Index.htm">Website Admin</a></h1>
            <h2 class="section_title">SPNet Solutions</h2>
            <div class="btn_view_site"><a href="http://localhost:51034/Spnet%20Solutions/Index.aspx" target="_blank" >Voir le Site</a></div>
        </hgroup>
    </header>
    <!-- end of header bar -->

    <section id="secondary_bar">
        <div class="user">
            <p id="user"><% Response.Write( Session["UserID"]);//Response.Write(Page.Request["nom"]); %> (<a href="https://fr-mg42.mail.yahoo.com/neo/launch?.rand=35ri0pi5hippr" target="_blank"> Messages</a>)</p>
          <asp:linkbutton class="logout_user" id="LinkButton1" runat="server" 
                onclick="LinkButton1_Click">Logout</asp:linkbutton>
        </div>
        <div class="breadcrumbs_container">
            <article class="breadcrumbs"><a href="HTML/Index.htm">Admin</a>
                <div class="breadcrumb_divider"></div>
                <a class="current">Admin1</a></article>
        </div>
    </section>
    <!-- end of secondary bar -->

    <aside id="sidebar" class="column">
        <form class="quick_search">
        &nbsp;</form>
        <hr />
        <h3>Users</h3>
        <ul class="toggle">
            <li class="icn_add_user"><a href="newuser.aspx" target="f">Ajouter un nouveau Admin</a></li>
            <li class="icn_view_users"><a href="listeadmin.aspx" target="f">liste des Admin</a></li>
            <li class="icn_profile"><asp:linkbutton id="LinkButton2" runat="server" postbackurl="~/mimoprofile.aspx" 
                    onclick="LinkButton2_Click">Profile</asp:linkbutton></li>
                     <li class="icn_jump_back"><a href="setting.aspx" target="f">Paramétres</a></li>
        </ul>
        <h3>Client</h3>
        <ul class="toggle">
        <li>  <asp:hyperlink id="HyperLink1" runat="server" navigateurl="~/listeclient.aspx" target="f">Liste des clients</asp:hyperlink></li>
  <li>  <asp:hyperlink id="HyperLink3" runat="server" navigateurl="~/Ajout_clt.aspx" target="f">Ajouter client</asp:hyperlink></li>
        </ul>
        <h3>Candidature</h3>
        <ul class="toggle">
            <li class="icn_folder"><asp:hyperlink id="HyperLink2" runat="server" navigateurl="~/listecondidat.aspx" target="f">Liste des Condidats</asp:hyperlink></li>
        </ul>
          
        <h3>Projet</h3>
        <ul class="toggle">
         <li class="icn_folder"><asp:hyperlink id="HyperLink6" runat="server" navigateurl="~/listeprojet.aspx" target="f">Liste des projets</asp:hyperlink></li>
            <li class="icn_folder"><asp:hyperlink id="HyperLink4" runat="server" navigateurl="~/projets.aspx" target="f">Ajouter projet</asp:hyperlink></li>
        </ul>
          <h3>Projet</h3>
        <ul class="toggle">
            <li class="icn_folder"><asp:hyperlink id="HyperLink5" runat="server" navigateurl="devis.aspx" target="f">historique devis</asp:hyperlink></li>
        </ul>
        <h3>Déconnexion</h3>
        <ul class="toggle">
     
            <li class="icn_jump_back"><a href="logout.aspx">Déconnexion</a></li>
        </ul>

        <footer>
            <hr />
            <p><strong>Copyright &copy; 2014 SPNet Solutions</strong></p>
           
        </footer>
    </aside>
    <!-- end of sidebar -->

    <section id="main" class="column">

        <h4 class="alert_info">Bienvenue.</h4>
        <div>   <iframe id="f" ></iframe></div>
        <!-- end of stats article -->

     
        <!-- end of content manager article -->

        
        <!-- end of messages article -->

        <!-- end of post new article -->

        <!-- end of styles article -->
    </section>
</asp:content>
