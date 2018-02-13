<%@ Page Language="C#" AutoEventWireup="true" Inherits="Admin" Codebehind="Admin.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 708px;
            width: 1229px;
        }
        span.art-button-wrapper>a.art-button,
span.art-button-wrapper>a.art-button:link,
span.art-button-wrapper>input.art-button,
span.art-button-wrapper>button.art-button
{
   text-decoration: none;
   font-family: Arial, Helvetica, Sans-Serif;
   font-style: normal;
   font-weight: normal;
   font-size: 11px;
   position:relative;
   top:0;
   display: inline-block;
   vertical-align: middle;
   white-space: nowrap;
   text-align: center;
   color: #11222D !important;
   width: auto;
   outline: none;
   border: none;
   background: none;
   line-height: 22px;
   height: 22px;
   margin: 0 !important;
   padding: 0 7px !important;
   overflow: visible;
   cursor: pointer;
   text-indent: 0;
}

.art-button img, span.art-button-wrapper img
{
   margin: 0;
   vertical-align: middle;
}

span.art-button-wrapper
{
   vertical-align: middle;
   display: inline-block;
   position: relative;
   height: 22px;
   overflow: hidden;
   white-space: nowrap;
   text-indent: 0;
   width: auto;
   max-width:1728px;
   margin: 0;
   padding: 0;
   z-index: 0;
}

.firefox2 span.art-button-wrapper
{
   display: block;
   float: left;
}

input, select, textarea
{
   vertical-align: middle;
   font-family: Arial, Helvetica, Sans-Serif;
   font-style: normal;
   font-weight: normal;
   font-size: 11px;
}

div.art-block select 
{
   width:96%;
}

span.art-button-wrapper.hover>.art-button, span.art-button-wrapper.hover>a.art-button:link
{
   color: #331F00 !important;
   text-decoration: none !important;
}

span.art-button-wrapper.active>.art-button, span.art-button-wrapper.active>a.art-button:link
{
   color: #D9E0E8 !important;
}
span.art-button-wrapper>span.art-button-l, span.art-button-wrapper>span.art-button-r
{
   display: block;
   position: absolute;
   top: 0;
   bottom: 0;
   margin: 0;
   padding: 0;
   background-image: url('../image/button.png');
   background-repeat: no-repeat;
}

span.art-button-wrapper>span.art-button-l
{
   left: 0;
   right: 6px;
   background-position: top left;
}

span.art-button-wrapper>span.art-button-r
{
   width: 6px;
   right: 0;
   background-position: top right;
}

span.art-button-wrapper.hover>span.art-button-l
{
   background-position: center left;
}

span.art-button-wrapper.hover>span.art-button-r
{
   background-position: center right;
}

span.art-button-wrapper.active>span.art-button-l
{
   background-position: bottom left;
}

span.art-button-wrapper.active>span.art-button-r
{
   background-position: bottom right;
}

span.art-button-wrapper input
{
   float: none !important;
}
        .style3
        {
            width: 291px;
        }
        #LinkButton1
        {
        	position:absolute;
            top: 193px;
            left: 50px;
        }
       .login
       {
       	 margin-left:503px;
            margin-right:auto;
            margin-top: 203px;
        }
      /*  #Panel2
        {
        	-moz-border-radius: 50px;
        border-radius: 30px 30px 0px 0px;
        	}*/
        </style>
</head>
<body style="height: 726px; width: 1247px; background-color:#e4dfd2; ">
    <form id="form1" runat="server">
    
    <asp:login cssclass="login" id="Login1" runat="server" backcolor="#EFF3FB" bordercolor="#B5C7DE" 
        borderpadding="4" borderstyle="Solid" borderwidth="1px" font-names="Verdana" 
        font-size="0.8em" forecolor="#333333" height="205px" width="359px" 
        onauthenticate="Login1_Authenticate">
        <instructiontextstyle font-italic="True" forecolor="Black" />
        <loginbuttonstyle backcolor="White" bordercolor="#507CD1" borderstyle="Solid" 
            borderwidth="1px" font-names="Verdana" font-size="0.8em" forecolor="#284E98" />
        <textboxstyle font-size="0.8em" />
        <titletextstyle backcolor="#507CD1" font-bold="True" font-size="0.9em" 
            forecolor="White" />
    </asp:login>
    
  
 

    
    <br />
    </form>
</body>
</html>
