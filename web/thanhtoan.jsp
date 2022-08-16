<%@page import="com.luccui.entities.Item"%>
<%@page import="java.util.Map"%>
<%@page import="com.lucui.models.GioHang"%>
<%@page import="com.lucui.models.SanPham"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="com.luccui.utils.CurrencyFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang thanh toán</title>
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
            .price-container .price {
                font-size: 30px;
                font-weight: bold;
            }
            .quantity-container {
                display: flex;
                flex-direction: row;
                align-items: center;
            }
            .quantity-container .input-qty {
                width: 100px;
                margin-right: 20px;
                padding: 18px 10px;
            }
            .quantity-container .input-qty:focus {
                box-shadow: none;
            }
            tbody > tr > td {
                padding: 20px 0 !important;
                font-size: 16px;
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
                                <li class="active">Thanh toán</li>
                            </ul>
                        </div>                   
                    </div>
                </div> 
            </div>
        </div> 
        <div class="body-content" style="margin-top: 20px;">
            <div class="container">
                <div class="checkout-box ">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <table class="table">
                                    <thead>
                                        <tr>
                                            <th class='text-left'>Mã sản phẩm</th>
                                            <th>Tên sản phẩm</th>
                                            <th class='' style='width: 200px;'>Số lượng</th>
                                            <th class=''>Đơn giá</th>
                                            <th class="text-right">Thành tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                           GioHang giohang = (GioHang)session.getAttribute("GIO_HANG");
                                           if(giohang != null) {
                                               for(Map.Entry item : giohang.getItems().entrySet()) {
                                                    Item it = (Item)item.getValue(); 
                                                    out.print("<tr>");
                                                    out.print("<td>" + it.getSanPham().getMaSanPham() + "</td>");
                                                    out.print("<td class='ml-1'>" + it.getSanPham().getTenSanPham() + "</td>");
                                                    out.print("<td style='width: 200px;'>"
                                                            + "<form action='./gio-hang' >"
                                                             + "<input name='action' value='updateCart' type='hidden' />"
                                                             + "<input name='id' value='" + it.getSanPham().getId() + "' type='hidden' />"
                                                             + "<div style='display: flex'>"
                                                             + "<input name='soluong' min='1' value='" + it.getSoLuong() + "' class='form-control unicase-form-control text-input ' style='width: 80px' type='number' />"
                                                             + "<button class='btn'><i class='fa fa-refresh'></i></button>"
                                                             + "</div>"
                                                             + "</form>"
                                                            + "</td>");
                                                    out.print("<td >" + CurrencyFormat.VND(it.getSanPham().getGiaKM()).substring(4) + "đ</td>");
                                                    out.print("<td style='font-weight: bold; text-align: right;'>" + CurrencyFormat.VND(it.getSanPham().getGiaKM() * it.getSoLuong()).substring(4) + "đ</td>"); 
                                                    out.print("</tr>");
                                                }
                                           } else {
                                               out.print("<tr><td class='text-center' colspan='5'>Không tìm thấy sản phẩm nào trong giỏ hàng</td></tr>");
                                           }
                                        %>
                                        <tr> 
                                            <td colspan="5" style="text-align: right;">
                                                <span>Tạm tính: </span>
                                                <b style="font-size: 20px; color: #157ed2"><%= CurrencyFormat.VND(giohang != null ? giohang.getTotal() : 0).substring(4) %> đ</b>
                                            </td>
                                        </tr>
                                    </tbody>
                               </table>
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-9 col-md-9 rht-col">
                            <div class="panel-group checkout-steps" id="accordion">
                                <!-- checkout-step-01  -->
                                <div class="panel panel-default checkout-step-01">
                                    <!-- panel-heading -->
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">
                                            <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseOne">
                                                <span>1</span>
                                                Thông tin tài khoản
                                            </a>
                                        </h4>
                                    </div> 
                                    <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;"> 
                                        <div class="panel-body">
                                            <div class="row"> 
                                                <div class="col-md-6 col-sm-6 already-registered-login">
                                                    <h4 class="checkout-subtitle">Bạn đã có tài khoản ?</h4>
                                                    <p class="text title-tag-line">Vui lòng đăng nhập ở phía dưới:</p>
                                                    <form class="register-form" role="form">
                                                        <div class="form-group">
                                                            <label class="info-title" for="exampleInputEmail1">Email <span>*</span>
                                                            </label>
                                                            <input type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" placeholder="">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="info-title" for="exampleInputPassword1">Mật khẩu <span>*</span>
                                                            </label>
                                                            <input type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" placeholder="">
                                                            <a href="#" class="forgot-password">Quên mật khẩu?</a>
                                                        </div>
                                                        <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Đăng nhập</button>
                                                    </form>
                                                </div>
                                                <div class="col-md-6 col-sm-6 guest-login">
                                                    <h4 class="checkout-subtitle">Đăng nhập tài khoản</h4>  
                                                    <form class="register-form" role="form">
                                                        <div class="radio radio-checkout-unicase">
                                                            <input id="guest" type="radio" name="text" value="guest" checked="">
                                                            <label class="radio-button guest-check" for="guest">Đăng ký khách</label>
                                                            <br>
                                                            <input id="register" type="radio" name="text" value="register">
                                                            <label class="radio-button" for="register">Đăng ký</label>
                                                        </div>
                                                    </form> 
                                                    <h4 class="checkout-subtitle outer-top-vs"></h4> 
                                                    <button type="submit" class="btn-upper btn btn-primary checkout-page-button checkout-continue ">Tiếp tục</button>
                                                </div>   
                                            </div>
                                        </div> 
                                    </div> 
                                </div> 
                                <form action="./thanh-toan" method="POST">
                                    <div class="panel panel-default checkout-step-02">
                                        <div class="panel-heading">
                                            <h4 class="unicase-checkout-title">
                                                <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseTwo">
                                                    <span>2</span>
                                                    Thông tin nhận hàng
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" style="height: 0px;">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="info-title" for="">Họ tên nhận hàng<span>*</span></label>
                                                            <input name="ho_ten" type="text" class="form-control unicase-form-control text-input" id="exampleInputPassword1" placeholder=""> 
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="info-title" for="">Số điện thoại<span>*</span></label>
                                                            <input name="so_dien_thoai" type="text" class="form-control unicase-form-control text-input" id="exampleInputPassword1" placeholder=""> 
                                                        </div>
                                                    </div> 
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="info-title" for="">Ghi chú nhận hàng</label>
                                                            <textarea name="ghi_chu" type="text" class="form-control unicase-form-control text-input" placeholder=""></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="panel panel-default checkout-step-03">
                                        <div class="panel-heading">
                                            <h4 class="unicase-checkout-title">
                                                <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseThree">
                                                    <span>3</span>Thông tin địa chỉ </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse address" style="height: 0px;">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Tỉnh/Thành phố</label>
                                                            <select v-model="chondiadiem.tinh" name="tinh" class="form-control unicase-form-control text-input">
                                                                <option 
                                                                    v-for="tinh in diachi.tinh"
                                                                    :key="tinh.ProvinceID"
                                                                    :value="tinh.ProvinceID"
                                                                >
                                                                    {{ tinh.ProvinceName }}
                                                                </option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Quận/Huyện</label>
                                                            <select 
                                                                v-model="chondiadiem.huyen" 
                                                                name="huyen" 
                                                                class="form-control unicase-form-control text-input"
                                                                >
                                                                <option 
                                                                    v-for="huyen in diachi.huyen"
                                                                    :key="huyen.DistrictID"
                                                                    :value="huyen.DistrictID"
                                                                >
                                                                    {{ huyen.DistrictName }}
                                                                </option> 
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Phường xã</label>
                                                            <select v-model="chondiadiem.xa" name="xa" class="form-control unicase-form-control text-input">
                                                                <option 
                                                                    v-for="xa in diachi.xa"
                                                                    :key="xa.WardCode"
                                                                    :value="xa.WardCode"
                                                                >
                                                                    {{ xa.WardName }}
                                                                </option> 
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="info-title" for="">Chi tiết địa chỉ<span>*</span></label>
                                                            <input name="dia_chi" type="text" class="form-control unicase-form-control text-input" id="exampleInputPassword1" placeholder=""> 
                                                        </div>
                                                    </div> 
                                                </div> 
                                            </div> 
                                        </div>
                                        <div class="row" style="margin-top: 20px;">
                                            <div class="col-md-12 d-flex justify-content-end">
                                                <button class="btn btn-primary">Thanh toán</button>
                                            </div>
                                        </div>
                                    </div> 
                                </form>
                            </div> 
                        </div>
                        <div class="col-xs-12 col-sm-3 col-md-3 sidebar"> 
                            <div class="checkout-progress-sidebar ">
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="unicase-checkout-title">Quy trình đặt hàng</h4>
                                        </div>
                                        <div class="">
                                            <ul class="nav nav-checkout-progress list-unstyled">
                                                <li>
                                                    <a href="#">Kiểm tra giỏ hàng</a>
                                                </li>
                                                <li>
                                                    <a href="#">Điền thông tin</a>
                                                </li>
                                                <li>
                                                    <a href="#">Chọn địa chỉ</a>
                                                </li>
                                                <li>
                                                    <a href="#">Chọn phương thức thanh toán</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div> 
                </div> 
            </div> 
        </div>   
        <jsp:include page="includes/footer.jsp" />         
        <jsp:include page="includes/script.jsp" /> 

        <script src="https://unpkg.com/vue@3"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script> 
        <script>
            const { createApp, onMounted, reactive, watch } = Vue;
            
            createApp({
                setup() {
                    const chondiadiem = reactive({
                        tinh: '',
                        huyen: '',
                        xa: ''
                    })
                    const diachi = reactive({
                        tinh: [],
                        huyen: [],
                        xa: []
                    });
                    
                    onMounted(() => {
                        fetchTinh();
                    })
                    const fetchTinh = async () => {
                        const { data } = await axios.get('http://localhost:8000/webbanhang-api/tinh.php');
                        diachi.tinh = JSON.parse(data)['data']; 
                    } 
//                    const fetchXa = async (huyen) => {
//                        const { data } = await axios.get(`http://localhost:8000/webbanhang-api/xa.php?huyen=${huyen}`);
//                        diachi.xa = JSON.parse(data)['data'];
//                    }
                    watch(() => chondiadiem.tinh, async (newValue) => {  
                        const { data } = await axios.get("http://localhost:8000/webbanhang-api/huyen.php?tinh=" + newValue); 
                        diachi.huyen = JSON.parse(data)['data'];
                    }, { deep: true });
                    watch(() => chondiadiem.huyen, async (newValue) => {  
                        const { data } = await axios.get("http://localhost:8000/webbanhang-api/xa.php?huyen=" + newValue); 
                        diachi.xa = JSON.parse(data)['data'];
                    }, { deep: true });
                    watch(() => chondiadiem.xa, async (newValue) => {  
                        const params = {
                            'to_district_id': chondiadiem.huyen,
                            'to_ward_code': newValue,    
                        };
                        console.log(params)
                        const { data } = await axios.post("http://localhost:8000/webbanhang-api/fee.php", params); 
                        console.log(data)
//                        diachi.xa = JSON.parse(data)['data'];
                    }, { deep: true });
                    return {
                        diachi,
                        chondiadiem
                    }
                }
            }).mount(".address");
        </script>
    </body>
</html>
