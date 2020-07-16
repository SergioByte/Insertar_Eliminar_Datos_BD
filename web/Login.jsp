<%-- 
    Document   : Login
    Created on : 24/06/2020, 11:05:21 PM
    Author     : Jack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body  style="
           background-color: #182c2e;
           background-image: linear-gradient(180deg, #182c2e 0%, #223e3e 19%, #182c2e 39%, #344b4c 60%, #284848 80%, #182c2e 100%);
           color: #FFFFFF; font-family: Agency FB;">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <form name="f_datos" action="Valida.jsp" method="POST">
            <table style="background:#000000" align ="center" border="0" cellspacing = "0" cellpading = "0" width="400px" height="350px">
                <thead>
                    <tr align = "center"><td colspan="2" style="background:#a23534"></td></tr>
                    <tr align = "center"><td colspan="2" style="background:#a23534"></td></tr>
                    <tr align = "center"><td colspan="2" style="background:#a23534"></td></tr>
                    <tr align = "center"><td colspan="2" style="background:#a23534"></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr><td ></td></tr>
                    <tr align = "center"><td colspan="2"><img src="logou.png" width="120px" height="120px" alt=""/> </td></tr>
                    <tr></tr>
                    <tr>
                        <th colspan="2">INICIA SESION</th>
                    </tr>
                    <tr></tr>
                </thead>
                <tbody>
                    <tr  ></tr>
                    <tr align = "center">
                        <td colspan="2"><font size=4>Usuario&nbsp;&nbsp;&nbsp;&nbsp;</font><input type="text" name="f_usuario" value=""  style="background: #000000; color: #ffffff"/></td>
                    </tr>
                    <tr  ></tr>
                    <tr align = "center">
                        <td colspan="2"><font size=4>Contraseña&nbsp;&nbsp;&nbsp;&nbsp;</font><input type="password" name="f_clave" value="" style="background: #000000; color: #ffffff"/></td>
                    </tr>
                    <tr  ></tr>
                    <tr  >
                        <td align = "right" colspan="2"><font size=4><input style="background:#a23534; color: #FFFFFF " type="submit" value="Iniciar sesion" name="f_ingresar" /></font></td>
                    </tr>
                    <tr align = "left">
                        <td colspan="2"><font size=2>Version 1.2.5</font></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
