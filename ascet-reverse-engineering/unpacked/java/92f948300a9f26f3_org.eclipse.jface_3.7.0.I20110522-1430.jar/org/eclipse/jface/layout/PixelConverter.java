/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.layout;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.widgets.Control;

public class PixelConverter {
    private final FontMetrics fontMetrics;

    public PixelConverter(Control control) {
        this(control.getFont());
    }

    public PixelConverter(Font font) {
        GC gc = new GC((Drawable)font.getDevice());
        gc.setFont(font);
        this.fontMetrics = gc.getFontMetrics();
        gc.dispose();
    }

    public int convertHeightInCharsToPixels(int chars) {
        return Dialog.convertHeightInCharsToPixels(this.fontMetrics, chars);
    }

    public int convertHorizontalDLUsToPixels(int dlus) {
        return Dialog.convertHorizontalDLUsToPixels(this.fontMetrics, dlus);
    }

    public int convertVerticalDLUsToPixels(int dlus) {
        return Dialog.convertVerticalDLUsToPixels(this.fontMetrics, dlus);
    }

    public int convertWidthInCharsToPixels(int chars) {
        return Dialog.convertWidthInCharsToPixels(this.fontMetrics, chars);
    }
}

