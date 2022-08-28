<%@page contentType="text/html" pageEncoding="UTF-8"%> 

<div class="header">
    <div class="header-left">
        <a href="index-2.html" class="logo">
            <img src="../assets/images/logo.png" height="35" alt=""> 
        </a>
    </div>
    <a id="toggle_btn" href="javascript:void(0);">
        <i class="fa fa-bars"></i>
    </a>
    <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar">
        <i class="fa fa-bars"></i>
    </a>
    <ul class="nav user-menu float-right">
        <li class="nav-item dropdown d-none d-sm-block">
            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                <i class="fa fa-bell-o"></i>
                <span class="badge badge-pill bg-danger float-right">3</span>
            </a>
            <div class="dropdown-menu notifications">
                <div class="topnav-dropdown-header">
                    <span>Notifications</span>
                </div>
                <div class="drop-scroll">
                    <ul class="notification-list">
                        <li class="notification-message">
                            <a href="activities.html">
                                <div class="media">
                                    <span class="avatar">
                                        <img alt="John Doe" src="assets/img/user.jpg" class="img-fluid">
                                    </span>
                                    <div class="media-body">
                                        <p class="noti-details">
                                            <span class="noti-title">John Doe</span> added new task <span class="noti-title">Patient appointment booking</span>
                                        </p>
                                        <p class="noti-time">
                                            <span class="notification-time">4 mins ago</span>
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </li> 
                    </ul>
                </div>
                <div class="topnav-dropdown-footer">
                    <a href="activities.html">View all Notifications</a>
                </div>
            </div>
        </li>
        <li class="nav-item dropdown d-none d-sm-block">
            <a href="javascript:void(0);" id="open_msg_box" class="hasnotifications nav-link">
                <i class="fa fa-comment-o"></i>
                <span class="badge badge-pill bg-danger float-right">8</span>
            </a>
        </li>
        <li class="nav-item dropdown has-arrow">
            <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                <span class="user-img">
                    <img class="rounded-circle" src="../assets/images/user.jpg" width="24" alt="Admin">
                    <span class="status online"></span>
                </span>
                <span>Admin</span>
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Thông tin tài khoản</a>
                <a class="dropdown-item" href="#s">Cài đặt</a>
                <a class="dropdown-item" href="#">Đăng xuất</a> 
            </div>
        </li>
    </ul>
    <div class="dropdown mobile-user-menu float-right">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            <i class="fa fa-ellipsis-v"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right">
            <a class="dropdown-item" href="#">Thông tin tài khoản</a>
            <a class="dropdown-item" href="#">Cài đặt</a>
            <a class="dropdown-item" href="#">Đăng xuất</a> 
        </div>
    </div>
</div>