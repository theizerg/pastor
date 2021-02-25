<!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
       <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('images/logo/fondo-logo.png') }}" class="elevation-2" alt="User Image">
        </div>
        <div class="info text-center">
          <a href="{{ url('/') }}" class="d-block"> {{ Auth::user()->full_name }}</a>
          <small class="text-white ml-5">
            {{ Auth::user()->hasrole('Administrador') ? 'Supervisor Nacional' : 'Presbítero' }}
          </small><br>
          <small class="text-white">
            Miembro desde el año {{ Auth::user()->created_at->format('Y') }}</small>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon mdi mdi-view-dashboard"></i>
              <p>
                Administración
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              @can('VerUsuario')
              <li class="nav-item">
                <a href="/user" class="nav-link">
                  <i class="fas fa-users nav-icon"></i>
                  <p>Usuarios</p>
                </a>
              </li>
              @endcan
              @can('VerPermisos')
              <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon mdi mdi-lock"></i>
                <p>
                  Permisos
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                @foreach ($roles as $role)
                <li class="nav-item">
                  <a href="/permission/{{ $role->name }}" class="nav-link">
                    <i class="mdi mdi-human-male-child nav-icon"></i>
                    <p>{{ $role->name }}</p>
                  </a>
                </li>
                @endforeach
              </ul>
            </li>
            @endcan
            @can('VerRol')
              <li class="nav-item">
                <a href="/roles" class="nav-link">
                  <i class="fas fa-user-tie nav-icon"></i>
                  <p>Roles</p>
                </a>
              </li>
              @endcan
              <li class="nav-item">
                <a href="/logins" class="nav-link">
                  <i class="fas fa-sign-in-alt nav-icon"></i>
                  <p>Logins</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview menu-open ">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                REGISTROS
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              @can('VerPastores')
              <li class="nav-item">
                <a href="/pastor" class="nav-link">
                  <i class="mdi mdi-christianity nav-icon"></i>
                  <p>Pastores</p>
                </a>
              </li>
              @endcan
              @can('VerIglesia')
              <li class="nav-item">
                <a href="/iglesias" class="nav-link">
                  <i class="mdi mdi-church nav-icon"></i>
                  <p>Extensiones</p>
                </a>
              </li>
              @endcan
              @can('VerDocumentos')
              <li class="nav-item">
                <a href="/documento" class="nav-link">
                  <i class="mdi mdi-folder-account-outline nav-icon"></i>
                  <p>Documentos</p>
                </a>
              </li>
              @endcan
              @can('VerActividades')
              <li class="nav-item">
                <a href="/actividades" class="nav-link">
                  <i class="mdi mdi-chart-areaspline-variant nav-icon"></i>
                  <p>Actividades</p>
                </a>
              </li>
              @endcan
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->