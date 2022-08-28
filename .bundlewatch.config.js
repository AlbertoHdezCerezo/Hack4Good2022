/**
 * Bundlewatch keeps track of our JS and CSS bundle sizes.
 * It alerts when the bundle exceeds certain sizes.
 *
 * Information about file configuration can be found in:
 * https://bundlewatch.io/#/reference/configuration?id=configuration-reference
 */
const bundlewatchConfig = {
  files: [
    {
      path: './public/assets/*.js',
      maxSize: '100kb',
      compression: 'none'
    },
    {
      path: './public/assets/*.css',
      maxSize: '100kb',
      compression: 'none'
    }
  ],
  normalizeFilenames: /^.+?(\..+?)\.\w+$/,
  bundlewatchServiceHost: 'https://service.bundlewatch.io', // Can be a custom service
  defaultCompression: 'gzip'
}

module.exports = bundlewatchConfig
