const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['M PLUS 1p', 'ui-sans-serif', 'system-ui'],
      },
      colors: {
        'blue-sky': '#4cb5f5',
        'granite': '#b7b8b6',
        'pine': '#34675c',
        'fields': '#b3c100',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ],
  daisyui: {
    themes: ['light']
  }
}
