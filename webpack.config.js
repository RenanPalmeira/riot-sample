var webpack = require('webpack')

module.exports = {
    entry: "./src/main.js",
    output: {
        path: __dirname + "/build",
        publicPath: "/build/",
        filename: "bundle.js"
    },
    plugins: [
      new webpack.optimize.OccurenceOrderPlugin(),
      new webpack.ProvidePlugin({ riot: 'riot' })
    ],
    module: {
      loaders: [
        { test: /\.tag$/, exclude: /node_modules/, loader: 'riotjs-loader' }
      ]
    }
};
