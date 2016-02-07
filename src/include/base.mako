<%!
	id = None
	title = None
	keywords = None
	description = None
%>

<%def name='include_css(url)'>
	<link href='${url}' rel='stylesheet' type='text/css'/>
</%def>

<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>
	<head>
		<meta charset='UTF-8'/>
		<%block name='head'/>
		<title>
			% if self.attr.title:
				${self.attr.title} &#183;
			% endif
			fletcher.tomalty.com
		</title>
		% if self.attr.description:
			<meta name='description' content='${self.attr.description | h}'/>
		% endif
		% if self.attr.keywords:
			<meta name='keywords' content='${', '.join(sorted(self.attr.keywords)) | h}'/>
		% endif
		<link rel='shortcut icon' type='image/jpeg' href='/img/sierpinski.jpg'/>
		<%include file='google_analytics.mako'/>
	</head>
	<body id='${self.attr.id}'>
		${next.body()}
	</body>
</html>
