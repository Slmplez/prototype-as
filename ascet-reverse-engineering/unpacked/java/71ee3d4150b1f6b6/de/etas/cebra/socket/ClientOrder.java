/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.socket.CebraMessage;
import de.etas.cebra.toolAPI.ToolAPI;

final class ClientOrder {
    ToolAPI toolAPI;
    CebraMessage answer;

    ClientOrder(ToolAPI api, CebraMessage msg) {
        this.answer = msg;
        this.toolAPI = api;
    }
}

