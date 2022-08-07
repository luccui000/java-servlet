<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
    body {
        background-color: #f9f9f9;
        font-family: 'Roboto', sans-serif; 
    }
    .page-wrapper { 
        display: flex; 
    }
    .shadow-sm {
        box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px; 
    }
    .page-wrapper .sidebar {
        width: 230px; 
        height: 100vh; 
        padding: 10px 0;
    }
    .page-wrapper .content {
        flex: 1;
    }
    .sidebar__header {
        text-align: center;
        height: 50px;
    }
    .sidebar__list {
        list-style: none;
        margin: 0;
        padding: 0;
    } 
    
    .sidebar__link {
        display: flex; 
        align-items: center;
        padding: 10px 10px;
        text-decoration: none;
        color: #000; 
        transition: background-color .2s linear;
    }
    .sidebar__link:hover {
        background-color: #e4e4f3; 
        text-decoration: none;
    }
    .sidebar__link i { 
        margin-right: 20px;
    } 
    input.form-control {
        outline: none !important;
        box-shadow: none !important;
        transition: all .2s linear;
    }
</style>