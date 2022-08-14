import path from 'path'
import esbuild from 'esbuild'
import rails from 'esbuild-rails'
import babel from 'esbuild-plugin-babel'

esbuild
  .build({
    bundle: true,
    // Path to application.js folder
    absWorkingDir: path.join(process.cwd(), 'app/javascript'),
    // Application.js file, used by Rails to bundle all JS Rails code
    entryPoints: ['application.js'],
    // Destination of JS bundle, points to the Rails JS Asset folder
    outdir: path.join(process.cwd(), 'app/assets/builds'),
    // Enables watch option. Will regenerate JS bundle if fles are changed
    watch: process.argv.includes('--watch'),
    // Set of ESLint plugins
    plugins: [
      // Plugin to easily import Rails JS files, such as Stimulus controllers and channels
      // https://github.com/excid3/esbuild-rails
      rails(),
      // Configures bundle with Babel. Babel configuration defined in babel.config.js
      // Babel translates JS code to make it compatible with older JS versions.
      // https://github.com/nativew/esbuild-plugin-babel
      babel()
    ]
  })
  .catch(() => process.exit(1))
