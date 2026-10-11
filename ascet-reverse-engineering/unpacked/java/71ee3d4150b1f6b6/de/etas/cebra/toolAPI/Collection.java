/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.toolAPI;

import de.etas.cebra.toolAPI.SmalltalkToolAPI;
import de.etas.cebra.toolAPI.ToolAPI;
import de.etas.types.Identifiable;

public class Collection
extends SmalltalkToolAPI {
    public Collection() {
    }

    public Collection(ToolAPI sender, Identifiable obj) {
        super(sender.getSender());
        this.setIdentifier(obj);
    }

    public Collection(Identifiable obj) {
        this.setIdentifier(obj);
    }
}

