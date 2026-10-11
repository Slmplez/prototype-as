/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.theme;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.theme.DrawData;
import org.eclipse.swt.internal.theme.RangeDrawData;

public class Theme {
    Device device;

    public Theme(Device device) {
        this.device = device;
    }

    public Rectangle computeTrim(GC gc, DrawData data) {
        this.checkTheme();
        if (gc == null) {
            SWT.error(4);
        }
        if (data == null) {
            SWT.error(4);
        }
        if (gc.isDisposed()) {
            SWT.error(5);
        }
        return data.computeTrim(this, gc);
    }

    void checkTheme() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
    }

    public void dispose() {
        this.device = null;
    }

    public void drawBackground(GC gc, Rectangle bounds, DrawData data) {
        this.checkTheme();
        if (gc == null) {
            SWT.error(4);
        }
        if (bounds == null) {
            SWT.error(4);
        }
        if (data == null) {
            SWT.error(4);
        }
        if (gc.isDisposed()) {
            SWT.error(5);
        }
        data.draw(this, gc, bounds);
    }

    public void drawFocus(GC gc, Rectangle bounds, DrawData data) {
        this.checkTheme();
        if (gc == null) {
            SWT.error(4);
        }
        if (bounds == null) {
            SWT.error(4);
        }
        if (data == null) {
            SWT.error(4);
        }
        if (gc.isDisposed()) {
            SWT.error(5);
        }
        gc.drawFocus(bounds.x, bounds.y, bounds.width, bounds.height);
    }

    public void drawImage(GC gc, Rectangle bounds, DrawData data, Image image, int flags) {
        this.checkTheme();
        if (gc == null) {
            SWT.error(4);
        }
        if (bounds == null) {
            SWT.error(4);
        }
        if (data == null) {
            SWT.error(4);
        }
        if (image == null) {
            SWT.error(4);
        }
        if (gc.isDisposed()) {
            SWT.error(5);
        }
        data.drawImage(this, image, gc, bounds);
    }

    public void drawText(GC gc, Rectangle bounds, DrawData data, String text, int flags) {
        this.checkTheme();
        if (gc == null) {
            SWT.error(4);
        }
        if (bounds == null) {
            SWT.error(4);
        }
        if (data == null) {
            SWT.error(4);
        }
        if (text == null) {
            SWT.error(4);
        }
        if (gc.isDisposed()) {
            SWT.error(5);
        }
        data.drawText(this, text, flags, gc, bounds);
    }

    public Rectangle getBounds(int part, Rectangle bounds, DrawData data) {
        this.checkTheme();
        if (bounds == null) {
            SWT.error(4);
        }
        if (data == null) {
            SWT.error(4);
        }
        return data.getBounds(part, bounds);
    }

    public int getSelection(Point offset, Rectangle bounds, RangeDrawData data) {
        this.checkTheme();
        if (offset == null) {
            SWT.error(4);
        }
        if (bounds == null) {
            SWT.error(4);
        }
        if (data == null) {
            SWT.error(4);
        }
        return data.getSelection(offset, bounds);
    }

    public int hitBackground(Point position, Rectangle bounds, DrawData data) {
        this.checkTheme();
        if (position == null) {
            SWT.error(4);
        }
        if (bounds == null) {
            SWT.error(4);
        }
        if (data == null) {
            SWT.error(4);
        }
        return data.hit(this, position, bounds);
    }

    public boolean isDisposed() {
        return this.device == null;
    }

    public Rectangle measureText(GC gc, Rectangle bounds, DrawData data, String text, int flags) {
        this.checkTheme();
        if (gc == null) {
            SWT.error(4);
        }
        if (data == null) {
            SWT.error(4);
        }
        if (text == null) {
            SWT.error(4);
        }
        if (gc.isDisposed()) {
            SWT.error(5);
        }
        return data.measureText(this, text, flags, gc, bounds);
    }
}

