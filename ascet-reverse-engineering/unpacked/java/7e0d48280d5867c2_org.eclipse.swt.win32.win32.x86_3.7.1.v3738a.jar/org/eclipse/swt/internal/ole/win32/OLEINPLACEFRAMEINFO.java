/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;

public final class OLEINPLACEFRAMEINFO {
    public int cb;
    public int fMDIApp;
    public int hwndFrame;
    public int haccel;
    public int cAccelEntries;
    public static final int sizeof = COM.OLEINPLACEFRAMEINFO_sizeof();
}

