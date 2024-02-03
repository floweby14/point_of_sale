        <!-- Overlay For Sidebars -->

        <div class="overlay"></div>

<!-- Left Sidebar -->

    <aside id="leftsidebar" class="sidebar">

        <div class="navbar-brand">

            <a href="/home/">
                
                <img src="<?php echo base_url('assets') ?>/dashboard/hammer.png" style="width: 30px; height: 30px;" alt="logo_sph">
                <span class="m-l-7" style="font-size: 20px;">Keuangan TNMD</span>
            
            </a>

        </div>

        <div class="menu">

            <ul class="list">

                <li>

                    <div class="user-info">
                        
                        <div class="image mr-2"><img src="/assets/images/yoimiya.png" alt="User"></div>

                        <div class="detail">

                            <h4><?php echo ucwords(session() -> username) ?></h4>

                        </div>

                    </div>

                </li>

                <?php if (in_array(session() -> get('level'), [1])) { ?>

                    <li class="active"><a href="/home/user"><i class="fas fa-user-gear"></i><span>User</span></a></li>
                    <li class="active"><a href="/home/data_pemasukan"><i class="fas fa-user-gear"></i><span>Pemasukan</span></a></li>
                    <li class="active"><a href="/home/data_pengeluaran"><i class="fas fa-user-gear"></i><span>Pengeluaran</span></a></li>
                    <li class="active"><a href="/home/data_gaji"><i class="fas fa-user-gear"></i><span>Produk</span></a></li>
                    <li class="active"><a href="/home/laporan"><i class="fas fa-user-gear"></i><span>Laporan</span></a></li>
                    <li class="active"><a href="/home/logout"><i class="fas fa-power-off"></i><span>Logout</span></a></li>
            </ul>

        </div>

    </aside>

                <?php } else if (in_array(session() -> get('level'), [2])) { ?>

                    <li class="active"><a href="/home/data_pemasukan"><i class="fas fa-user-gear"></i><span>Data Pemasukan</span></a></li>
                    <li class="active"><a href="/home/data_pengeluaran"><i class="fas fa-user-gear"></i><span>Data Pengeluaran</span></a></li>
                    <li class="active"><a href="/home/logout"><i class="fas fa-power-off"></i><span>Logout</span></a></li>
            
            </ul>

        </div>

    </aside>

                <?php } ?>