/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.NMTTDISPINFO;
import org.eclipse.swt.internal.win32.OS;

public class NMTTDISPINFOA
extends NMTTDISPINFO {
    public byte[] szText = new byte[80];
    public static final int sizeof = OS.NMTTDISPINFOA_sizeof();
}

