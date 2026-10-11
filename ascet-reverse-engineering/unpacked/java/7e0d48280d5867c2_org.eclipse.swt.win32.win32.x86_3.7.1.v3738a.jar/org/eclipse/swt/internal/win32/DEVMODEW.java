/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.DEVMODE;
import org.eclipse.swt.internal.win32.OS;

public class DEVMODEW
extends DEVMODE {
    public char[] dmDeviceName = new char[32];
    public char[] dmFormName = new char[32];
    public static final int sizeof = OS.DEVMODEW_sizeof();
}

