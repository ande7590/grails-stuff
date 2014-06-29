<%-- Wrapper so that list_inner can be generated (as grails template)
     by AJAX calls to update this list --%>
<div id="${ entityListId }" class="${ entityListClass }">
    <g:render template="/lib/list_inner"/>
</div>