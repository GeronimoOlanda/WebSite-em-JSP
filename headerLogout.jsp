<%-- 
    Document   : headerLogout
    Created on : Jun 3, 2020, 2:58:16 PM
    Author     : Geronimo Olanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
                <div class="navbar navbar-default navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                        </div>
                      
                        <div class="navbar-collapse collapse ">
                            <ul class="nav navbar-nav">
                                <li><a href="iniciallog.jsp">Pagina Inicial</a></li>
                                <li><a href="galerialog.jsp">Galeria</a></li>
                                <li><a href="treinos.jsp">Treinos</a></li>
                                <li><a href="treinospossuidos.jsp">Dashboard</a></li>
                                <li><a href="logout.jsp"><%=session.getAttribute("login")%> (Logout)</a></li>
                                <li><a href="contatolog.jsp">Contatos</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </header>