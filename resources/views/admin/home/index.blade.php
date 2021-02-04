@extends('layouts.admin')

@section('title', 'Inicio')
@section('page_title', 'Inicio')
@section('page_subtitle', 'Sistema automatizado para el control interno de pastores y extensiones')

@section('breadcrumb')
    @parent
    <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li class="active">Principal</li>
@endsection

@section('content')
     <div class="container">
        <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box blue-grey darken-4 text-white">
            <div class="inner">
              <h3>Total</h3>

              <p>Colaborador ({{$t_colaborador}})</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box green darken-4 text-white">
            <div class="inner">
              <h3>Total</h3>

              <p>Laicos ({{$t_laico}})</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box red darken-4 text-white">
            <div class="inner">
              <h3>Total</h3>

              <p>Licenciado ({{$t_licenciado}})</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box purple darken-4 text-white">
            <div class="inner">
              <h3>Total</h3>

              <p>Ministro O. ({{$t_ministro_ordenado}})</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
      <div class="row">
        <div class="col-lg-6 col-xs-6">
          <!-- small box -->
          <div class="small-box indigo darken-4 text-white">
            <div class="inner">
              <h3>Total</h3>

              <p>PASTORES. ({{$t_pastor}})</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <div class="col-lg-6 col-xs-6">
          <!-- small box -->
          <div class="small-box orange darken-4 text-white">
            <div class="inner">
              <h3>Total</h3>

              <p>EXTENSIONES. ({{$iglesias}})</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <div class="col-sm-6">
         <div class="card box-primary">
            <div class="card-header blue-gradient-dark text-white">
              

              <h3 class="card-title">Estadística nacional de los pastores</h3>

              <div class="card-tools pull-right">
                
              </div>
            </div>
            <div class="card-body">
              <div id="donut-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body-->
          </div>
        </div>
        <div class="col-sm-6">
         <div class="card ">
            <div class="card-header blue-gradient-dark text-white">
              

              <h3 class="card-title">Estadística nacional de las iglesias</h3>

              <div class="card-tools pull-right">
                
              </div>
            </div>
            <div class="card-body">
              <div id="donut-charts" style="height: 300px;"></div>
            </div>
            <!-- /.box-body-->
          </div>
        </div>
        
        </div>
     </div>
   </div>

@endsection

@push('scripts')

<script>
  $(function () {


    /*
     * DONUT CHART
     * -----------
     */

    var donutData = [
      { label: 'Col.', data: '{{$t_colaborador}}', color: '#263238' },
      { label: 'Laicos', data: '{{$t_laico}}', color: '#1b5e20' },
      { label: 'Lic.', data: '{{$t_licenciado}}', color: '#b71c1c' },
      { label: 'Min O.', data: '{{$t_ministro_ordenado}}', color: '#aa00ff' }
    ]
    $.plot('#donut-chart', donutData, {
      series: {
        pie: {
          show       : true,
          radius     : 1,
          innerRadius: 0.5,
          label      : {
            show     : true,
            radius   : 2 / 3,
            formatter: labelFormatter,
            threshold: 0.1
          }

        }
      },
      legend: {
        show: false
      }
    })
    /*
     * END DONUT CHART
     */

  })

  /*
   * Custom Label formatter
   * ----------------------
   */
  function labelFormatter(label, series) {
    return '<div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">'
      + label
      + '<br>'
      + Math.round(series.percent) + '%</div>'
  }
</script>


<script>
  $(function () {


    /*
     * DONUT CHART
     * -----------
     */

    var donutData = [
      { label: 'Alquilados.', data: '{{$localA}}', color: '#263238' },
      { label: 'Propios', data: '{{$localP}}', color: '#1b5e20' },
    ]
    $.plot('#donut-charts', donutData, {
      series: {
        pie: {
          show       : true,
          radius     : 1,
          innerRadius: 0.5,
          label      : {
            show     : true,
            radius   : 2 / 3,
            formatter: labelFormatter,
            threshold: 0.1
          }

        }
      },
      legend: {
        show: false
      }
    })
    /*
     * END DONUT CHART
     */

  })

  /*
   * Custom Label formatter
   * ----------------------
   */
  function labelFormatter(label, series) {
    return '<div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">'
      + label
      + '<br>'
      + Math.round(series.percent) + '%</div>'
  }
</script>

@endpush
