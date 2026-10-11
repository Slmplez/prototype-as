/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.gdip.PointF;
import org.eclipse.swt.internal.win32.OS;

public class Pattern
extends Resource {
    public int handle;

    public Pattern(Device device, Image image) {
        super(device);
        if (image == null) {
            SWT.error(4);
        }
        if (image.isDisposed()) {
            SWT.error(5);
        }
        this.device.checkGDIP();
        int[] gdipImage = image.createGdipImage();
        int img = gdipImage[0];
        int width = Gdip.Image_GetWidth(img);
        int height = Gdip.Image_GetHeight(img);
        this.handle = Gdip.TextureBrush_new(img, 0, 0.0f, 0.0f, width, height);
        Gdip.Bitmap_delete(img);
        if (gdipImage[1] != 0) {
            int hHeap = OS.GetProcessHeap();
            OS.HeapFree(hHeap, 0, gdipImage[1]);
        }
        if (this.handle == 0) {
            SWT.error(2);
        }
        this.init();
    }

    public Pattern(Device device, float x1, float y1, float x2, float y2, Color color1, Color color2) {
        this(device, x1, y1, x2, y2, color1, 255, color2, 255);
    }

    public Pattern(Device device, float x1, float y1, float x2, float y2, Color color1, int alpha1, Color color2, int alpha2) {
        super(device);
        if (color1 == null) {
            SWT.error(4);
        }
        if (color1.isDisposed()) {
            SWT.error(5);
        }
        if (color2 == null) {
            SWT.error(4);
        }
        if (color2.isDisposed()) {
            SWT.error(5);
        }
        this.device.checkGDIP();
        int colorRef1 = color1.handle;
        int rgb = colorRef1 >> 16 & 0xFF | colorRef1 & 0xFF00 | (colorRef1 & 0xFF) << 16;
        int foreColor = Gdip.Color_new((alpha1 & 0xFF) << 24 | rgb);
        if (x1 == x2 && y1 == y2) {
            this.handle = Gdip.SolidBrush_new(foreColor);
            if (this.handle == 0) {
                SWT.error(2);
            }
        } else {
            int colorRef2 = color2.handle;
            rgb = colorRef2 >> 16 & 0xFF | colorRef2 & 0xFF00 | (colorRef2 & 0xFF) << 16;
            int backColor = Gdip.Color_new((alpha2 & 0xFF) << 24 | rgb);
            PointF p1 = new PointF();
            p1.X = x1;
            p1.Y = y1;
            PointF p2 = new PointF();
            p2.X = x2;
            p2.Y = y2;
            this.handle = Gdip.LinearGradientBrush_new(p1, p2, foreColor, backColor);
            if (this.handle == 0) {
                SWT.error(2);
            }
            if (alpha1 != 255 || alpha2 != 255) {
                int a = (int)((float)(alpha1 & 0xFF) * 0.5f + (float)(alpha2 & 0xFF) * 0.5f);
                int r = (int)((float)((colorRef1 & 0xFF) >> 0) * 0.5f + (float)((colorRef2 & 0xFF) >> 0) * 0.5f);
                int g = (int)((float)((colorRef1 & 0xFF00) >> 8) * 0.5f + (float)((colorRef2 & 0xFF00) >> 8) * 0.5f);
                int b = (int)((float)((colorRef1 & 0xFF0000) >> 16) * 0.5f + (float)((colorRef2 & 0xFF0000) >> 16) * 0.5f);
                int midColor = Gdip.Color_new(a << 24 | r << 16 | g << 8 | b);
                Gdip.LinearGradientBrush_SetInterpolationColors(this.handle, new int[]{foreColor, midColor, backColor}, new float[]{0.0f, 0.5f, 1.0f}, 3);
                Gdip.Color_delete(midColor);
            }
            Gdip.Color_delete(backColor);
        }
        Gdip.Color_delete(foreColor);
        this.init();
    }

    void destroy() {
        int type = Gdip.Brush_GetType(this.handle);
        switch (type) {
            case 0: {
                Gdip.SolidBrush_delete(this.handle);
                break;
            }
            case 1: {
                Gdip.HatchBrush_delete(this.handle);
                break;
            }
            case 4: {
                Gdip.LinearGradientBrush_delete(this.handle);
                break;
            }
            case 2: {
                Gdip.TextureBrush_delete(this.handle);
            }
        }
        this.handle = 0;
    }

    public boolean isDisposed() {
        return this.handle == 0;
    }

    public String toString() {
        if (this.isDisposed()) {
            return "Pattern {*DISPOSED*}";
        }
        return "Pattern {" + this.handle + "}";
    }
}

