/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.OUTLINETEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICW;

public class OUTLINETEXTMETRICW
extends OUTLINETEXTMETRIC {
    public TEXTMETRICW otmTextMetrics = new TEXTMETRICW();
    public static final int sizeof = OS.OUTLINETEXTMETRICW_sizeof();
}

