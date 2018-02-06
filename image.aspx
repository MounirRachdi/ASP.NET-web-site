<%@ Page Language="C#" AutoEventWireup="true" Inherits="image" Codebehind="image.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style type="text/css">
#outerCircleText {
/* Option - NE METTEZ PAS DE TAILLE DE POLICE DE CARACTÈRES ICI, */
font-style: italic;
font-weight: bold;
font-family: 'comic sans ms', verdana, arial;
color: #000000;
/* fin Option */
/* ne pas editer */
position: absolute;top: 0;left: 0;z-index: 3000;cursor: default;}
#outerCircleText div {position: relative;}
#outerCircleText div div {position: absolute;top: 0;left: 0;text-align: center;}
/* fin */
</style>
<script type="text/javascript">
;(function(){
// votre texte ici
var msg = " Bienvenue sur SPNet Solutions ! ";
/* RESTE DES VALEURS ÉDITABLES CI-DESSOUS */
// taille de la police d'ecriture
var size = 24;
// pour un cercle mettre les 2 variables à 1, pour l'ovale mettre l'une des deux à 2
// D'autres nombres et des décimales peuvent avoir des effets intéressants, garder ces minima (0 à 3)


var circleY = 0.75; var circleX = 2;
// espace entre les lettres, decimales autorisees pas de nombre negatif
var letter_spacing = 5;
// diametre du cercle ou de l'ovale 
// decimales autorisees pas de nombre negatif
var diameter = 10;
// vitesse de rotation decimale permises
var rotation = 0.4;
//vitesse de reaction decimale permises
var speed = 0.1;
////////////////////// NE PLUS EDITER //////////////////////
if (!window.addEventListener && !window.attachEvent || !document.createElement) return;
msg = msg.split('');
var n = msg.length - 1, a = Math.round(size * diameter * 0.208333), currStep = 20,
ymouse = a * circleY + 20, xmouse = a * circleX + 20, y = [], x = [], Y = [], X = [],
o = document.createElement('div'), oi = document.createElement('div'),
b = document.compatMode && document.compatMode != "BackCompat"? 
document.documentElement : document.body,
mouse = function(e){
e = e || window.event;
ymouse = !isNaN(e.pageY)? e.pageY : e.clientY; 
xmouse = !isNaN(e.pageX)? e.pageX : e.clientX; 
},
makecircle = function(){ 
if(init.nopy){
o.style.top = (b || document.body).scrollTop + 'px';
o.style.left = (b || document.body).scrollLeft + 'px';
};
currStep -= rotation;
for (var d, i = n; i > -1; --i){ 
d = document.getElementById('iemsg' + i).style;
d.top = Math.round(y[i] + a * Math.sin((currStep + i) / letter_spacing) * circleY - 15) + 'px';
d.left = Math.round(x[i] + a * Math.cos((currStep + i) / letter_spacing) * circleX) + 'px';
};
},
drag = function(){
y[0] = Y[0] += (ymouse - Y[0]) * speed;
x[0] = X[0] += (xmouse - 20 - X[0]) * speed;
for (var i = n; i > 0; --i){
y[i] = Y[i] += (y[i-1] - Y[i]) * speed;
x[i] = X[i] += (x[i-1] - X[i]) * speed;
};
makecircle();
},
init = function(){ 
if(!isNaN(window.pageYOffset)){
ymouse += window.pageYOffset;
xmouse += window.pageXOffset;
} else init.nopy = true;
for (var d, i = n; i > -1; --i){
d = document.createElement('div'); d.id = 'iemsg' + i;
d.style.height = d.style.width = a + 'px';
d.appendChild(document.createTextNode(msg[i]));
oi.appendChild(d); y[i] = x[i] = Y[i] = X[i] = 0;
};
o.appendChild(oi); document.body.appendChild(o);
setInterval(drag, 25);
},
ascroll = function(){
ymouse += window.pageYOffset;
xmouse += window.pageXOffset;
window.removeEventListener('scroll', ascroll, false);
};
o.id = 'outerCircleText'; o.style.fontSize = size + 'px';
if (window.addEventListener){
window.addEventListener('load', init, false);
document.addEventListener('mouseover', mouse, false);
document.addEventListener('mousemove', mouse, false);
if (/Apple/.test(navigator.vendor))
window.addEventListener('scroll', ascroll, false);
}
else if (window.attachEvent){
window.attachEvent('onload', init);
document.attachEvent('onmousemove', mouse);
};
}();
</script>
<style type="text/css">

webkit-animation: spin 1s infinite linear;

@-webkit-keyframes spin {
    0%   {-webkit-transform: rotate(0deg)}
    100% {-webkit-transform: rotate(360deg)}
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <span >Bienvenue</span>
    <p style="color: #FFFFFF" align="center">NOUS VOUS PROPOSONS UNE SOLUTION INTERNET GLOBALE</p>
    &nbsp;</div>
    </form>
</body>
</html>
