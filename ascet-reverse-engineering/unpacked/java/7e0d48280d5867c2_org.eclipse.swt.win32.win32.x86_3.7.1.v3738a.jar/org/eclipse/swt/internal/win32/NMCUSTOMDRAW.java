/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.OS;

public class NMCUSTOMDRAW
extends NMHDR {
    public int dwDrawStage;
    public int hdc;
    public int left;
    public int top;
    public int right;
    public int bottom;
    public int dwItemSpec;
    public int uItemState;
    public int lItemlParam;
    public static final int sizeof = OS.NMCUSTOMDRAW_sizeof();
}

