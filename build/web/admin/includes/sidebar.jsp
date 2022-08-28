<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li class="menu-title">Trang chủ</li>
                <li class="active">
                    <a href="<%= request.getContextPath() %>/admin/trang-chu">
                        <i class="fa fa-dashboard"></i>
                        <span>Bảng điều khiển</span>
                    </a>
                </li> 
                <li class="menu-title">Sản phẩm</li>
                <li class="">
                    <a href="<%= request.getContextPath() %>/admin/san-pham">
                        <i class="fa fa-cube"></i>
                        <span>Danh sách</span>
                    </a>
                </li> 
                
                <li class="">
                    <a href="<%= request.getContextPath() %>/admin/san-pham?action=create">
                        <i class="fa fa-edit"></i>
                        <span>Thêm mới</span>
                    </a>
                </li> 
                
                <li class="menu-title">Danh mục</li>
                <li class="">
                    <a href="<%= request.getContextPath() %>/admin/danh-muc">
                        <i class="fa fa-columns"></i>
                        <span>Danh sách</span>
                    </a>
                </li> 
                <li class="">
                    <a href="<%= request.getContextPath() %>/admin/trang-chu">
                        <i class="fa fa-edit"></i>
                        <span>Thêm mới</span>
                    </a>
                </li> 
                
                <li class="menu-title">Nhà cung cấp</li>
                <li class="">
                    <a href="<%= request.getContextPath() %>/admin/nha-cung-cap">
                        <i class="fa fa-industry"></i>
                        <span>Danh sách</span>
                    </a>
                </li> 
                <li class="">
                    <a href="<%= request.getContextPath() %>/admin/trang-chu">
                        <i class="fa fa-edit"></i>
                        <span>Thêm mới</span>
                    </a>
                </li> 
                <li class="menu-title">Hóa đơn</li>
                <li class="">
                    <a href="<%= request.getContextPath() %>/admin/don-hang">
                        <i class="fa fa-book"></i>
                        <span>Danh sách</span>
                    </a>
                </li> 
                <li class="menu-title">Cài đặt</li>
                <li class="">
                    <a href="<%= request.getContextPath() %>/admin/trang-chu">
                        <i class="fa fa-user"></i>
                        <span>Tài khoản</span>
                    </a>
                </li> 
                <li class="">
                    <a href="<%= request.getContextPath() %>/admin/trang-chu">
                        <i class="fa fa-cog"></i>
                        <span>Cài đặt</span>
                    </a>
                </li> 
            </ul>
        </div>
    </div>
</div>