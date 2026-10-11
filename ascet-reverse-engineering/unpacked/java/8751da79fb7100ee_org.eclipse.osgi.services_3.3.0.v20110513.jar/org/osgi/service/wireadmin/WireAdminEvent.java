/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.ServiceReference
 */
package org.osgi.service.wireadmin;

import org.osgi.framework.ServiceReference;
import org.osgi.service.wireadmin.Wire;

public class WireAdminEvent {
    private ServiceReference reference;
    private Wire wire;
    private int type;
    private Throwable throwable;
    public static final int PRODUCER_EXCEPTION = 1;
    public static final int CONSUMER_EXCEPTION = 2;
    public static final int WIRE_CREATED = 4;
    public static final int WIRE_UPDATED = 8;
    public static final int WIRE_DELETED = 16;
    public static final int WIRE_CONNECTED = 32;
    public static final int WIRE_DISCONNECTED = 64;
    public static final int WIRE_TRACE = 128;

    public WireAdminEvent(ServiceReference reference, int type, Wire wire, Throwable exception) {
        this.reference = reference;
        this.wire = wire;
        this.type = type;
        this.throwable = exception;
    }

    public ServiceReference getServiceReference() {
        return this.reference;
    }

    public Wire getWire() {
        return this.wire;
    }

    public int getType() {
        return this.type;
    }

    public Throwable getThrowable() {
        return this.throwable;
    }
}

