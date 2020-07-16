<%@page import="java.sql.*" %>
<%@page import="bd.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos Estudiante</title>
        <%!
            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            String s_accion;
            String s_ideditorial;
            String s_nombre;
            String s_estado;
        %>
    </head>
    <body style="
          background-color: #182c2e;
          background-image: linear-gradient(180deg, #182c2e 0%, #223e3e 19%, #182c2e 39%, #344b4c 60%, #284848 80%, #182c2e 100%);
          color: #FFFFFF; font-family: Agency FB;">
        <form name="AgregareditorialForm" action="EDITORIALCLASE.jsp" method="GET">
            <table border="0" align ="center">
                <thead>
                    <tr>
                        <th colspan="2">Agregar editorial</th>        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nombre: </td>
                        <td><input type="text" name="f_nombre" value="" maxlength="30" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Estado: </td>
                       <td><input type="text" name="f_estado" value="" maxlength="1" size="2"/></td>
                    </tr>
                    <tr align="right">
                        <td colspan="2">
                            <input type="submit" value="Agregar" name="f_agregar" />
                            <input type="hidden" name="f_accion" value="C" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
        
        <br>
        <br>
        
        <table border="1" table style="background:#000000" align ="center"  cellspacing = "0" cellpading = "0" width="200px" height="200px">
            <thead>
                <tr>
                    <th colspan="8">Datos autor</th>
                </tr>
                <tr>
                    <th>N°</th>
                    <th>Nombre</th>
                    <th>Estado</th>
                    <th>Eliminar</th>
                    <th>Editar</th>
                </tr>
            </thead>

        <%
            try{
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                
                s_accion = request.getParameter("f_accion");
                s_ideditorial = request.getParameter("f_ideditorial");
                
                if (s_accion!=null) {
                    if (s_accion.equals("E")) {
                        consulta =  "   delete from skereeditorial "
                                    + " where "
                                    + " ideditorial = " + s_ideditorial + "; ";
                        //out.print(consulta);
                        pst = cn.prepareStatement(consulta);
                        pst.executeUpdate();
                            
                    }else if (s_accion.equals("C")) {
                        s_nombre = request.getParameter("f_nombre");
                        s_estado = request.getParameter("f_estado");
                        consulta =  "   insert into "
                                    + " skereeditorial(nombre, estado) "
                                    + " values ('"+ s_nombre +"','"+ s_estado +"')";
                        //out.print(consulta);
                        pst = cn.prepareStatement(consulta);
                        pst.executeUpdate();
                    }
                }
                consulta= " Select ideditorial, nombre, estado"
                        + " from skereeditorial ";
                //out.print(consulta);
                pst = cn.prepareStatement(consulta);
                rs = pst.executeQuery();
                int num = 0;
                String ide;
                while (rs.next()) {  
                    ide = rs.getString(1);
                    num++;

                    %>
                    <tr>
                        <td><%out.print(num);%></td>
                        <td><%out.print(rs.getString(2));%></td>
                        <td><%out.print(rs.getString(3));%></td>
                        <td><a href="EDITORIALCLASE.jsp?f_accion=E&f_ideditorial=<%out.print(ide);%>">Eliminar</a></td>
                        <td>Editar</td>
                    </tr>                    
                    <%
                    }
            }catch(Exception e){
                out.print("Error SQL");
            }
        
        %>
        </table>
         <center><a style="background:#a23534; color: #FFFFFF" href="Menu.jsp"><font size=4>Atras</font></a></center>
    </body>
</html>
