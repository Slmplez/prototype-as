/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICS;
import org.eclipse.swt.internal.win32.OS;

public class NONCLIENTMETRICSA
extends NONCLIENTMETRICS {
    public LOGFONTA lfCaptionFont = new LOGFONTA();
    public LOGFONTA lfSmCaptionFont = new LOGFONTA();
    public LOGFONTA lfMenuFont = new LOGFONTA();
    public LOGFONTA lfStatusFont = new LOGFONTA();
    public LOGFONTA lfMessageFont = new LOGFONTA();
    public static final int sizeof = OS.NONCLIENTMETRICSA_sizeof();
}

