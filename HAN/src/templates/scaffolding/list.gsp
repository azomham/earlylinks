<%=packageName%>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="han_layout">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>


    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h2><i class="icon-align-justify"></i> <g:message code="default.list.label" args="[entityName]" /></h2>
            <div class="box-icon">
                <g:link class="btn btn-round" action="create"><i class="icon-edit"></i></g:link>
                <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <g:if test="\${flash.message}">
                <div class="alert alert-info" role="status">\${flash.message}</div>
            </g:if>
            <g:render template="inner_list"/>
        </div>

    </div><!--/span-->

	</body>
</html>
