<table class="table table-condensed">
    <thead>
        <tr>    
          <g:each var="headerLabel" in="${ fields.collect { it.label; }}">
            <th>${headerLabel}</th>
          </g:each>
          <g:each var="accessory" in="${accessories}">
            <th class="accessory-md"></th>
          </g:each> 
        </tr>
    </thead>
    <tbody>
        <g:each var="row" in="${ entityListRows }">
        <tr>                        
            <g:each var="rowEvaluator" in="${ fields.collect { it.rowEvaluator; }}">
                <td>${ rowEvaluator(row) }</td>
            </g:each>
            <g:each var="accessory" in="${ accessories }">    
      		<g:if test="${accessory.type == 'edit'}">
                 <td class="accessory-md">
                    <g:remoteLink 
                       update="${ accessory.entityListId }"
                       url="${ (accessory.urlEvaluator)?  accessory.urlEvaluator(row) : accessory.urlParams }">
                        <span class="subtle-hint">edit</span> <span class="glyphicon glyphicon-pencil"></span> 
                    </g:remoteLink>
                 </td>
             </g:if>
             <g:if test="${accessory.type == 'delete'}">
                 <td class="accessory-md">
                    <g:remoteLink 
                       update="${ accessory.entityListId }"
                       url="${ (accessory.urlEvaluator)?  accessory.urlEvaluator(row) : accessory.urlParams }">
                        <span class="subtle-hint">${ accessory.label }</span> <span class="glyphicon glyphicon-remove"></span> 
                    </g:remoteLink>
                 </td>
             </g:if>
            </g:each>      
        </tr>
        </g:each>
    </tbody>
</table>