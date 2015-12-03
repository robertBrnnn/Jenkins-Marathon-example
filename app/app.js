var http = require('http');
 
// Configure our HTTP server to respond with Hello World to all requests.
var server = http.createServer(function (request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.end("I here you like docker, so I put a docker in a docker in a vm in a docker.....");
});
 
// Listen on port 8000, IP defaults to "0.0.0.0"
server.listen(8000);
 
// Put a friendly message on the terminal
console.log("Server running at http://127.0.0.1:8000/");