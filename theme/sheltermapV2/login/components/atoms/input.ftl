<#import "/assets/icons/eye.ftl" as iconEye>
<#import "/assets/icons/eye-slash.ftl" as iconEyeSlash>

<#macro
  kw
  autofocus=false
  class="block w-full rounded-2xl border-0 bg-secondary-100 px-4 py-3 text-base text-secondary-1000 placeholder:text-secondary-600 focus:bg-white focus:ring-2 focus:ring-inset focus:ring-primary-800 sm:text-sm"
  disabled=false
  invalid=false
  label=""
  message=""
  name=""
  required=true
  type="text"
  rest...
>
  <div>
    <label class="sr-only" for="${name}">
      ${label}
    </label>
    <#if type == "password">
      <div class="relative" x-data="{ show: false }">
        <input
          <#if autofocus>autofocus</#if>
          <#if disabled>disabled</#if>
          <#if required>required</#if>

          aria-invalid="${invalid?c}"
          class="${class} pr-12"
          id="${name}"
          name="${name}"
          placeholder="${label}"
          :type="show ? 'text' : 'password'"

          <#list rest as attrName, attrValue>
            ${attrName}="${attrValue}"
          </#list>
        >
        <button
          @click="show = !show"
          aria-controls="${name}"
          :aria-expanded="show"
          class="absolute right-4 top-1/2 -translate-y-1/2 text-secondary-600 hover:text-secondary-1000"
          type="button"
        >
          <div x-show="!show">
            <@iconEye.kw />
          </div>
          <div x-cloak x-show="show">
            <@iconEyeSlash.kw />
          </div>
        </button>
      </div>
    <#else>
      <input
        <#if autofocus>autofocus</#if>
        <#if disabled>disabled</#if>
        <#if required>required</#if>

        aria-invalid="${invalid?c}"
        class="${class}"
        id="${name}"
        name="${name}"
        placeholder="${label}"
        type="${type}"

        <#list rest as attrName, attrValue>
          ${attrName}="${attrValue}"
        </#list>
      >
    </#if>
    <#if invalid?? && message??>
      <div class="mt-2 px-1 text-sm text-red-700">
        ${message?no_esc}
      </div>
    </#if>
  </div>
</#macro>
