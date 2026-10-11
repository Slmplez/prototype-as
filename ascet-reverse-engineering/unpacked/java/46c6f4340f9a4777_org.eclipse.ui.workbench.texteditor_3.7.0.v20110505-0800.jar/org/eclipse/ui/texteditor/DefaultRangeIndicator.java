/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationPresentation
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.PaletteData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationPresentation;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public class DefaultRangeIndicator
extends Annotation
implements IAnnotationPresentation {
    private static PaletteData fgPaletteData;
    private Image fImage;

    public void paint(GC gc, Canvas canvas, Rectangle bounds) {
        Point canvasSize = canvas.getSize();
        int x = 0;
        int y = bounds.y;
        int w = canvasSize.x;
        int h = bounds.height;
        int b = 1;
        if (y + h > canvasSize.y) {
            h = canvasSize.y - y;
        }
        if (y < 0) {
            h += y;
            y = 0;
        }
        if (h <= 0) {
            return;
        }
        Image image = this.getImage((Control)canvas);
        gc.drawImage(image, 0, 0, w, h, x, y, w, h);
        gc.setBackground(canvas.getDisplay().getSystemColor(26));
        gc.fillRectangle(x, bounds.y, w, b);
        gc.fillRectangle(x, bounds.y + bounds.height - b, w, b);
    }

    public int getLayer() {
        return 0;
    }

    private Image getImage(Control control) {
        if (this.fImage == null) {
            this.fImage = DefaultRangeIndicator.createImage(control.getDisplay(), control.getSize());
            control.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    if (DefaultRangeIndicator.this.fImage != null && !DefaultRangeIndicator.this.fImage.isDisposed()) {
                        DefaultRangeIndicator.this.fImage.dispose();
                        DefaultRangeIndicator.this.fImage = null;
                    }
                }
            });
        } else {
            Rectangle imageRectangle = this.fImage.getBounds();
            Point controlSize = control.getSize();
            if (imageRectangle.width < controlSize.x || imageRectangle.height < controlSize.y) {
                this.fImage.dispose();
                this.fImage = DefaultRangeIndicator.createImage(control.getDisplay(), controlSize);
            }
        }
        return this.fImage;
    }

    private static Image createImage(Display display, Point size) {
        int width = size.x;
        int height = size.y;
        if (fgPaletteData == null) {
            fgPaletteData = DefaultRangeIndicator.createPalette(display);
        }
        ImageData imageData = new ImageData(width, height, 1, fgPaletteData);
        int y = 0;
        while (y < height) {
            int x = 0;
            while (x < width) {
                imageData.setPixel(x, y, (x + y) % 2);
                ++x;
            }
            ++y;
        }
        return new Image((Device)display, imageData);
    }

    private static PaletteData createPalette(Display display) {
        Color c1 = display.getSystemColor(26);
        Color c2 = display.getSystemColor(22);
        RGB[] rgbs = new RGB[]{new RGB(c1.getRed(), c1.getGreen(), c1.getBlue()), new RGB(c2.getRed(), c2.getGreen(), c2.getBlue())};
        return new PaletteData(rgbs);
    }
}

