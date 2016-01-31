<%inherit file='base.mako'/>

<%block name='head'>
	${self.include_css('/css/global.css')}
</%block>

<div id='wrapper'>
	<div id='content'>
		${next.body()}
	</div>
	<%include file='sidebar.mako'/>
	<div id='footer' class='clear_both'>
		## None for now.
	</div>
</div>
