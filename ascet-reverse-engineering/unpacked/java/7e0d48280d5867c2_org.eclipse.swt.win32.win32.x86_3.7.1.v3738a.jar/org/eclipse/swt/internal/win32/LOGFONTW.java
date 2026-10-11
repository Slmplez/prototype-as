/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.OS;

public class LOGFONTW
extends LOGFONT {
    public char[] lfFaceName = new char[32];
    public static final int sizeof = OS.LOGFONTW_sizeof();
}

