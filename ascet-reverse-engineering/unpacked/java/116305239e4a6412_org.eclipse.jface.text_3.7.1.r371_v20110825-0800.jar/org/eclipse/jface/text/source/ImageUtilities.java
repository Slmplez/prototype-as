/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 */
package org.eclipse.jface.text.source;

import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;

public class ImageUtilities {
    public static void drawImage(Image image, GC gc, Canvas canvas, Rectangle r, int halign, int valign) {
        if (image != null) {
            Rectangle bounds = image.getBounds();
            int x = 0;
            switch (halign) {
                case 16384: {
                    break;
                }
                case 0x1000000: {
                    x = (r.width - bounds.width) / 2;
                    break;
                }
                case 131072: {
                    x = r.width - bounds.width;
                }
            }
            int y = 0;
            switch (valign) {
                case 128: {
                    FontMetrics fontMetrics = gc.getFontMetrics();
                    y = (fontMetrics.getHeight() - bounds.height) / 2;
                    break;
                }
                case 0x1000000: {
                    y = (r.height - bounds.height) / 2;
                    break;
                }
                case 1024: {
                    FontMetrics fontMetrics = gc.getFontMetrics();
                    y = r.height - (fontMetrics.getHeight() + bounds.height) / 2;
                }
            }
            gc.drawImage(image, r.x + x, r.y + y);
        }
    }

    public static void drawImage(Image image, GC gc, Canvas canvas, Rectangle r, int align) {
        ImageUtilities.drawImage(image, gc, canvas, r, align, 0x1000000);
    }
}

