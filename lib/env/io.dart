/*
 * The MIT License (MIT)
 * Copyright (c) 2016 Steven Roose
 */

library websockets.env.io;


import "dart:async";
import "dart:io" as io;

import "../src/websocket_base.dart";
import "../src/environments/io/io_websocket_impl.dart";


class IoWebSocket extends IoWebSocketImpl {

  IoWebSocket._(_inner, _url) : super(_inner, _url);

  static Future<IoWebSocket> connect(url,
                                     {Iterable<String> protocols,
                                     Map<String, dynamic> headers}) async {
    if(url is! Uri) url = Uri.parse(url);
    var ws = await io.WebSocket.connect(url.toString(), protocols: protocols, headers: headers);
    return new IoWebSocket._(ws, url);
  }

}