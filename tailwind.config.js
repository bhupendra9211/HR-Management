module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    '*.html.erb',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    extend: {},
  },
  plugins: [
    // require('flowbite/plugin')
  ],
}
