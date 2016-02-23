<%@ page import="com.hero.Audit" %>



<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'actor', 'error')} ">
	<label for="actor">
		<g:message code="audit.actor.label" default="Actor" />
		
	</label>
	<g:textField name="actor" value="${auditInstance?.actor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'className', 'error')} ">
	<label for="className">
		<g:message code="audit.className.label" default="Class Name" />
		
	</label>
	<g:textField name="className" value="${auditInstance?.className}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'eventName', 'error')} ">
	<label for="eventName">
		<g:message code="audit.eventName.label" default="Event Name" />
		
	</label>
	<g:textField name="eventName" value="${auditInstance?.eventName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'newValue', 'error')} ">
	<label for="newValue">
		<g:message code="audit.newValue.label" default="New Value" />
		
	</label>
	<g:textField name="newValue" value="${auditInstance?.newValue}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'oldValue', 'error')} ">
	<label for="oldValue">
		<g:message code="audit.oldValue.label" default="Old Value" />
		
	</label>
	<g:textField name="oldValue" value="${auditInstance?.oldValue}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'persistedObjectId', 'error')} ">
	<label for="persistedObjectId">
		<g:message code="audit.persistedObjectId.label" default="Persisted Object Id" />
		
	</label>
	<g:textField name="persistedObjectId" value="${auditInstance?.persistedObjectId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'persistedObjectVersion', 'error')} ">
	<label for="persistedObjectVersion">
		<g:message code="audit.persistedObjectVersion.label" default="Persisted Object Version" />
		
	</label>
	<g:field name="persistedObjectVersion" type="number" value="${auditInstance.persistedObjectVersion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'propertyName', 'error')} ">
	<label for="propertyName">
		<g:message code="audit.propertyName.label" default="Property Name" />
		
	</label>
	<g:textField name="propertyName" value="${auditInstance?.propertyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'uri', 'error')} ">
	<label for="uri">
		<g:message code="audit.uri.label" default="Uri" />
		
	</label>
	<g:textField name="uri" value="${auditInstance?.uri}"/>

</div>

