/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.wireadmin;

import org.osgi.service.wireadmin.Wire;

public interface Consumer {
    public void updated(Wire var1, Object var2);

    public void producersConnected(Wire[] var1);
}

