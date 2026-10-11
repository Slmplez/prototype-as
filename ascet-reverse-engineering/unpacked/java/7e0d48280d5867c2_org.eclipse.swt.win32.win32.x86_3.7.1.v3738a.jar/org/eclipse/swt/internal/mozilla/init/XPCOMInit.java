/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla.init;

import org.eclipse.swt.internal.Platform;
import org.eclipse.swt.internal.mozilla.init.GREProperty;
import org.eclipse.swt.internal.mozilla.init.GREVersionRange;

public class XPCOMInit
extends Platform {
    public static final int PATH_MAX = 4096;

    public static final native int GREProperty_sizeof();

    public static final native int GREVersionRange_sizeof();

    public static final native int _GRE_GetGREPathWithProperties(GREVersionRange var0, int var1, GREProperty var2, int var3, int var4, int var5);

    public static final int GRE_GetGREPathWithProperties(GREVersionRange versions, int versionsLength, GREProperty properties, int propertiesLength, int buffer, int buflen) {
        lock.lock();
        try {
            int n = XPCOMInit._GRE_GetGREPathWithProperties(versions, versionsLength, properties, propertiesLength, buffer, buflen);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _XPCOMGlueStartup(byte[] var0);

    public static final int XPCOMGlueStartup(byte[] place) {
        lock.lock();
        try {
            int n = XPCOMInit._XPCOMGlueStartup(place);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _XPCOMGlueShutdown();

    public static final int XPCOMGlueShutdown() {
        lock.lock();
        try {
            int n = XPCOMInit._XPCOMGlueShutdown();
            return n;
        }
        finally {
            lock.unlock();
        }
    }
}

