/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.RGB;

public final class PaletteData {
    public boolean isDirect;
    public RGB[] colors;
    public int redMask;
    public int greenMask;
    public int blueMask;
    public int redShift;
    public int greenShift;
    public int blueShift;

    public PaletteData(RGB[] colors) {
        if (colors == null) {
            SWT.error(4);
        }
        this.colors = colors;
        this.isDirect = false;
    }

    public PaletteData(int redMask, int greenMask, int blueMask) {
        this.redMask = redMask;
        this.greenMask = greenMask;
        this.blueMask = blueMask;
        this.isDirect = true;
        this.redShift = this.shiftForMask(redMask);
        this.greenShift = this.shiftForMask(greenMask);
        this.blueShift = this.shiftForMask(blueMask);
    }

    public int getPixel(RGB rgb) {
        if (rgb == null) {
            SWT.error(4);
        }
        if (this.isDirect) {
            int pixel = 0;
            pixel |= (this.redShift < 0 ? rgb.red << -this.redShift : rgb.red >>> this.redShift) & this.redMask;
            pixel |= (this.greenShift < 0 ? rgb.green << -this.greenShift : rgb.green >>> this.greenShift) & this.greenMask;
            return pixel |= (this.blueShift < 0 ? rgb.blue << -this.blueShift : rgb.blue >>> this.blueShift) & this.blueMask;
        }
        int i = 0;
        while (i < this.colors.length) {
            if (this.colors[i].equals(rgb)) {
                return i;
            }
            ++i;
        }
        SWT.error(5);
        return 0;
    }

    public RGB getRGB(int pixel) {
        if (this.isDirect) {
            int r = pixel & this.redMask;
            r = this.redShift < 0 ? r >>> -this.redShift : r << this.redShift;
            int g = pixel & this.greenMask;
            g = this.greenShift < 0 ? g >>> -this.greenShift : g << this.greenShift;
            int b = pixel & this.blueMask;
            b = this.blueShift < 0 ? b >>> -this.blueShift : b << this.blueShift;
            return new RGB(r, g, b);
        }
        if (pixel < 0 || pixel >= this.colors.length) {
            SWT.error(5);
        }
        return this.colors[pixel];
    }

    public RGB[] getRGBs() {
        return this.colors;
    }

    int shiftForMask(int mask) {
        int i = 31;
        while (i >= 0) {
            if ((mask >> i & 1) != 0) {
                return 7 - i;
            }
            --i;
        }
        return 32;
    }
}

