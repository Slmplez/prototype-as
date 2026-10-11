/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.OS;

public class OFNOTIFY
extends NMHDR {
    public int lpOFN;
    public int pszFile;
    public static int sizeof = OS.OFNOTIFY_sizeof();
}

