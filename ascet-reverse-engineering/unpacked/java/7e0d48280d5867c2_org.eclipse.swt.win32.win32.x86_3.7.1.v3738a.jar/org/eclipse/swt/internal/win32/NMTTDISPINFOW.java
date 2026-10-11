/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.NMTTDISPINFO;
import org.eclipse.swt.internal.win32.OS;

public class NMTTDISPINFOW
extends NMTTDISPINFO {
    public char[] szText = new char[80];
    public static final int sizeof = OS.NMTTDISPINFOW_sizeof();
}

