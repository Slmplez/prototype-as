/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class CHOOSECOLOR {
    public int lStructSize;
    public int hwndOwner;
    public int hInstance;
    public int rgbResult;
    public int lpCustColors;
    public int Flags;
    public int lCustData;
    public int lpfnHook;
    public int lpTemplateName;
    public static final int sizeof = OS.CHOOSECOLOR_sizeof();
}

