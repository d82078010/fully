<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{!! gravatarUrl(Sentinel::getUser()->email) !!}" class="img-circle" alt="User Image" />

            </div>
            <div class="pull-left info">
                <p>{{ Sentinel::getUser()->first_name . ' ' . Sentinel::getUser()->last_name }}</p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="{{ setActive('admin') }}"><a href="{{ url(getLang() . '/admin') }}"> <i class="fa fa-dashboard"></i> <span>仪表盘</span>
                </a></li>
            <li class="{{ setActive('admin/menu*') }}"><a href="{{ url(getLang() . '/admin/menu') }}"> <i class="fa fa-bars"></i> <span>导航菜单</span> </a>
            </li>
            <li class="treeview {{ setActive('admin/news*') }}"><a href="#"> <i class="fa fa-th"></i> <span>新闻</span>
                    <i class="fa fa-angle-left pull-right"></i> </a>
                <ul class="treeview-menu">
                    <li><a href="{{ url(getLang() . '/admin/news') }}"><i class="fa fa-calendar"></i>所有新闻</a>
                    </li>
                    <li><a href="{{ url(getLang() . '/admin/news/create') }}"><i class="fa fa-plus-square"></i> 添加新闻</a>
                    </li>
                </ul>
            </li>
            <li class="treeview {{ setActive('admin/page*') }}"><a href="#"> <i class="fa fa-bookmark"></i> <span>单页面</span>
                    <i class="fa fa-angle-left pull-right"></i> </a>
                <ul class="treeview-menu">
                    <li><a href="{{ url(getLang() . '/admin/page') }}"><i class="fa fa-folder"></i> 所有单页面</a>
                    </li>
                    <li><a href="{{ url(getLang() . '/admin/page/create') }}"><i class="fa fa-plus-square"></i> 添加单页面</a>
                    </li>
                </ul>
            </li>
            <li class="treeview {{ setActive(['admin/photo-gallery*', 'admin/video*']) }}"><a href="#"> <i class="fa fa-picture-o"></i> <span>陈列室</span>
                    <i class="fa fa-angle-left pull-right"></i> </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="{{ url(getLang() . '/admin/photo-gallery') }}"><i class="fa fa-camera"></i> 图片陈列 </a>
                    </li>
                    <li>
                        <a href="{{ url(getLang() . '/admin/video') }}"><i class="fa fa-play-circle-o"></i> 视频陈列</a>
                    </li>

                </ul>
            </li>
            <li class="treeview {{ setActive('admin/article*') }}"><a href="#"> <i class="fa fa-book"></i> <span>文章/论文</span>
                    <i class="fa fa-angle-left pull-right"></i> </a>
                <ul class="treeview-menu">
                    <li><a href="{{ url(getLang() . '/admin/article') }}"><i class="fa fa-archive"></i>所有论文 </a>
                    </li>
                    <li>
                        <a href="{{ url(getLang() . '/admin/article/create') }}"><i class="fa fa-plus-square"></i> 添加论文 </a>
                    </li>
                </ul>
            </li>
            <li class="treeview {{ setActive('admin/slider*') }}"><a href="#"> <i class="fa fa-tint"></i> <span>插件</span>
                    <i class="fa fa-angle-left pull-right"></i> </a>
                <ul class="treeview-menu">
                    <li><a href="{{ url(getLang() . '/admin/slider') }}"><i class="fa fa-toggle-up"></i> 轮播图</a>
                    </li>
                </ul>
            </li>
            <li class="treeview {{ setActive('admin/project*') }}"><a href="#"> <i class="fa fa-gears"></i> <span>项目</span>
                    <i class="fa fa-angle-left pull-right"></i> </a>
                <ul class="treeview-menu">
                    <li><a href="{{ url(getLang() . '/admin/project') }}"><i class="fa fa-gear"></i> 所有项目</a>
                    </li>
                    <li>
                        <a href="{{ url(getLang() . '/admin/project/create') }}"><i class="fa fa-plus-square"></i> 添加项目</a>
                    </li>
                </ul>
            </li>
            <li class="treeview {{ setActive('admin/faq*') }}"><a href="#"> <i class="fa fa-question"></i> <span>常见问题</span>
                    <i class="fa fa-angle-left pull-right"></i> </a>
                <ul class="treeview-menu">
                    <li><a href="{{ url(getLang() . '/admin/faq') }}"><i class="fa fa-question-circle"></i> 所有问题</a></li>
                    <li>
                        <a href="{{ url(getLang() . '/admin/faq/create') }}"><i class="fa fa-plus-square"></i> 添加问题</a>
                    </li>
                </ul>
            </li>
            <li class="treeview {{ setActive(['admin/user*', 'admin/group*']) }}"><a href="#"> <i class="fa fa-user"></i> <span>用户管理</span>
                    <i class="fa fa-angle-left pull-right"></i> </a>
                <ul class="treeview-menu">
                    <li><a href="{{ url(getLang() . '/admin/user') }}"><i class="fa fa-user"></i> 所有用户</a>
                    </li>
                    <li><a href="{{ url(getLang() . '/admin/role') }}"><i class="fa fa-group"></i> 添加用户</a>
                    </li>
                </ul>
            </li>
            <li class="treeview {{ setActive(['admin/logs*', 'admin/form-post']) }}"><a href="#"> <i class="fa fa-thumb-tack"></i> <span>记录</span>
                    <i class="fa fa-angle-left pull-right"></i> </a>
                <ul class="treeview-menu">
                    <li><a target="_blank" href="{{ url(getLang() . '/admin/logs') }}"><i class="fa fa-save"></i> 异常记录</a></li>
                    <li>
                        <a href="{{ url(getLang() . '/admin/form-post') }}"><i class="fa fa-envelope"></i> 提交表单查询</a>
                    </li>
                </ul>
            </li>
            <li class="{{ setActive('admin/settings*') }}">
                <a href="{{ url(getLang() . '/admin/settings') }}"> <i class="fa fa-gear"></i> <span>网站配置</span> </a>
            </li>
            <li class="{{ setActive('admin/logout*') }}">
                <a href="{{ url('/admin/logout') }}"> <i class="fa fa-sign-out"></i> <span>退出登录</span> </a>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>