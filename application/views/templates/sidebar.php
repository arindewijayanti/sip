

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                <div class="sidebar-brand-text mx-3">MENU</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider">



            <!-- query menu -->
            <?php
                $id = $this->session->userdata('id');
                $queryMenu = "SELECT `user_menu`.`id`, `menu`
                                FROM `user_menu` JOIN `user_access_menu`
                                ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                                WHERE `user_access_menu`.`user_id` = $id
                                ORDER BY `user_menu`.`levelmenu` ASC, `user_menu`.`menu` ASC
                                ";
                $menu = $this->db->query($queryMenu)->result_array();
                
            ?>

            <?php foreach ($menu as $m) : ?>

            <?php 
            $menuId = $m['id'];
            $querySubMenu = "SELECT *
                            FROM `user_sub_menu` JOIN `user_menu`
                            ON `user_sub_menu`. `menu_id` = `user_menu`.`id`
                            WHERE `user_sub_menu`.`menu_id` = $menuId
                            AND `user_sub_menu`.`is_active` = 1
                           
                            ";
            $subMenu = $this->db->query($querySubMenu)->result_array();
            ?>

            <?php foreach ($subMenu as $sm) : ?>
                <?php if($title == $sm['title']): ?>
                <li class="nav-item active">
                <?php else : ?>
                    <li class="nav-item">
                <?php endif; ?>
                <a class="nav-link" href="<?= base_url($sm['url']);?>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span><?= $sm['title'];?></span></a>
            </li>

            <?php endforeach; ?>


             <!-- Divider -->
            <hr class="sidebar-divider">


            <?php endforeach; ?>

           

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="<?= base_url('changepassword');?>">
                    <i class="fas fa-fw fa-sign-out-alt"></i>
                    <span>Ganti Password</span></a>
            </li>
            
            <hr class="sidebar-divider">
            
           <li class="nav-item">
                <a class="nav-link" href="<?= base_url('auth/logout');?>" data-toggle="modal" data-target="#logoutModal">
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