<!-- Entity List -->
<my:entityList id="facilitiesList" class="results" rows="${ classDefinitions }">
  <my:entityListField label="Name" value="name"/>
  <my:entityListField label="Department" value="department"/>
  <my:entityListAccessory type="edit"
  	modalId="modalUpdateCirriculum"
  	url="[controller: 'cirriculum', action: 'show', namespace: 'admin']" 
  	urlIdValue="id"/>	   
  <my:entityListAccessory type="delete" 
  	url="[controller: 'cirriculum', action: 'delete', namespace: 'admin']" 
  	urlIdValue="id"/>
</my:entityList>