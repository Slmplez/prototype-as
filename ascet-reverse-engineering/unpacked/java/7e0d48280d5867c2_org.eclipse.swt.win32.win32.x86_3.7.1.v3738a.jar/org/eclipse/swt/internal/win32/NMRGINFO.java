/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.OS;

public class NMRGINFO
extends NMHDR {
    public int x;
    public int y;
    public int dwItemSpec;
    public static int sizeof = OS.NMRGINFO_sizeof();
}

