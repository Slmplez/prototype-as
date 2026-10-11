/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.upnp;

import java.util.Dictionary;

public interface UPnPEventListener {
    public static final String UPNP_FILTER = "upnp.filter";

    public void notifyUPnPEvent(String var1, String var2, Dictionary var3);
}

