/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.OSVERSIONINFO;

public class OSVERSIONINFOA
extends OSVERSIONINFO {
    public byte[] szCSDVersion = new byte[128];
    public static final int sizeof = OS.OSVERSIONINFOA_sizeof();
}

