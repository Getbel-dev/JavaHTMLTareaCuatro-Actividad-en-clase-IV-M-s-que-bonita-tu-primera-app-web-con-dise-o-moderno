<%-- 
    Document   : login.jsp
    Created on : Oct 19, 2026, 5:35:53 PM
    Author     : Administrador
--%>

<%@page import="my.webapp.login.UserClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B/GM4XqrwHnWXNOWMbloTmrYXZg10cakYGmpfsR/bbzQ6JAJI4ihuyADKLnBgrCe" crossorigin="anonymous">
        <script type="module" src="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-1a/pXj49ZQ1aHEmrJ+gMw1otqoVsYwlEnlD8mIfY2TV03r20Y0CN7uqx1tQogjPL" crossorigin="anonymous"></script>
        
    </head>
    <body>
        
        <% 
          UserClass user = (UserClass)session.getAttribute("User");
          String error = request.getParameter("error");
        %>
        
       <br>
         
       
         <div class="container d-flex justify-content-center">
             
             
             
            <div class="card" Style="width: 25rem">

                <div class="card-body">

                    <form method="POST" action="loginServlet">

                        <div class="form-floating mb-4">
                           <label for="txtemail">E-mail</label> 
                           <input name="txtemail" type="text" class="form-control" id="txtemail" placeholder="Juan12@gmail.com">
                          
                        </div>
                        <div class="form-floating mb-4">
                         <label for="txtpassword">Password</label>    
                        <input name="txtpassword" type="password"  class="form-control" id="txtpassword" placeholder="xxxxxxxxx">
                       
                        </div>
                         
                        <button class="btn-solid theme-primary">Log-In</button>
                    </form>
                    <%
                        if(error!= null){
                            
                    %>
                    <p><%=error%></p>
                    <%
                        }
                    %>
                </div>
            </div>
        </div> 
        
    </body>
</html>
