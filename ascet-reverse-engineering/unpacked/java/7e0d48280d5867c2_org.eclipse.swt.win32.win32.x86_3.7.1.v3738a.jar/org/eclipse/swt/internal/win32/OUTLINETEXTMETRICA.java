/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.OUTLINETEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;

public class OUTLINETEXTMETRICA
extends OUTLINETEXTMETRIC {
    public TEXTMETRICA otmTextMetrics = new TEXTMETRICA();
    public static final int sizeof = OS.OUTLINETEXTMETRICA_sizeof();
}

