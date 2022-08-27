<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách sản phẩm</title>
        <jsp:include page="includes/style.jsp" ></jsp:include> 
        <style>
            .sort {
                display: flex;
                flex-direction: row !important;
                align-items: center;
            }
            .sort .lbl {
                margin-right: 10px;
            }
            .sort .selection {
                padding: 5px 10px;
                border: 1px solid #ddd;
            }
            .sort .selection:focus {
                outline: none;
            }
            .btn-sm {
                font-size: 12px;
                padding: 4px 10px;
            }
        </style>
    </head>
    <body class="cnt-home"> 
        <jsp:include page="includes/header.jsp" ></jsp:include>
        <div class="body-content outer-top-vs" id="top-banner-and-menu">
            <div class="container">
                <div class="row">  
                    <div class="col-xs-12 col-sm-12 col-md-3 sidebar">  
                        <jsp:include page="includes/sidebar.jsp" ></jsp:include> 
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-9 rht-col">
                        <div id="category" class="category-carousel hidden-xs">
                            <div class="item">
                                <div class="image">
                                    <img src="https://www.xtmobile.vn/vnt_upload/weblink/13san-voucher.png" alt="" class="img-responsive">
                                </div> 
                            </div>
                        </div>
                        <div id="app">
                            <div class="clearfix filters-container m-t-10">
                                <div class="row"> 
                                    <div class="col col-sm-12 col-md-3 col-lg-3 hidden-sm"> 
                                        <div class="sort">
                                            <label class="lbl">Sắp theo giá</label>
                                            <select v-model="filters.sort.price" class="selection">
                                                <option value="asc">Giá tăng dần</option>
                                                <option value="desc">Giá giảm dần</option>
                                            </select>
                                        </div> 
                                    </div>
                                    <div class="col col-sm-12 col-md-3 col-lg-3 hidden-sm"> 
                                        <div class="sort">
                                            <label class="lbl">Nhà cung cấp</label>
                                            <select v-model="filters.sort.supplier" class="selection">
                                                <option
                                                    v-for="(ncc, index) in nhacungcaps" 
                                                    :key="ncc.id"
                                                    :value="ncc.id" 
                                                    >{{ ncc.ten_nha_cung_cap }}</option> 
                                            </select>
                                        </div> 
                                    </div>
                                    <div class="col col-sm-12 col-md-3 col-lg-3 hidden-sm"> 
                                        <div class="sort">
                                            <label class="lbl">Danh mục</label>
                                            <select v-model="filters.sort.category" class="selection">
                                                <option
                                                    v-for="(dm, index) in danhmucs" 
                                                    :key="dm.id"
                                                    :value="dm.id" 
                                                    >{{ dm.ten_danh_muc }}</option> 
                                            </select>
                                        </div> 
                                    </div>
                                    <div class="col col-sm-12 col-md-3 col-lg-3 hidden-sm">
                                        <button @click="applyFilter" class="btn btn-primary btn-sm">Lọc sản phẩm</button>
                                    </div>
                                </div> 
                            </div>
                            <div class="search-result-container">
                                <div class="tab-content category-list">
                                    <div class="tab-pane active">
                                        <div class="category-product">
                                            <div class="row" v-for="(chunk, index) in sanphams" :key="index">
                                                <div v-for="sanpham in chunk" :key="sanpham.id" class="col-md-3">
                                                    <div class="item">
                                                        <div class="products">
                                                            <div class="product">
                                                                <div class="product-image">
                                                                    <div class="image">
                                                                        <a :href="'chi-tiet?id=' + sanpham.id">
                                                                            <img :src="sanpham.hinh_anh" alt=""> 
                                                                        </a>
                                                                    </div> 
                                                                    <div class="tag new">
                                                                        <span>mới</span>
                                                                    </div>
                                                                </div> 
                                                                <div class="product-info text-left">
                                                                    <h3 class="name">
                                                                        <a :href="'chi-tiet?id=' + sanpham.id">{{ sanpham.ten_san_pham }}</a>
                                                                    </h3>
                                                                    <div class="rating rateit-small rateit">
                                                                        <button id="rateit-reset-2" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-2" style="display: none;"></button>
                                                                        <div id="rateit-range-2" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-2" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;">
                                                                            <div class="rateit-selected" style="height: 14px; width: 56px;"></div>
                                                                            <div class="rateit-hover" style="height:14px"></div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="description"></div>
                                                                    <div class="product-price">
                                                                        <span class="price"> {{ formatVNDCurrency(sanpham.gia_cuoi_cung) }} </span>
                                                                        <span class="price-before-discount">{{ formatVNDCurrency(sanpham.gia_san_pham) }}</span>
                                                                    </div> 
                                                                </div> 
                                                                <div class="cart clearfix animate-effect">
                                                                    <div class="action">
                                                                        <ul class="list-unstyled">
                                                                            <li class="add-cart-button btn-group">
                                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                                    <i class="fa fa-shopping-cart"></i>
                                                                                </button>
                                                                                <button class="btn btn-primary cart-btn" type="button">Thêm vào giỏ hàng</button>
                                                                            </li>
                                                                            <li class="lnk wishlist">
                                                                                <a class="add-to-cart" href="detail.html" title="Wishlist">
                                                                                    <i class="icon fa fa-heart"></i>
                                                                                </a>
                                                                            </li>
                                                                            <li class="lnk">
                                                                                <a class="add-to-cart" href="detail.html" title="Compare">
                                                                                    <i class="fa fa-signal"></i>
                                                                                </a>
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
                                </div>
                                <div class="clearfix filters-container bottom-row">

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
            const { createApp, reactive, ref, onMounted } = Vue 
            
            createApp({
                setup() {
                    const sanphams = ref({});
                    const nhacungcaps = ref({});
                    const danhmucs = ref({});
                    const filters = reactive({
                        type: 'grid',
                        sort: {
                            price: 'asc',
                            supplier: '',
                            category: ''
                        },
                        showEntries: 10,
                        page: 1
                    }) 
                    const chunkArray = (arr, size = 4) => {
                        const chunk = [];
                        for(let i = 0; i < arr.length; i += size) {
                            chunk.push(arr.slice(i, i + size))
                        }
                        return chunk;
                    } 
                    const fetchSanPham = () => {
                        axios.get('http://localhost:8000/webbanhang-api/sanpham.php')
                                .then(response => {
                                    sanphams.value = chunkArray(response.data); 
                            })
                    }
                    const fetchNhaCungCap = () => {
                        axios.get('http://localhost:8000/webbanhang-api/nhacungcap.php')
                                .then(response => {
                                    nhacungcaps.value = response.data 
                            })
                    }
                    const fetchDanhMuc = () => {
                        axios.get('http://localhost:8000/webbanhang-api/danhmuc.php')
                                .then(response => {
                                    danhmucs.value = response.data 
                            })
                    }
                    onMounted(() => {
                        fetchSanPham();
                        fetchNhaCungCap();
                        fetchDanhMuc(); 
                    }) 
                    
                    const applyFilter = () => { 
                        const queryString = new URLSearchParams(filters.sort).toString();
//                        console.log(queryString)
                        axios.get(`http://localhost:8000/webbanhang-api/sanpham.php?` + queryString)
                                .then(response => {  
                                    sanphams.value = chunkArray(response.data);
                            }) 
                    }
                    
                    const formatVNDCurrency = (value) => {
                        return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND'}).format(value);
                    }
                    
                    return {
                        filters,
                        sanphams,
                        nhacungcaps,
                        danhmucs,
                        formatVNDCurrency,
                        applyFilter
                    }
                }, 
            }).mount('#app')
        </script>
    </body>
</html>
