<%@page import="com.lucui.models.BaiViet"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bài viết</title>
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./assets/css/main.css"/>
        <link rel="stylesheet" href="./assets/css/blue.css"/>
        <link rel="stylesheet" href="./assets/css/owl.carousel.css"/>
        <link rel="stylesheet" href="./assets/css/owl.transitions.css"/>
        <link rel="stylesheet" href="./assets/css/animate.min.css"/>        
        <link rel="stylesheet" href="./assets/css/rateit.css"/>  
        <link rel="stylesheet" href="./assets/css/bootstrap-select.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.css" integrity="sha512-ITS8GbPjCRA7c/PBl6Kqb9XjvQbKMBXpzEmpi7BgRwf6mUCySmHbF9opWfVUQvbdiYouDYxhxttWS+wyq4l+Ug==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
        <link href="https://fonts.googleapis.com/css?family=Barlow:200,300,300i,400,400i,500,500i,600,700,800" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <style>
            .img-responsive {
                width: 100%;
                height: 400px;
                object-fit: cover;
            }
        </style>
    </head>
    <body class="cnt-home"> 
        <jsp:include page="includes/header.jsp" ></jsp:include>
        <div class="body-content outer-top-vs">
            <div class="container">
                <div class="panel">
                    <div class="panel-body">
                         <div class="breadcrumb-inner">
                            <ul class="list-inline list-unstyled">
                                <li><a href="<%= request.getContextPath() %>/">Trang chủ</a></li>
                                <li class="active">Bài viết</li>
                            </ul>
                        </div>                   
                    </div>
                </div> 
            </div>
        </div> 
        <div class="body-content" style="margin-top: 20px;">
            <div class='container'>
                <div class='row'>
                    <c:forEach var="baiviet" items="${baiviets}" >
                        <div class='blog-page'>
                            <div class='col-xs-12 col-sm-9 col-md-9 rht-col'>
                                <div class='blog-post  wow fadeInUp animated' style='visibility: visible; animation-name: fadeInUp;'>
                                    <a href='#'>
                                        <img class='img-responsive' src='<c:out value="${baiviet.getHinhAnh()}" />' alt='' />
                                    </a>
                                    <h1>
                                        <a href='#'><c:out value="${baiviet.getTieuDe()}" /></a>
                                    </h1>
                                    <span class='author'>Admin</span> 
                                    <span class='date-time'><c:out value="${baiviet.getNgayTao()}" /></span>
                                    <p><c:out value="${baiviet.getNoiDung().length() > 100 ? baiviet.getNoiDung().substring(0, 100) : baiviet.getNoiDung()}" /></p>
                                    <a href='#' class='btn btn-upper btn-primary read-more'>Đọc thêm</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach> 
                </div>
            </div>
        </div>   
        <script src="./assets/js/jquery-1.11.1.min.js"></script> 
        <script src="./assets/js/bootstrap.min.js"></script> 
        <script src="./assets/js/bootstrap-hover-dropdown.min.js"></script> 
        <script src="./assets/js/owl.carousel.min.js"></script> 
        <script src="./assets/js/echo.min.js"></script> 
        <script src="./assets/js/jquery.easing-1.3.min.js"></script> 
        <script src="./assets/js/bootstrap-slider.min.js"></script> 
        <script src="./assets/js/jquery.rateit.min.js"></script> 
        <script src="./assets/js/lightbox.min.js"></script> 
        <script src="./assets/js/bootstrap-select.min.js"></script> 
        <script src="./assets/js/wow.min.js"></script> 
        <script src="./assets/js/scripts.js"></script>
    </body>
</html>
