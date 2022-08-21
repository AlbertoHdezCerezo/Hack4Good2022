const defaultTheme = require('tailwindcss/defaultTheme')

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './test/components/previews/**/*',
    './app/javascript/**/*',
    './app/components/**/*',
    './app/helpers/**/*',
    './app/views/**/*'
  ],
  theme: {
    fontFamily: {
      primary: ['nitti, monospace', ...defaultTheme.fontFamily.sans],
      secondary: ['bilo, sans-serif']
    }
  },
  variants: {},
  plugins: []
}
