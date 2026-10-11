/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.OS;

public class LOGFONTA
extends LOGFONT {
    public byte[] lfFaceName = new byte[32];
    public static final int sizeof = OS.LOGFONTA_sizeof();
}

