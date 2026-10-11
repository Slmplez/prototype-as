/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.wireadmin;

import org.osgi.service.wireadmin.Wire;

public interface Producer {
    public Object polled(Wire var1);

    public void consumersConnected(Wire[] var1);
}

