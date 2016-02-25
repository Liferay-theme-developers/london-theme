<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">
	<head>
		<title>${the_title} - ${company_name}</title>

		<meta content="initial-scale=1.0, width=device-width" name="viewport" />

		<@liferay_util["include"] page=top_head_include />
	</head>

	<body class="${css_class}">

		<@liferay_ui["quick-access"] contentId="#main-content" />

		<@liferay_util["include"] page=body_top_include />

		<@liferay.control_menu />

		<div id="wrapper">
			<header id="banner" role="banner">
				<div class="container">

					<nav class="navbar navbar-inverse">
						<#if has_navigation && is_setup_complete>
							<#include full_templates_path + "/navigation.ftl">
						</#if>

						<div class="navbar-header">
							<a class="${logo_css_class}" href="${site_default_url}" rel="home" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
								<img alt="${logo_description}" height="${company_logo_height}" src="${site_logo}" width="${company_logo_width}" />
								<#if show_site_name>
									<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
										${site_name}
									</span>
								</#if>
							</a>

							<button class="collapsed navbar-toggle" data-target="#navigationCollapse" data-toggle="collapse" type="button">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>

					</nav>

				</div>
			</header>

			<#include "${full_templates_path}/TEMP-content.ftl" />

			<footer id="footer" role="contentinfo">

				<nav class="container lead" id="company-info">
					<div class="row" id="footer-logo">
						<div class="col-md-12">
							<img alt="1975 London" src="${images_folder}/content/footer-logo@1x.png">
						</div>
					</div>
					<div class="row text-lowercase" id="site-links">
						<ul class="col-md-2 col-xs-6 list-unstyled">
							<li><a href="#">About</a></li>
							<li><a href="#">Careers</a></li>
							<li><a href="#">Blogs</a></li>
							<li><a href="#">Media</a></li>
							<li><a href="#">Shop</a></li>
							<li><a href="#">Help</a></li>
						</ul>
						<ul class="col-md-2 col-xs-6 list-unstyled">
							<li><a href="#">Developers</a></li>
							<li><a href="#">Goals</a></li>
							<li><a href="#">Market</a></li>
							<li><a href="#">Visit us</a></li>
						</ul>
					</div>
					<div class="row" id="legal-links">
						<ul class="col-xs-12 list-inline">
							<li><a href="#">Legal</a></li>
							<li><a href="#">Cookies</a></li>
							<li><a href="#">Legal Terms</a></li>
							<li><a href="#">2015 1975 London Inc.</a></li>
						</ul>
					</div>
				</nav>

				<div class="container">
					<p id="copyright">
						<small><@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a></small>
					</p>
				</div>

				<#-- <#if has_navigation>
					<#include "${full_templates_path}/footer.ftl" />
				</#if> -->

			</footer>

		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<#if selectable>
						<@liferay_util["include"] page=content_include />
					<#else>
						${portletDisplay.recycle()}

						${portletDisplay.setTitle(the_title)}

						<@liferay_theme["wrap-portlet"] page="portlet.ftl">
							<@liferay_util["include"] page=content_include />
						</@>
					</#if>

					<@liferay_util["include"] page=body_bottom_include />

					<@liferay_util["include"] page=bottom_include />

				</div>
			</div>
		</div>

	</body>
</html>