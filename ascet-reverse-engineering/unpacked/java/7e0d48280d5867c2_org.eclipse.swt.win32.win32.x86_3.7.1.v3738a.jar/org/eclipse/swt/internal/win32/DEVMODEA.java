/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.DEVMODE;
import org.eclipse.swt.internal.win32.OS;

public class DEVMODEA
extends DEVMODE {
    public byte[] dmDeviceName = new byte[32];
    public byte[] dmFormName = new byte[32];
    public static final int sizeof = OS.DEVMODEA_sizeof();
}

