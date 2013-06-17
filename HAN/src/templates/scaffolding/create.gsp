<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="han_layout">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h2><i class="icon-edit"></i> <g:message code="default.create.label" args="[entityName]" /></h2>
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
            <g:hasErrors bean="\${${propertyName}}">
                <ul class="errors" role="alert">
                    <g:eachError bean="\${${propertyName}}" var="error">
                        <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>

            <g:form class="form-horizontal" action="save" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
                <fieldset >
                    <g:render template="form"/>
                </fieldset>
                <div class="form-actions">
                    <g:submitButton name="create" class="btn btn-primary" value="\${message(code: 'default.button.create.label', default: 'Create')}" />
                    <g:link action="list"> Cancel </g:link>
                </div>
            </g:form>
        </div>
    </div><!--/span-->
	</body>
</html>
