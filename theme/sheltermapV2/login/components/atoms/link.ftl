<#macro kw color="" component="a" size="" rest...>
  <#switch color>
    <#case "primary">
      <#assign colorClass="font-semibold text-primary-800 hover:text-primary-700">
      <#break>
    <#case "secondary">
      <#assign colorClass="font-medium text-secondary-700 hover:text-secondary-1000">
      <#break>
    <#default>
      <#assign colorClass="font-semibold text-primary-800 hover:text-primary-700">
  </#switch>

  <#switch size>
    <#case "small">
      <#assign sizeClass="text-sm">
      <#break>
    <#default>
      <#assign sizeClass="">
  </#switch>

  <${component}
    class="<#compress>${colorClass} ${sizeClass} inline-flex transition-colors</#compress>"

    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>
