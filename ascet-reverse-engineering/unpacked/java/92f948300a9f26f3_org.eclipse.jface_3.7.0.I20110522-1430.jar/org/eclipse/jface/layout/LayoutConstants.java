/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.layout;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Display;

public final class LayoutConstants {
    private static Point dialogMargins = null;
    private static Point dialogSpacing = null;
    private static Point minButtonSize = null;

    private static void initializeConstants() {
        if (dialogMargins != null) {
            return;
        }
        GC gc = new GC((Drawable)Display.getCurrent());
        gc.setFont(JFaceResources.getDialogFont());
        FontMetrics fontMetrics = gc.getFontMetrics();
        dialogMargins = new Point(Dialog.convertHorizontalDLUsToPixels(fontMetrics, 7), Dialog.convertVerticalDLUsToPixels(fontMetrics, 7));
        dialogSpacing = new Point(Dialog.convertHorizontalDLUsToPixels(fontMetrics, 4), Dialog.convertVerticalDLUsToPixels(fontMetrics, 4));
        minButtonSize = new Point(Dialog.convertHorizontalDLUsToPixels(fontMetrics, 61), 0);
        gc.dispose();
    }

    public static final Point getMargins() {
        LayoutConstants.initializeConstants();
        return dialogMargins;
    }

    public static final Point getSpacing() {
        LayoutConstants.initializeConstants();
        return dialogSpacing;
    }

    public static final Point getMinButtonSize() {
        LayoutConstants.initializeConstants();
        return minButtonSize;
    }
}

