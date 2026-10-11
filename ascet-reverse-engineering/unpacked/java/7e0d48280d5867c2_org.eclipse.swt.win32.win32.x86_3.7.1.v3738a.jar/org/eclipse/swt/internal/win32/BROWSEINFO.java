/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class BROWSEINFO {
    public int hwndOwner;
    public int pidlRoot;
    public int pszDisplayName;
    public int lpszTitle;
    public int ulFlags;
    public int lpfn;
    public int lParam;
    public int iImage;
    public static final int sizeof = OS.BROWSEINFO_sizeof();
}

