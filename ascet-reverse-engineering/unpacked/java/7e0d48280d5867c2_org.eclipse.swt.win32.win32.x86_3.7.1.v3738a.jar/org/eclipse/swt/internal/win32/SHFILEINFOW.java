/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.SHFILEINFO;

public class SHFILEINFOW
extends SHFILEINFO {
    public char[] szDisplayName = new char[260];
    public char[] szTypeName = new char[80];
    public static int sizeof = OS.SHFILEINFOW_sizeof();
}

