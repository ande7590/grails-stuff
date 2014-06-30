<!-- Entity List -->
<my:entityList id="facilitiesList" class="results" rows="${ classrooms }">
  <my:entityListField label="Room Number" value="roomNumber"/>
  <my:entityListAccessory type="delete" 
  	url="[controller: 'facility', action: 'delete', namespace: 'admin']" 
  	urlIdValue="id"/>
</my:entityList>