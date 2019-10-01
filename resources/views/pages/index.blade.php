@extends('layouts.app')

@section('content')

        <div class="text">
                <div class="login text-center">
                        <h1><b>DOBRODOŠLI NA TV Q2!</b></h1>
                        <p style="font-size: 20px">
                          <i>It's amazing that the amount of news that happens in the world every day always just exactly fits the newspaper. "Jerry Seinfeld"</i> 
                        </p>
                </div>
        </div>



<div class="container movie">
    <div class="row">
        <div class="col-md-6 taxi">
          <a href="https://www.cineplexx.rs/movie/taksi-bluz/"><img src="/storage/cover_images/2.jpg" alt=""></a>
          <h1>Gledajte najbolje filmove!</h1>
          <h2>Veceras u 20h!</h2>
        </div>
        <div class="col-md-6">
            <div class="chart ml-5">
                <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                <script type="text/javascript">
                  google.charts.load("current", {packages:["corechart"]});
                  google.charts.setOnLoadCallback(drawChart);
                  function drawChart() {
                    var data = google.visualization.arrayToDataTable([
                      ['Task', 'Hours per Day'],
                      ['Zabavni program',     11],
                      ['Filmovi',      2],
                      ['Serije',  2],
                      ['Vesti', 2],
                      ['Emisije',    7]
                    ]);
            
                    var options = {
                      title: 'Najgledaniji sadrzaj',
                      pieHole: 0.3,
                    };
            
                    var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
                    chart.draw(data, options);
                  }
                  
                </script>
                <div id="donutchart"></div>
            </div>
            
        </div>
    
</div>
</div>

@endsection
