/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.request;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;

public class RequestID {
    private static final int NULL_REQUEST_ID = 0;
    public static final RequestID nullID = new RequestID(0);
    private int fRequestID;

    private RequestID(int ID) {
        this.fRequestID = ID;
    }

    public boolean isNull() {
        return this.fRequestID == 0;
    }

    public boolean equals(Object object) {
        return object != null && object.getClass().equals(this.getClass()) && this.fRequestID == ((RequestID)object).fRequestID;
    }

    public int hashCode() {
        return this.fRequestID;
    }

    public String toString() {
        return new Long(this.fRequestID).toString();
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeInt(this.fRequestID, "request ID", out);
    }

    public static RequestID read(MirrorImpl target, DataInputStream in) throws IOException {
        int result = target.readInt("request ID", in);
        return new RequestID(result);
    }
}

