<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<aside class="sidebar">
    <h4 class="sidebar__header">Shop</h4>
    <ul class="sidebar__list">
        <li class="sidebar__item">
            <a href="<%= request.getContextPath() %>/admin/san-pham" class="sidebar__link">
                <i class="fa fa-home"></i>
                Trang chủ
            </a>
        </li> 
         <li class="sidebar__item">
            <a href="<%= request.getContextPath() %>/admin/san-pham" class="sidebar__link">
                <i class="fa fa-product-hunt"></i>
                Sản phẩm
            </a>
        </li> 
         <li class="sidebar__item">
            <a href="<%= request.getContextPath() %>/admin/nha-cung-cap" class="sidebar__link">
                <i class="fa fa-industry"></i>
                Nhà cung cấp
            </a>
        </li> 
         <li class="sidebar__item">
            <a href="<%= request.getContextPath() %>/admin/danh-muc" class="sidebar__link">
                <i class="fa fa-list-alt"></i>
                Danh mục
            </a>
        </li> 
        <li class="sidebar__item">
            <a href="<%= request.getContextPath() %>/admin/don-hang" class="sidebar__link">
                <i class="fa fa-first-order"></i>
                Đơn hàng
            </a>
        </li> 
    </ul> 
</aside> 