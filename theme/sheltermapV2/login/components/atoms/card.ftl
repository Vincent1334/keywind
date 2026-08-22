<#macro kw content="" footer="" header="" hero="">
  <div class="bg-white overflow-hidden sm:rounded-[28px] sm:shadow-xl sm:shadow-secondary-1000/5">
    <#if hero?has_content>
      ${hero}
    </#if>
    <div class="<#if hero?has_content>relative -mt-7 rounded-t-[28px] bg-white </#if>px-6 pt-8 pb-8 space-y-6 sm:px-8">
      <#if header?has_content>
        <div class="space-y-3">
          ${header}
        </div>
      </#if>
      <#if content?has_content>
        <div class="space-y-4">
          ${content}
        </div>
      </#if>
      <#if footer?has_content>
        <div class="space-y-4">
          ${footer}
        </div>
      </#if>
    </div>
  </div>
</#macro>
