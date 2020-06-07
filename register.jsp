<%@ page import="java.sql.*" %>  

<%
if(session.getAttribute("login")!=null) //check login session user not access or back to register.jsp page
{
	response.sendRedirect("index.jsp");
}
%>


<%
try
{
	Class.forName("com.mysql.jdbc.Driver"); //load driver
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/academia","root",""); //create connection
	
	if(request.getParameter("btn_register")!=null) //Verifica se o botao nao esta vazio
	{
		String nome,telefone,email,senha;
		
		nome=request.getParameter("txt_nome");
                telefone=request.getParameter("txt_telefone");
		email=request.getParameter("txt_email"); //txt_email
		senha=request.getParameter("txt_password"); //txt_senha
		
		PreparedStatement pstmt=null; //cria o statement
		
		pstmt=con.prepareStatement("insert into cliente(nome,telefone,email,senha) values(?,?,?,?)"); //sql insert query
                pstmt.setString(1,nome);
                pstmt.setString(2,telefone);
		pstmt.setString(3,email);
		pstmt.setString(4,senha);
		
		pstmt.executeUpdate(); //execute query
		
		request.setAttribute("successMsg","Registro efetuado com sucesso...! Por Favor, efetue Login"); //register success messeage

		con.close(); //close connection
	}
}
catch(Exception e)
{
	out.println(e);
}
%>  
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Faça seu Registro</title>

	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/login-register.css">
	
	<!-- javascript for registeration form validation-->
	<script>	
	
		function validate()
		{
			var nome_valid=/^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/;
			var email_valid= /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/; //pattern valid email validation
			var password_valid=/^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/; //pattern password allowed A to Z, a to z, 0-9, !@#$%&*()<> charecter 
			var telefone_valid=/^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/;
            var nome = document.getElementById("telefone");
            var telefone = document.getElementById("telefone");
            var email = document.getElementById("email"); //textbox id email
            var password = document.getElementById("password"); //textbox id password
           
			if(!email_valid.test(email.value) || email.value=='') 
            {
				alert("Insira um email valido...!");
                email.focus();
                email.style.background = '#f08080';
                return false;                    
            }
			if(!password_valid.test(password.value) || password.value=='') 
            {
				alert("A Senha deve ter entre 6 te 12  e conter !@#$%&*()<> caracter");
                password.focus();
                password.style.background = '#f08080';
                return false;                    
            }
		}
		
	</script>	

</head>

<body>

 

    <div class="main-content">

        <form class="form-register" method="post" onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Register</h1>
                    </div>
				   
					<p style="color:green">				   		
					<%
					if(request.getAttribute("successMsg")!=null)
					{
						out.println(request.getAttribute("successMsg")); //register success message
					}
					%>
					</p>
				   
				   </br>
				 
                     <div class="form-row">
                        <label>
                            <span>Nome</span>
                            <input type="text" name="txt_nome" id="nome" placeholder="Digite seu nome...">
                        </label>
                    </div>
                    <div class="form-row">
                        <label>
                            <span>Telefone</span>
                            <input type="text" name="txt_telefone" id="telefone" placeholder="Digite seu telefone...">
                        </label>
                    </div>
                    <div class="form-row">
                        <label>
                            <span>Email</span>
                            <input type="text" name="txt_email" id="email" placeholder="Digite seu email...">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Senha</span>
                            <input type="password" name="txt_password" id="password" placeholder="Digite sua senha...">
                        </label>
                    </div>

					<input type="submit" name="btn_register" value="Register">
					
                </div>
				
                <a href="login.jsp" class="form-log-in-with-existing">Já tem cadastro? <b> Faça o Login aqui! </b></a>

            </div>

        </form>

    </div>

</body>

</html>
