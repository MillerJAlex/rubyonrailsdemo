const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
environment.plugins.appends('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Popper: ['popper.js', 'defualt']
    })
)
module.exports = environment
