
<%@ page import="java.sql.*" %>  

<%
    if (session.getAttribute("login") != null) //check login session user not access or back to index.jsp page
    {
        response.sendRedirect("dashboard.jsp");
    }
%>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver"); //load driver

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/academia", "root", ""); //create connection

        if (request.getParameter("btn_login") != null) //check login button click event not null
        {
            String dbemail, dbsenha;
            String email, senha;

            email = request.getParameter("txt_email"); //txt_email
            senha = request.getParameter("txt_password"); //txt_password
            PreparedStatement pstmt = null; //create statement

            pstmt = con.prepareStatement("select * from cliente where email=? AND senha=?"); //sql select query 
            pstmt.setString(1, email);
            pstmt.setString(2, senha);

            ResultSet rs = pstmt.executeQuery(); //execute query and store in resultset object rs.

            if (rs.next()) {
                dbemail = rs.getString("email");
                dbsenha = rs.getString("senha");

                if (email.equals(dbemail) && senha.equals(dbsenha)) {
                    session.setAttribute("login", dbemail); //session name is login and store fetchable database email address
                    response.sendRedirect("iniciallog.jsp"); //after login success redirect to welcome.jsp page
                }
            } else {
                request.setAttribute("errorMsg", " email ou senha invalidos!"); //invalid error message for email or password wrong
            }

            con.close(); //close connection	
        }

    } catch (Exception e) {
        out.println(e);
    }
%>

<!DOCTYPE html>
<html>

     <head>
        <meta charset="utf-8">
        <title>Efetue Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Bootstrap 3 template for corporate business" />
        <!-- css -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="plugins/flexslider/flexslider.css" rel="stylesheet" media="screen" />
        <link href="css/cubeportfolio.min.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        
       
        <link rel="stylesheet" href="css/login-register.css">
        <!-- Theme skin -->
        <link id="t-colors" href="skins/default.css" rel="stylesheet" />

        <!-- boxed bg -->
        <link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />
        <link rel="icon" type="image/png" href="img/icon_academia.png" >

    </head>
 

       
 
    <body>
        <%@ include file="header.jsp" %>
        <div class="main-content">

            <form class="form-register" method="post" name="myform" onsubmit="return validate();">

                <div class="form-register-with-email">

                    <div class="form-white-background">

                        <div class="form-title-row">
                            <h1>Login</h1>
                        </div>
                        <p style="color:red">				   		
                            <%
                                if (request.getAttribute("errorMsg") != null) {
                                    out.println(request.getAttribute("errorMsg")); //error message for email or password 
                                }
                            %>
                        </p>
                        </br>
                        <div class="form-row">
                            <label>
                                <span>Email</span>
                                <input type="text" name="txt_email" id="email" placeholder="Digite seu email...">
                            </label>
                        </div>
                        <div class="form-row">
                            <label>
                                <span>Senha</span>
                                <input type="password" name="txt_password" id="senha" placeholder="Digite sua senha...">
                            </label>
                        </div>
                        <input type="submit" name="btn_login" value="Login">
                    </div>
                    <a href="register.jsp" class="form-log-in-with-existing">Você não tem conta? <b> Registre-se</b></a>
                </div>
            </form>
        </div>
        <script>

            function validate()
            {
                var email = document.myform.txt_email;
                var psenha = document.myform.txt_password;

                if (email.value == null || email.value == "") //check email textbox not blank
                {
                    window.alert("Por favor Digite o email ?"); //alert message
                    email.style.background = '#f08080';
                    email.focus();
                    return false;
                }
                if (senha.value == null || senha.value == "") //check password textbox not blank
                {
                    window.alert("Por favor Digite a senha ?"); //alert message
                    senha.style.background = '#f08080';
                    senha.focus();
                    return false;
                }
            }
        </script>              
        <script src="js/jquery.min.js"></script>
        <script src="js/modernizr.custom.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="plugins/flexslider/jquery.flexslider-min.js"></script>
        <script src="plugins/flexslider/flexslider.config.js"></script>
        <script src="js/jquery.appear.js"></script>
        <script src="js/stellar.js"></script>
        <script src="js/classie.js"></script>
        <script src="js/uisearch.js"></script>
        <script src="js/jquery.cubeportfolio.min.js"></script>
        <script src="js/google-code-prettify/prettify.js"></script>
        <script src="js/animate.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>
