const presets = [
  [
    '@babel/preset-env',
    {
      useBuiltIns: 'usage',
      corejs: '3.24.1'
    }
  ]
]

module.exports = { presets }
