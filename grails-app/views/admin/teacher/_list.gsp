<!-- Entity List -->
<my:entityList id="teachersList" class="results" rows="${ teachers }">
  <my:entityListField label="First Name" value="firstName"/>
  <my:entityListField label="Last Name" value="lastName"/>
  <my:entityListField label="Role" value="role"/>
  <my:entityListAccessory type="edit"
  	modalId="modalUpdateTeacher"
  	url="[controller: 'teacher', action: 'show', namespace: 'admin']" 
  	urlIdValue="id"/>	   
  <my:entityListAccessory type="delete" 
  	url="[controller: 'teacher', action: 'delete', namespace: 'admin']" 
  	urlIdValue="id"/>
</my:entityList>