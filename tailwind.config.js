module.exports = {
	content: [
		'./app/views/**/*',
		'./app/helpers/**/*.rb',
		'./app/assets/stylesheets/**/*.css',
		'./app/javascript/**/*.js',
		'./node_modules/flowbite/**/*.js'
	],
	plugins: [
		require('flowbite/plugin')
	]
}
