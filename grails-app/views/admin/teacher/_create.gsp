<g:hiddenField name="entityId" value="${formData?.id}"/>
<div id="entityErrorMessage"></div>
<div class="row">
	<span class="field-hint"><span class="glyphicon glyphicon-asterisk"></span> required </span> 
</div>
<div class="row filters">
	<div class="col-md-4">
		<label class="required"><span class="required-decorator">*</span>  First Name: </label>	
	</div>
	<div class="col-md-8">
		<input name="firstName" value="${ formData?.firstName }"/>	
	</div>
</div>
<div class="row filters">
	<div class="col-md-4">
		<label class="required"><span class="required-decorator">*</span>  Last Name: </label>	
	</div>
	<div class="col-md-8">
		<input name="lastName" value="${ formData?.lastName }"/>	
	</div>
</div>
<div class="row filters">
	<div class="col-md-4">
		<label class="required"><span class="required-decorator">*</span>  Role: </label>	
	</div>
	<div class="col-md-4">
		<g:select name="role" from="${teacherRoles}" value="${formData?.role}"/>	
	</div>
</div>
<div class="row filters">
	<div class="col-md-4">
		<label class="required"><span class="required-decorator">*</span>  Salary: </label>	
	</div>
	<div class="col-md-4">
		<input name="salary" type="number" value="${ formData?.salary }" />	
	</div>
</div>