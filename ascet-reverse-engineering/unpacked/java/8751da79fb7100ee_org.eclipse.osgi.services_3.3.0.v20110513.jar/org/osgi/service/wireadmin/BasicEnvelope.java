/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.wireadmin;

import org.osgi.service.wireadmin.Envelope;

public class BasicEnvelope
implements Envelope {
    Object value;
    Object identification;
    String scope;

    public BasicEnvelope(Object value, Object identification, String scope) {
        this.value = value;
        this.identification = identification;
        this.scope = scope;
    }

    public Object getValue() {
        return this.value;
    }

    public Object getIdentification() {
        return this.identification;
    }

    public String getScope() {
        return this.scope;
    }
}

