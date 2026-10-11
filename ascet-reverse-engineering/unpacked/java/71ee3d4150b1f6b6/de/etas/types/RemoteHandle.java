/*
 * Decompiled with CFR 0.152.
 */
package de.etas.types;

import de.etas.types.Identifiable;
import de.etas.types.ObjectHandle;

public class RemoteHandle
extends ObjectHandle {
    public static RemoteHandle Null = new RemoteHandle(0L);
    public static RemoteHandle POSITIVE_INFINITY = new RemoteHandle(1L);
    public static RemoteHandle NEGATIVE_INFINITY = new RemoteHandle(2L);

    public RemoteHandle() {
        this.registered = true;
    }

    private RemoteHandle(long id) {
        this();
        this.objectIdent = id;
    }

    public RemoteHandle(Identifiable obj) {
        super(obj);
        this.registered = true;
    }
}

