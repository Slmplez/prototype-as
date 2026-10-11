/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.CebraMessage;
import de.etas.cebra.socket.ClientOrder;
import de.etas.cebra.socket.ToolClient;
import de.etas.cebra.socket.ToolClientDebug;
import de.etas.cebra.toolAPI.ToolAPI;

public final class ClientSender {
    private ToolClient client;
    private boolean debug;
    private int users;

    public ClientSender(ToolClient client) {
        this.client = client;
        this.debug = false;
        this.users = 0;
    }

    public ClientSender(ToolClientDebug client) {
        this.client = client;
        this.debug = true;
        this.users = 0;
    }

    public synchronized void addUser() {
        ++this.users;
    }

    public final synchronized void close() {
        --this.users;
        if (this.users == 0) {
            Cebra.println("Closing client connection for " + this.client);
            this.sendMessage(CebraMessage.quitMessage());
        }
    }

    public final synchronized void sendMessage(CebraMessage msg) {
        if (this.debug) {
            ((ToolClientDebug)this.client).sendCebraMessage(msg);
        } else {
            this.client.sendCebraMessage(msg);
        }
    }

    public final synchronized void sendMessage(ToolAPI sender, CebraMessage msg, CebraMessage answer) {
        Cebra.getNewIdentifier(msg);
        answer.setIdentifier(msg.getIdentifier());
        this.client.addOrder(new ClientOrder(sender, answer));
        if (this.debug) {
            ((ToolClientDebug)this.client).sendCebraMessage(msg);
        } else {
            this.client.sendCebraMessage(msg);
        }
    }
}

