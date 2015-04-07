package ua.divas.bean;

import java.io.IOException;

import java.util.Date;

import weblogic.websocket.ClosingMessage;
import weblogic.websocket.WebSocketAdapter;
import weblogic.websocket.WebSocketConnection;
import weblogic.websocket.annotation.WebSocket;

@WebSocket(timeout = -1, pathPatterns = { "/ws/*" })
public class SocketMediator extends WebSocketAdapter {

    private static SocketMediator sm;

    public static SocketMediator getSm() {
        return sm;
    }

    public SocketMediator() {
        super();
        sm = this;
    }

    @Override
    public void onOpen(WebSocketConnection webSocketConnection) {
        System.out.println("New connection was created from a client " + webSocketConnection.getRemoteAddress());
        super.onOpen(webSocketConnection);
    }

    @Override
    public void onMessage(WebSocketConnection connection, String payload) {
        // Sends message from the browser back to the client.
        String msgContent = "Message \"" + payload + "\" has been received by server. At:" + new Date();
        System.out.println(msgContent);
        try {
            connection.send("ECHO: " + msgContent);
            broadcast("Grouphug: " + msgContent);
        } catch (IOException e) {
            try {
                connection.close(ClosingMessage.SC_GOING_AWAY);
            } catch (IOException f) {
                f.printStackTrace();
            }
        }
    }


    public void broadcast(String message) {
        for (WebSocketConnection conn : getWebSocketContext().getWebSocketConnections()) {
            try {
                conn.send(message);
            } catch (IOException ioe) {
                ioe.printStackTrace();
            }
        }
    }

}
