// this will run a web server hosting the files in /dist
// to test build files more like production
const express = require('express')
const app = express()
const fs = require('fs')

// serve files out of /dist
app.use('/manufacturing/', express.static('dist'))
// app.use('/css', express.static('dist/css'))
// app.use('/js', express.static('dist/js'))

// on 404, send index.html for Vue single page app
// app.use(function (req, res, next) {
//   console.log('404 - returning index.html for request', req.url)
//   try {
//     const content = fs.readFileSync('dist/index.html', 'utf-8')
//     res.writeHead(200, {
//       'Content-Type': 'text/html; charset=utf-8'
//     })
//     res.end(content)
//   } catch (err) {
//     console.log('could not open "index.html" file:', err.message)
//   }
// })

// start http on port 8000
app.listen('8000', () => console.log(`Express.js app listening on port 8000`))
