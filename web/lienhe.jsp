<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên hệ</title>
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
                                <li class="active">Liên hệ</li>
                            </ul>
                        </div>                   
                    </div>
                </div> 
            </div>
        </div> 
        <div class="body-content" style="margin: 20px 0;">
            <div class='container'>
                 <div class="contact-page">
                    <div class="row">
                        <div class="col-md-12 contact-map outer-bottom-vs">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3930.1304137015104!2d106.3450027152362!3d9.923095192903915!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0175f54bda043%3A0x6f824189c1a63ad0!2zMTI2IE5ndXnhu4VuIFRoaeG7h24gVGjDoG5oLCBQaMaw4budbmcgNSwgVHLDoCBWaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1661663782200!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <div class="col-md-8 contact-form">
                            <div class="col-md-12 contact-title">
                                <h4>Thông tin liên hệ</h4>
                            </div>
                            <div class="col-md-4 ">
                                <form class="register-form" role="form">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputName">Họ tên <span>*</span>
                                        </label>
                                        <input type="email" class="form-control unicase-form-control text-input" id="exampleInputName" placeholder="">
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-4">
                                <form class="register-form" role="form">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputEmail1">Email <span>*</span>
                                        </label>
                                        <input type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" placeholder="">
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-4">
                                <form class="register-form" role="form">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputTitle">Tiêu đề <span>*</span>
                                        </label>
                                        <input type="email" class="form-control unicase-form-control text-input" id="exampleInputTitle" placeholder="Title">
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-12">
                                <form class="register-form" role="form">
                                    <div class="form-group">
                                        <label class="info-title" for="exampleInputComments">Nội dung <span>*</span>
                                        </label>
                                        <textarea class="form-control unicase-form-control" id="exampleInputComments"></textarea>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-12 outer-bottom-small m-t-20">
                                <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Gửi liên hệ</button>
                            </div>
                        </div>
                        <div class="col-md-4 contact-info">
                            <div class="contact-title">
                                <h4>Thông tin cửa hàng</h4>
                            </div>
                            <div class="clearfix address">
                                <span class="contact-i">
                                    <i class="fa fa-map-marker"></i>
                                </span>
                                <span class="contact-span">126 Nguyễn Thiện Thành, TP Trà Vinh</span>
                            </div>
                            <div class="clearfix phone-no">
                                <span class="contact-i">
                                    <i class="fa fa-mobile"></i>
                                </span>
                                <span class="contact-span">039 123-4567 <br>+039 456-7890 </span>
                            </div>
                            <div class="clearfix email">
                                <span class="contact-i">
                                    <i class="fa fa-envelope"></i>
                                </span>
                                <span class="contact-span">
                                    <a href="#">admin@marazzo.com</a>
                                </span>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>   
        <jsp:include page="includes/footer.jsp" />        
        <jsp:include page="includes/script.jsp" />
    </body>
</html>
