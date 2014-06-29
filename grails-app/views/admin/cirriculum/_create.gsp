<div id="entityErrorMessage"></div>
<div class="row">
	<span class="field-hint"><span class="glyphicon glyphicon-asterisk"></span> required </span> 
</div>
<div class="row filters">
	<div class="col-md-4">
		<label class="required"><span class="required-decorator">*</span>  Name: </label>	
	</div>
	<div class="col-md-8">
		<input name="name" />	
	</div>
</div>
<div class="row filters">
	<div class="col-md-4">
		<label class="required"><span class="required-decorator">*</span>  Department: </label>	
	</div>
	<div class="col-md-4">
		<g:select name="department" from="${departments}"/>	
	</div>
</div>