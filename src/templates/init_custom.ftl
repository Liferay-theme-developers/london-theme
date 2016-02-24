<#assign siteLogoRetina = getterUtil.getBoolean(themeDisplay.getThemeSetting("site-logo-retina"))>

<#if siteLogoRetina>
	<#assign company_logo_height = company_logo_height/2>
	<#assign company_logo_width = company_logo_width/2>
</#if>