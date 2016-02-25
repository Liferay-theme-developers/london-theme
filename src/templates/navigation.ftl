<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>

<div aria-expanded="false" class="collapse navbar-collapse" id="navigationCollapse">
	<#if has_navigation && is_setup_complete>
		<nav class="${nav_css_class} site-navigation" id="navigation" role="navigation">

			<div class="navbar-right text-uppercase">
				<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
			</div>
		</nav>
	</#if>

	<nav class="text-uppercase user-personal-bar">
		<ul class="nav navbar-nav navbar-right">
			<@liferay.user_personal_bar />
		</ul>
	<nav>
</div>

<#assign VOID = freeMarkerPortletPreferences.reset()>