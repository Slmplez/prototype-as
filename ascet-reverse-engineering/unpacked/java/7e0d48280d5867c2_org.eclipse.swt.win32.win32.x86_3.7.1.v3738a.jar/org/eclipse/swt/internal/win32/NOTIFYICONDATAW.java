/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.NOTIFYICONDATA;
import org.eclipse.swt.internal.win32.OS;

public class NOTIFYICONDATAW
extends NOTIFYICONDATA {
    public char[] szTip = new char[128];
    public char[] szInfo = new char[256];
    public char[] szInfoTitle = new char[64];
    public static final int sizeof = OS.NOTIFYICONDATAW_V2_SIZE;
}

