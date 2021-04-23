

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                <div class="sidebar-brand-text mx-3">MENU</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider">
                <li class="nav-item active">
                    <li class="nav-item">
                <a class="nav-link" href="<?= base_url('masteruser/masteruser');?>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Master User</span></a>
            </li>
            <hr class="sidebar-divider">
            <li class="nav-item active">
                    <li class="nav-item">
                <a class="nav-link" href="<?= base_url('masteropd/masteropd');?>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Master OPD</span></a>
            </li>

            <hr class="sidebar-divider">
            <li class="nav-item active">
                    <li class="nav-item">
                <a class="nav-link" href="<?= base_url('master/bbp');?>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Master Besar Pembantu</span></a>
            </li>

            <hr class="sidebar-divider">
            <li class="nav-item active">
                    <li class="nav-item">
                <a class="nav-link" href="<?= base_url('master/bpp');?>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Master Pembantu Pajak</span></a>
            </li>

            <hr class="sidebar-divider">
            <li class="nav-item active">
                    <li class="nav-item">
                <a class="nav-link" href="<?= base_url('master/kasumum');?>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Master Buku Kas Umum </span></a>
            </li>
            <hr class="sidebar-divider">


           

            <!-- Nav Item - Dashboard -->
            
            
           <li class="nav-item">
                <a class="nav-link" href="<?= base_url('administrator/logout');?>" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-fw fa-sign-out-alt"></i>
                    <span>Logout</span></a>
            </li>
            

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->