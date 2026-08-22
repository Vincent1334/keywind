<#macro kw checked=false label="" name="" rest...>
  <div class="flex items-center">
    <input
      <#if checked>checked</#if>

      class="h-5 w-5 rounded-md border-secondary-300 text-primary-800 focus:ring-primary-300 focus:ring-offset-0"
      id="${name}"
      name="${name}"
      type="checkbox"

      <#list rest as attrName, attrValue>
        ${attrName}="${attrValue}"
      </#list>
    >
    <label class="ml-2 text-sm text-secondary-800" for="${name}">
      ${label}
    </label>
  </div>
</#macro>
