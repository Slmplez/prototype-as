/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.NOTIFYICONDATA;
import org.eclipse.swt.internal.win32.OS;

public class NOTIFYICONDATAA
extends NOTIFYICONDATA {
    public byte[] szTip = new byte[128];
    public byte[] szInfo = new byte[256];
    public byte[] szInfoTitle = new byte[64];
    public static final int sizeof = OS.NOTIFYICONDATAA_V2_SIZE;
}

