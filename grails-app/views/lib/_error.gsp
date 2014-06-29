<div class="alert alert-danger">
	<span class="glyphicon glyphicon-exclamation-sign"></span> 
    <strong>Validation failed</strong>
    <ul>
    	<g:eachError var="err" bean="${ entity }">
    	<li><g:message error="${err}" /></li>
    	</g:eachError>
    </ul>        
</div>
