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
      primary: ['Inter', ...defaultTheme.fontFamily.sans]
    }
  },
  variants: {},
  plugins: []
}
