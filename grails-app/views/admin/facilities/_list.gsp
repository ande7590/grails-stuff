<table class="table table-condensed">
	<thead>
		<tr>  		
			<th>Room Number</th>
			<th class="accessory-md"></th> 					
		</tr>
	</thead>
	<tbody>
		<g:each var="classroom" in="${ classrooms }">
		<tr>						
			<td>${ classroom.roomNumber }</td>
			<td class="accessory-md">
				<g:remoteLink update="classroomList" url="[controller: 'facilities', action: 'delete', namespace: 'admin', id: classroom.id]">
					<span class="subtle-hint">remove</span> <span class="glyphicon glyphicon-remove"></span> 
				</g:remoteLink>
			</td>	   					
		</tr>
		</g:each>
	</tbody>
</table>