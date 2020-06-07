<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Entre em contato conosco</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Bootstrap 3 template for corporate business" />
        <!-- css -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/cubeportfolio.min.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />


        <!-- Theme skin -->
        <link id="t-colors" href="skins/default.css" rel="stylesheet" />

        <!-- boxed bg -->
        <link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />
        <link rel="icon" type="image/png" href="img/icon_academia.png" >

    </head>

    <body>


        <div id="wrapper">
            <!-- start header -->
            <!-- start header -->
            <%@ include file="headerLogout.jsp" %>
            <!-- end header -->
            <section id="content">

                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h2>Entre em Contato <small>Digite os dados abaixo para entrar em contato conosco</small></h2>
                            <hr class="colorgraph">
                            <div id="sendmessage">Sua mensagem foi enviada</div>
                            <div id="errormessage"></div>
                            <form action="" method="post" role="form" class="contactForm">
                                <div class="form-group">
                                    <input type="text" name="nome" class="form-control" id="nome" placeholder="Seu nome" data-rule="minlen:4"
                                           data-msg="Insira seu nome" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email"
                                           data-msg="Por favor, insira um email valido" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="assunto" id="assunto" placeholder="Assunto" data-rule="minlen:4"
                                           data-msg="Por favor, entre com mais de 8 caracter" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Insira a sua mensagem aqui..."
                                              placeholder="Insira a sua mensagem aqui..."></textarea>
                                    <div class="validation"></div>
                                </div>

                                <div class="text-center"><button type="submit" class="btn btn-theme btn-block btn-md">Enviar Mensagem</button></div>
                            </form>
                            <hr class="colorgraph">

                        </div>
                    </div>
                </div>
            </section>
        </div>
        <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
        <!-- javascript
          ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/jquery.min.js"></script>
        <script src="js/modernizr.custom.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.appear.js"></script>
        <script src="js/stellar.js"></script>
        <script src="js/classie.js"></script>
        <script src="js/uisearch.js"></script>
        <script src="js/jquery.cubeportfolio.min.js"></script>
        <script src="js/google-code-prettify/prettify.js"></script>
        <script src="js/animate.js"></script>
        <script src="js/custom.js"></script>

        <script src="contactform/contactform.js"></script>

    </body>

</html>
