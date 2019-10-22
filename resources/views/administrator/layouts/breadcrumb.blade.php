<div class="breadcrumb ">
    <h1>{{ ucfirst(str_replace('-', ' ', Request::segment(2))) }}</h1>
    <ul>
        <li><a href=" ">{{ ucfirst(str_replace('-', ' ', Request::segment(1)))   }}</a></li>
        <li>{{ Request::segment(3) != '' ? ucfirst(str_replace('-', ' ', Request::segment(3))) : 'Dashboard' }}</li>
    </ul>
</div>