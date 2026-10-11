/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.socket.CebraMessage;
import de.etas.cebra.socket.ToolClient;
import de.etas.cebra.socket.ToolEntry;

public class ToolClientDebug
extends ToolClient {
    ToolClientDebug(String name, ToolEntry entry) {
        super(name, entry);
    }

    final CebraMessage receiveCebraMessage() {
        CebraMessage msg = super.receiveCebraMessage();
        this.lf.logMessage("Receive:\r\n" + msg);
        return msg;
    }

    final void sendCebraMessage(CebraMessage msg) {
        if (msg != null) {
            this.lf.logMessage("Send:\r\n" + msg);
        }
        super.sendCebraMessage(msg);
    }
}

