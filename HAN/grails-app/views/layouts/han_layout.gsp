<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="SureCash Mobile Financial Service"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">

    <!-- The styles -->
    <link id="bs-css" href="${resource(dir: 'css', file: 'bootstrap-cerulean.css')}"  rel="stylesheet">
    <style type="text/css">
    body {
        padding-bottom: 40px;
    }
    .sidebar-nav {
        padding: 9px 0;
    }
    </style>
    <link id="bs-css" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'charisma-app.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'jquery-ui-1.8.21.custom.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'fullcalendar.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'fullcalendar.print.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'chosen.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'uniform.default.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'colorbox.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'jquery.cleditor.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'jquery.noty.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'noty_theme_default.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'elfinder.min.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'elfinder.theme.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'jquery.iphone.toggle.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'opa-icons.css')}"  rel="stylesheet">
    <link id="bs-css" href="${resource(dir: 'css', file: 'uploadify.css')}"  rel="stylesheet">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>

    <!-- topbar starts -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="/SureCash/"> <img alt="SureCash Logo" src="${resource(dir:'images',file: 'surecashLogo.png')}" /> <span>SureCash</span></a>

                <!-- theme selector starts -->
                <div class="btn-group pull-right theme-container" >
                    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="icon-tint"></i><span class="hidden-phone"> Change Theme / Skin</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" id="themes">
                        <li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
                        <li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
                        <li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
                        <li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
                        <li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
                        <li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
                        <li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
                        <li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
                        <li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
                    </ul>
                </div>
                <!-- theme selector ends -->



                <div class="top-nav nav-collapse">
                    <ul class="nav">
                        <li><a href="/SureCash/">Logged User:</a></li>
                        <li>
                            <a href="/SureCash/">Azom Shahriar</a>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
    <!-- topbar ends -->
    <div class="container-fluid">
        <div class="row-fluid">

            <!-- left menu starts -->
            <div class="span2 main-menu-span">
                <div class="well nav-collapse sidebar-nav">
                    <ul class="nav nav-tabs nav-stacked main-menu">
                        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                            <li class="controller"><g:link class="ajax-link" controller="${c.logicalPropertyName}"><i class="icon-align-justify"></i> <span class="hidden-tablet">${c.name}</span></g:link></li>
                        </g:each>
                    </ul>
                </div><!--/.well -->
            </div><!--/span-->
        <!-- left menu ends -->

            <noscript>
                <div class="alert alert-block span10">
                    <h4 class="alert-heading">Warning!</h4>
                    <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
                </div>
            </noscript>

            <div id="content" class="span10">
                <!-- content starts -->


                <div class="row-fluid sortable">

                    <g:layoutBody/>

                </div><!--/row-->


            <!-- content ends -->
            </div><!--/#content.span10-->
        </div><!--/fluid-row-->

        <hr>


        <footer>
            <p class="pull-left">&copy; <a href="http://surecashbd.com" target="_blank">SureCash</a> 2013</p>
            <p class="pull-right">Powered by: <a href="www.progoti.com">Progoti Systems Ltd</a></p>
        </footer>

    </div>

    <g:javascript library="application"/>
    <r:layoutResources />
	</body>
</html>
