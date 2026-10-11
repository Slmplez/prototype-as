/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICS;
import org.eclipse.swt.internal.win32.OS;

public class NONCLIENTMETRICSW
extends NONCLIENTMETRICS {
    public LOGFONTW lfCaptionFont = new LOGFONTW();
    public LOGFONTW lfSmCaptionFont = new LOGFONTW();
    public LOGFONTW lfMenuFont = new LOGFONTW();
    public LOGFONTW lfStatusFont = new LOGFONTW();
    public LOGFONTW lfMessageFont = new LOGFONTW();
    public static final int sizeof = OS.NONCLIENTMETRICSW_sizeof();
}

