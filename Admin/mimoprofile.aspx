<%@ Page Language="C#" AutoEventWireup="true" Inherits="mimoprofile" Codebehind="mimoprofile.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" href="css/layout.css" />
    <title></title>
    <style type="text/css">
        img
        {
        	position:absolute;
        	}
        .style1
        {
            width: 347px;
        }
    </style>
</head>
<body style="width: 1354px; height: 972px">
    <form id="form1" runat="server">
    <div style="height: 865px">
    <img alt="" 
         src="images/admin/IMG_0042(1).JPG" style="height: 274px; width: 204px"  /><br />
    <center><strong><marquee onmouseover="this.stop()" onmouseout="this.start()">Bienvenue Rachdi Mounir</marquee> </strong></center>
 <table style="height: 410px; width: 1649px"><tr> <td class="style1"> </td>
   <td> <article class="module width_quarter">
            <header>
                <h3>Messages</h3>
            </header>
            <div class="message_list">
                <div class="module_content">
                    <div class="message">
                        <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                        <p><strong>John Doe</strong></p>
                    </div>
                    <div class="message">
                        <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                        <p><strong>John Doe</strong></p>
                    </div>
                    <div class="message">
                        <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                        <p><strong>John Doe</strong></p>
                    </div>
                    <div class="message">
                        <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                        <p><strong>John Doe</strong></p>
                    </div>
                    <div class="message">
                        <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                        <p><strong>John Doe</strong></p>
                    </div>
                </div>
            </div>
            <footer>
                <form class="post_message">
                <input type="text" value="Message" onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;" />
                <input type="submit" class="btn_post_message" value="" />
                </form>
            </footer>
        </article></td></tr></table> 
    </div>
    </form>
</body>
</html>
