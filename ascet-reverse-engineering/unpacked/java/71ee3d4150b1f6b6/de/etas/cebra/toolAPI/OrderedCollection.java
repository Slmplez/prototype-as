/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.toolAPI;

import de.etas.cebra.toolAPI.Collection;
import de.etas.cebra.toolAPI.ToolAPI;
import de.etas.types.Identifiable;

public class OrderedCollection
extends Collection {
    public OrderedCollection() {
    }

    public OrderedCollection(ToolAPI sender, Identifiable obj) {
        super(sender, obj);
    }

    public OrderedCollection(Identifiable obj) {
        super(obj);
    }
}

