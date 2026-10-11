/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.OSVERSIONINFOEX;

public class OSVERSIONINFOEXW
extends OSVERSIONINFOEX {
    public char[] szCSDVersion = new char[128];
    public static final int sizeof = OS.OSVERSIONINFOEXW_sizeof();
}

