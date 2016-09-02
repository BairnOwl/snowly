var express = require('express');
var app = express();

var http = require('http');
var server = http.createServer(app);
var io = require('socket.io').listen(server);

io.sockets.on('connection', function(socket) {

    console.log('connected to snowly app');

    socket.on('disconnect', function() {
        console.log('snowly has disconnected');
    });

    socket.on('pingServer', function() {
        console.log('app is pinging server');

        socket.emit('pingClient');
    });



});

server.listen(3000, function () {
    console.log('snowly app listening on port ' + 3000);
});