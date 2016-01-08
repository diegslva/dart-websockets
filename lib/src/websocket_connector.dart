/*
 * The MIT License (MIT)
 * Copyright (c) 2016 Steven Roose
 */

library websockets.connector;


import "dart:async";

import 'websocket.dart';


typedef Future<WebSocket> WebSocketConnector(url,
                                             { Iterable<String> protocols,
                                               Map<String, dynamic> headers});