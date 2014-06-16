<table class="table table-condensed">
	<thead>
		<tr>  		
			<th>Class Name</th>
			<th>Department</th>
			<th class="accessory-lg"></th> 					
		</tr>
	</thead>
	<tbody>
		<g:each var="classDefinition" in="${ classDefinitions }">
		<tr>						
			<td>${ classDefinition.name }</td>
			<td>${ classDefinition.department }</td>
			<td class="accessory-lg">
				<g:remoteLink update="entityList" url="[controller: 'cirriculum', action: 'edit', namespace: 'admin', id: classDefinition.id]">
					<span class="subtle-hint">edit</span> <span class="glyphicon glyphicon-pencil"></span> 
				</g:remoteLink>				
				<g:remoteLink update="entityList" url="[controller: 'cirriculum', action: 'delete', namespace: 'admin', id: classDefinition.id]">
					<span class="subtle-hint">remove</span> <span class="glyphicon glyphicon-remove"></span> 
				</g:remoteLink>
			</td>	   					
		</tr>
		</g:each>
	</tbody>
</table>