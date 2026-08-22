<#macro kw color="" component="button" size="" rest...>
  <#switch color>
    <#case "primary">
      <#assign colorClass="bg-primary-900 text-primary-50 hover:bg-primary-800 focus-visible:ring-primary-800">
      <#break>
    <#case "secondary">
      <#assign colorClass="bg-secondary-100 text-secondary-800 hover:bg-secondary-150 focus-visible:ring-secondary-400">
      <#break>
    <#default>
      <#assign colorClass="bg-primary-900 text-primary-50 hover:bg-primary-800 focus-visible:ring-primary-800">
  </#switch>

  <#switch size>
    <#case "medium">
      <#assign sizeClass="px-4 py-2.5 text-sm">
      <#break>
    <#case "small">
      <#assign sizeClass="px-3 py-1.5 text-xs">
      <#break>
    <#default>
      <#assign sizeClass="px-5 py-3.5 text-base">
  </#switch>

  <${component}
    class="${colorClass} ${sizeClass} font-semibold flex items-center justify-center relative rounded-full w-full transition-colors focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 disabled:opacity-60"

    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>
