<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{config('app.name', 'Laravel')}} - Dashboard </title>

    <script>
        window.Laravel = {!! json_encode([
            'csrfToken' => csrf_token(),
        ]) !!};
    </script>
    <script src="//cdn.ckeditor.com/4.10.0/standard/ckeditor.js"></script>
    <style type="text/css" media="screen">
        body {
          background: #ececec;
        }
        .error_msg{
          color: red;
        }
        .loader {
            display: block;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            position: absolute;
            z-index: 99999;
            overflow-x: hidden;
            overflow-y: hidden;
        }
        .loader:before, .loader:after {
          position: absolute;
          top: 50%;
          left: 50%;
          border-radius: 50%;
          border-style: solid;
          border-top-color: #ECD078;
          border-right-color: #C02942;
          border-bottom-color: #542437;
          border-left-color: #53777A;
          content: '';
          transform: translate(-50%, -50%);
          animation: rotate 1.5s  infinite ease-in-out;
          z-index: 999;
        }
        .loader:before {
          border-width: 10vh;
        }
        .loader:after {
          width: 30vh;
          height: 30vh;
          border-width: 2.5vh;
          animation-direction: reverse;
        }

        @keyframes rotate {
          0% {
            transform: translate(-50%, -50%) rotate(0);
          }
          100% {
            transform: translate(-50%, -50%) rotate(360deg);
          }
}  
</style>
    <!-- BODY options, add following classes to body to change options

    // Header options
    1. '.header-fixed'                  - Fixed Header

    // Sidebar options
    1. '.sidebar-fixed'                 - Fixed Sidebar
    2. '.sidebar-hidden'                - Hidden Sidebar
    3. '.sidebar-off-canvas'        - Off Canvas Sidebar
    4. '.sidebar-compact'               - Compact Sidebar Navigation (Only icons)

    // Aside options
    1. '.aside-menu-fixed'          - Fixed Aside Menu
    2. '.aside-menu-hidden'         - Hidden Aside Menu
    3. '.aside-menu-off-canvas' - Off Canvas Aside Menu

    // Footer options
    1. '.footer-fixed'                      - Fixed footer

    -->
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">    
    <div id="app"></div>
    <script src="{{ mix('js/app.js') }}"></script>
</body>
</html>
