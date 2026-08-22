<#macro kw color="">
  <#switch color>
    <#case "error">
      <#assign colorClass="bg-red-100 text-red-800">
      <#break>
    <#case "info">
      <#assign colorClass="bg-primary-100 text-primary-800">
      <#break>
    <#case "success">
      <#assign colorClass="bg-primary-100 text-primary-800">
      <#break>
    <#case "warning">
      <#assign colorClass="bg-orange-100 text-orange-800">
      <#break>
    <#default>
      <#assign colorClass="bg-primary-100 text-primary-800">
  </#switch>

  <div class="${colorClass} p-4 rounded-2xl text-sm font-medium" role="alert">
    <#nested>
  </div>
</#macro>
