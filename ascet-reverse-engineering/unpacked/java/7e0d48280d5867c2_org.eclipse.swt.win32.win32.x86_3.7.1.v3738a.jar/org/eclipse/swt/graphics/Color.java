/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.win32.OS;

public final class Color
extends Resource {
    public int handle;

    Color(Device device) {
        super(device);
    }

    public Color(Device device, int red, int green, int blue) {
        super(device);
        this.init(red, green, blue);
        this.init();
    }

    public Color(Device device, RGB rgb) {
        super(device);
        if (rgb == null) {
            SWT.error(4);
        }
        this.init(rgb.red, rgb.green, rgb.blue);
        this.init();
    }

    void destroy() {
        int index;
        int[] colorRefCount;
        int hPal = this.device.hPalette;
        if (hPal != 0 && (colorRefCount = this.device.colorRefCount)[index = OS.GetNearestPaletteIndex(hPal, this.handle)] > 0) {
            int n = index;
            colorRefCount[n] = colorRefCount[n] - 1;
        }
        this.handle = -1;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Color)) {
            return false;
        }
        Color color = (Color)object;
        return this.device == color.device && (this.handle & 0xFFFFFF) == (color.handle & 0xFFFFFF);
    }

    public int getBlue() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        return (this.handle & 0xFF0000) >> 16;
    }

    public int getGreen() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        return (this.handle & 0xFF00) >> 8;
    }

    public int getRed() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        return this.handle & 0xFF;
    }

    public RGB getRGB() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        return new RGB(this.handle & 0xFF, (this.handle & 0xFF00) >> 8, (this.handle & 0xFF0000) >> 16);
    }

    public int hashCode() {
        return this.handle;
    }

    void init(int red, int green, int blue) {
        if (red > 255 || red < 0 || green > 255 || green < 0 || blue > 255 || blue < 0) {
            SWT.error(5);
        }
        this.handle = red & 0xFF | (green & 0xFF) << 8 | (blue & 0xFF) << 16;
        int hPal = this.device.hPalette;
        if (hPal == 0) {
            return;
        }
        int[] colorRefCount = this.device.colorRefCount;
        int index = OS.GetNearestPaletteIndex(hPal, this.handle);
        byte[] entry = new byte[4];
        OS.GetPaletteEntries(hPal, index, 1, entry);
        if (entry[0] == (byte)red && entry[1] == (byte)green && entry[2] == (byte)blue) {
            int n = index;
            colorRefCount[n] = colorRefCount[n] + 1;
            return;
        }
        int i = 0;
        while (i < colorRefCount.length) {
            if (colorRefCount[i] == 0) {
                index = i;
                break;
            }
            ++i;
        }
        if (i == colorRefCount.length) {
            this.handle = entry[0] & 0xFF | (entry[1] & 0xFF) << 8 | (entry[2] & 0xFF) << 16;
        } else {
            byte[] byArray = new byte[4];
            byArray[0] = (byte)(red & 0xFF);
            byArray[1] = (byte)(green & 0xFF);
            byArray[2] = (byte)(blue & 0xFF);
            entry = byArray;
            OS.SetPaletteEntries(hPal, index, 1, entry);
        }
        int n = index;
        colorRefCount[n] = colorRefCount[n] + 1;
    }

    public boolean isDisposed() {
        return this.handle == -1;
    }

    public String toString() {
        if (this.isDisposed()) {
            return "Color {*DISPOSED*}";
        }
        return "Color {" + this.getRed() + ", " + this.getGreen() + ", " + this.getBlue() + "}";
    }

    public static Color win32_new(Device device, int handle) {
        Color color = new Color(device);
        color.handle = handle;
        return color;
    }
}

