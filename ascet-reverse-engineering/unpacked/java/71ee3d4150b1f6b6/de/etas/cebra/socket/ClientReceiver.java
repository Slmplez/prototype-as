/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.CebraMessage;
import de.etas.cebra.socket.ToolClient;
import de.etas.cebra.socket.ToolClientDebug;

final class ClientReceiver
extends Thread {
    private ToolClient client;
    private boolean debug;

    ClientReceiver(ToolClient c) {
        this(c, "Client Receiver");
    }

    ClientReceiver(ToolClient c, String threadName) {
        super(threadName);
        this.client = c;
        this.debug = false;
    }

    ClientReceiver(ToolClientDebug c) {
        this(c, "Client Receiver Debug");
    }

    ClientReceiver(ToolClientDebug c, String threadName) {
        super(threadName);
        this.client = c;
        this.debug = true;
    }

    public void run() {
        if (this.debug) {
            CebraMessage msg;
            do {
                if ((msg = ((ToolClientDebug)this.client).receiveCebraMessage()) == null) continue;
                ((ToolClientDebug)this.client).answerOrder(msg);
                if (!msg.isQuitMessage()) continue;
                msg = null;
            } while (msg != null);
        } else {
            CebraMessage msg;
            do {
                if ((msg = this.client.receiveCebraMessage()) == null) continue;
                this.client.answerOrder(msg);
                if (!msg.isQuitMessage()) continue;
                msg = null;
            } while (msg != null);
        }
        ToolClient.shutDownToolClient(this.client.getToolName(), Cebra.getShutDownTimeOut());
    }
}

