<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="han_layout">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h2><i class="icon-eye-open"></i> <g:message code="default.show.label" args="[entityName]" /></h2>
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
            <g:form class="form-horizontal" action="save" >
                <fieldset>
                    <g:render template="form_disable"/>
                </fieldset>

                <div class="form-actions">
                    <g:hiddenField name="id" value="\${${propertyName}?.id}" />
                    <g:link class="edit" action="edit" id="\${${propertyName}?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </div>

            </g:form>

        </div>
    </div><!--/span-->

	</body>
</html>
