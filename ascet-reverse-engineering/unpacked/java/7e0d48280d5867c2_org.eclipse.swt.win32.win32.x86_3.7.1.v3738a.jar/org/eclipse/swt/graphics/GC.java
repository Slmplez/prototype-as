/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.LineAttributes;
import org.eclipse.swt.graphics.Path;
import org.eclipse.swt.graphics.Pattern;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.Transform;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.gdip.PointF;
import org.eclipse.swt.internal.gdip.Rect;
import org.eclipse.swt.internal.gdip.RectF;
import org.eclipse.swt.internal.win32.BITMAP;
import org.eclipse.swt.internal.win32.BITMAPINFOHEADER;
import org.eclipse.swt.internal.win32.BLENDFUNCTION;
import org.eclipse.swt.internal.win32.GCP_RESULTS;
import org.eclipse.swt.internal.win32.GRADIENT_RECT;
import org.eclipse.swt.internal.win32.ICONINFO;
import org.eclipse.swt.internal.win32.LOGBRUSH;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.LOGPEN;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SIZE;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.internal.win32.TRIVERTEX;

public final class GC
extends Resource {
    public int handle;
    Drawable drawable;
    GCData data;
    static final int FOREGROUND = 1;
    static final int BACKGROUND = 2;
    static final int FONT = 4;
    static final int LINE_STYLE = 8;
    static final int LINE_WIDTH = 16;
    static final int LINE_CAP = 32;
    static final int LINE_JOIN = 64;
    static final int LINE_MITERLIMIT = 128;
    static final int FOREGROUND_TEXT = 256;
    static final int BACKGROUND_TEXT = 512;
    static final int BRUSH = 1024;
    static final int PEN = 2048;
    static final int NULL_BRUSH = 4096;
    static final int NULL_PEN = 8192;
    static final int DRAW_OFFSET = 16384;
    static final int DRAW = 22777;
    static final int FILL = 9218;
    static final float[] LINE_DOT_ZERO = new float[]{3.0f, 3.0f};
    static final float[] LINE_DASH_ZERO = new float[]{18.0f, 6.0f};
    static final float[] LINE_DASHDOT_ZERO = new float[]{9.0f, 6.0f, 3.0f, 6.0f};
    static final float[] LINE_DASHDOTDOT_ZERO = new float[]{9.0f, 3.0f, 3.0f, 3.0f, 3.0f, 3.0f};

    GC() {
    }

    public GC(Drawable drawable) {
        this(drawable, 0);
    }

    public GC(Drawable drawable, int style) {
        if (drawable == null) {
            SWT.error(4);
        }
        GCData data = new GCData();
        data.style = GC.checkStyle(style);
        int hDC = drawable.internal_new_GC(data);
        Device device = data.device;
        if (device == null) {
            device = Device.getDevice();
        }
        if (device == null) {
            SWT.error(4);
        }
        this.device = data.device = device;
        this.init(drawable, data, hDC);
        this.init();
    }

    static int checkStyle(int style) {
        if ((style & 0x2000000) != 0) {
            style &= 0xFBFFFFFF;
        }
        return style & 0x6000000;
    }

    void checkGC(int mask) {
        int state = this.data.state;
        if ((state & mask) == mask) {
            return;
        }
        state = (state ^ mask) & mask;
        this.data.state |= mask;
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            int pen = this.data.gdipPen;
            float width = this.data.lineWidth;
            if ((state & 1) != 0 || pen == 0 && (state & 0xF8) != 0) {
                int brush;
                if (this.data.gdipFgBrush != 0) {
                    Gdip.SolidBrush_delete(this.data.gdipFgBrush);
                }
                this.data.gdipFgBrush = 0;
                Pattern pattern = this.data.foregroundPattern;
                if (pattern != null) {
                    brush = pattern.handle;
                    if ((this.data.style & 0x8000000) != 0) {
                        switch (Gdip.Brush_GetType(brush)) {
                            case 2: {
                                brush = Gdip.Brush_Clone(brush);
                                if (brush == 0) {
                                    SWT.error(2);
                                }
                                Gdip.TextureBrush_ScaleTransform(brush, -1.0f, 1.0f, 0);
                                this.data.gdipFgBrush = brush;
                            }
                        }
                    }
                } else {
                    int foreground = this.data.foreground;
                    int rgb = foreground >> 16 & 0xFF | foreground & 0xFF00 | (foreground & 0xFF) << 16;
                    int color = Gdip.Color_new(this.data.alpha << 24 | rgb);
                    if (color == 0) {
                        SWT.error(2);
                    }
                    if ((brush = Gdip.SolidBrush_new(color)) == 0) {
                        SWT.error(2);
                    }
                    Gdip.Color_delete(color);
                    this.data.gdipFgBrush = brush;
                }
                if (pen != 0) {
                    Gdip.Pen_SetBrush(pen, brush);
                } else {
                    pen = this.data.gdipPen = Gdip.Pen_new(brush, width);
                }
            }
            if ((state & 0x10) != 0) {
                Gdip.Pen_SetWidth(pen, width);
                switch (this.data.lineStyle) {
                    case 6: {
                        state |= 8;
                    }
                }
            }
            if ((state & 8) != 0) {
                float[] dashes = null;
                float dashOffset = 0.0f;
                int dashStyle = 0;
                switch (this.data.lineStyle) {
                    case 1: {
                        break;
                    }
                    case 3: {
                        dashStyle = 2;
                        if (width != 0.0f) break;
                        dashes = LINE_DOT_ZERO;
                        break;
                    }
                    case 2: {
                        dashStyle = 1;
                        if (width != 0.0f) break;
                        dashes = LINE_DASH_ZERO;
                        break;
                    }
                    case 4: {
                        dashStyle = 3;
                        if (width != 0.0f) break;
                        dashes = LINE_DASHDOT_ZERO;
                        break;
                    }
                    case 5: {
                        dashStyle = 4;
                        if (width != 0.0f) break;
                        dashes = LINE_DASHDOTDOT_ZERO;
                        break;
                    }
                    case 6: {
                        if (this.data.lineDashes == null) break;
                        dashOffset = this.data.lineDashesOffset / Math.max(1.0f, width);
                        dashes = new float[this.data.lineDashes.length * 2];
                        int i = 0;
                        while (i < this.data.lineDashes.length) {
                            float dash;
                            dashes[i] = dash = this.data.lineDashes[i] / Math.max(1.0f, width);
                            dashes[i + this.data.lineDashes.length] = dash;
                            ++i;
                        }
                        break;
                    }
                }
                if (dashes != null) {
                    Gdip.Pen_SetDashPattern(pen, dashes, dashes.length);
                    Gdip.Pen_SetDashStyle(pen, 5);
                    Gdip.Pen_SetDashOffset(pen, dashOffset);
                } else {
                    Gdip.Pen_SetDashStyle(pen, dashStyle);
                }
            }
            if ((state & 0x80) != 0) {
                Gdip.Pen_SetMiterLimit(pen, this.data.lineMiterLimit);
            }
            if ((state & 0x40) != 0) {
                int joinStyle = 0;
                switch (this.data.lineJoin) {
                    case 1: {
                        joinStyle = 0;
                        break;
                    }
                    case 3: {
                        joinStyle = 1;
                        break;
                    }
                    case 2: {
                        joinStyle = 2;
                    }
                }
                Gdip.Pen_SetLineJoin(pen, joinStyle);
            }
            if ((state & 0x20) != 0) {
                int dashCap = 0;
                int capStyle = 0;
                switch (this.data.lineCap) {
                    case 1: {
                        capStyle = 0;
                        break;
                    }
                    case 2: {
                        capStyle = 2;
                        dashCap = 2;
                        break;
                    }
                    case 3: {
                        capStyle = 1;
                    }
                }
                Gdip.Pen_SetLineCap(pen, capStyle, capStyle, dashCap);
            }
            if ((state & 2) != 0) {
                if (this.data.gdipBgBrush != 0) {
                    Gdip.SolidBrush_delete(this.data.gdipBgBrush);
                }
                this.data.gdipBgBrush = 0;
                Pattern pattern = this.data.backgroundPattern;
                if (pattern != null) {
                    this.data.gdipBrush = pattern.handle;
                    if ((this.data.style & 0x8000000) != 0) {
                        switch (Gdip.Brush_GetType(this.data.gdipBrush)) {
                            case 2: {
                                int brush = Gdip.Brush_Clone(this.data.gdipBrush);
                                if (brush == 0) {
                                    SWT.error(2);
                                }
                                Gdip.TextureBrush_ScaleTransform(brush, -1.0f, 1.0f, 0);
                                this.data.gdipBrush = this.data.gdipBgBrush = brush;
                            }
                        }
                    }
                } else {
                    int brush;
                    int background = this.data.background;
                    int rgb = background >> 16 & 0xFF | background & 0xFF00 | (background & 0xFF) << 16;
                    int color = Gdip.Color_new(this.data.alpha << 24 | rgb);
                    if (color == 0) {
                        SWT.error(2);
                    }
                    if ((brush = Gdip.SolidBrush_new(color)) == 0) {
                        SWT.error(2);
                    }
                    Gdip.Color_delete(color);
                    this.data.gdipBrush = this.data.gdipBgBrush = brush;
                }
            }
            if ((state & 4) != 0) {
                Font font = this.data.font;
                OS.SelectObject(this.handle, font.handle);
                int[] hFont = new int[1];
                int gdipFont = GC.createGdipFont(this.handle, font.handle, gdipGraphics, this.device.fontCollection, null, hFont);
                if (hFont[0] != 0) {
                    OS.SelectObject(this.handle, hFont[0]);
                }
                if (this.data.hGDIFont != 0) {
                    OS.DeleteObject(this.data.hGDIFont);
                }
                this.data.hGDIFont = hFont[0];
                if (this.data.gdipFont != 0) {
                    Gdip.Font_delete(this.data.gdipFont);
                }
                this.data.gdipFont = gdipFont;
            }
            if ((state & 0x4000) != 0) {
                float penWidth;
                this.data.gdipYOffset = 0.0f;
                this.data.gdipXOffset = 0.0f;
                int matrix = Gdip.Matrix_new(1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
                PointF point = new PointF();
                point.Y = 1.0f;
                point.X = 1.0f;
                Gdip.Graphics_GetTransform(gdipGraphics, matrix);
                Gdip.Matrix_TransformVectors(matrix, point, 1);
                Gdip.Matrix_delete(matrix);
                float scaling = point.X;
                if (scaling < 0.0f) {
                    scaling = -scaling;
                }
                if ((penWidth = this.data.lineWidth * scaling) == 0.0f || (int)penWidth % 2 == 1) {
                    this.data.gdipXOffset = 0.5f / scaling;
                }
                if ((scaling = point.Y) < 0.0f) {
                    scaling = -scaling;
                }
                if ((penWidth = this.data.lineWidth * scaling) == 0.0f || (int)penWidth % 2 == 1) {
                    this.data.gdipYOffset = 0.5f / scaling;
                }
            }
            return;
        }
        if ((state & 0x79) != 0) {
            int newPen;
            int color = this.data.foreground;
            int width = (int)this.data.lineWidth;
            int[] dashes = null;
            int lineStyle = 0;
            switch (this.data.lineStyle) {
                case 1: {
                    break;
                }
                case 2: {
                    lineStyle = 1;
                    break;
                }
                case 3: {
                    lineStyle = 2;
                    break;
                }
                case 4: {
                    lineStyle = 3;
                    break;
                }
                case 5: {
                    lineStyle = 4;
                    break;
                }
                case 6: {
                    if (this.data.lineDashes == null) break;
                    lineStyle = 7;
                    dashes = new int[this.data.lineDashes.length];
                    int i = 0;
                    while (i < dashes.length) {
                        dashes[i] = (int)this.data.lineDashes[i];
                        ++i;
                    }
                    break;
                }
            }
            if ((state & 8) != 0) {
                OS.SetBkMode(this.handle, this.data.lineStyle == 1 ? 2 : 1);
            }
            int joinStyle = 0;
            switch (this.data.lineJoin) {
                case 1: {
                    joinStyle = 8192;
                    break;
                }
                case 2: {
                    joinStyle = 0;
                    break;
                }
                case 3: {
                    joinStyle = 4096;
                }
            }
            int capStyle = 0;
            switch (this.data.lineCap) {
                case 2: {
                    capStyle = 0;
                    break;
                }
                case 1: {
                    capStyle = 512;
                    break;
                }
                case 3: {
                    capStyle = 256;
                }
            }
            int style = lineStyle | joinStyle | capStyle;
            if (OS.IsWinCE || width == 0 && lineStyle != 7 || style == 0) {
                newPen = OS.CreatePen(style & 0xF, width, color);
            } else {
                LOGBRUSH logBrush = new LOGBRUSH();
                logBrush.lbStyle = 0;
                logBrush.lbColor = color;
                newPen = OS.ExtCreatePen(style | 0x10000, Math.max(1, width), logBrush, dashes != null ? dashes.length : 0, dashes);
            }
            OS.SelectObject(this.handle, newPen);
            this.data.state |= 0x800;
            this.data.state &= 0xFFFFDFFF;
            if (this.data.hPen != 0) {
                OS.DeleteObject(this.data.hPen);
            }
            this.data.hPen = this.data.hOldPen = newPen;
        } else if ((state & 0x800) != 0) {
            OS.SelectObject(this.handle, this.data.hOldPen);
            this.data.state &= 0xFFFFDFFF;
        } else if ((state & 0x2000) != 0) {
            this.data.hOldPen = OS.SelectObject(this.handle, OS.GetStockObject(8));
            this.data.state &= 0xFFFFF7FF;
        }
        if ((state & 2) != 0) {
            int newBrush = OS.CreateSolidBrush(this.data.background);
            OS.SelectObject(this.handle, newBrush);
            this.data.state |= 0x400;
            this.data.state &= 0xFFFFEFFF;
            if (this.data.hBrush != 0) {
                OS.DeleteObject(this.data.hBrush);
            }
            this.data.hOldBrush = this.data.hBrush = newBrush;
        } else if ((state & 0x400) != 0) {
            OS.SelectObject(this.handle, this.data.hOldBrush);
            this.data.state &= 0xFFFFEFFF;
        } else if ((state & 0x1000) != 0) {
            this.data.hOldBrush = OS.SelectObject(this.handle, OS.GetStockObject(5));
            this.data.state &= 0xFFFFFBFF;
        }
        if ((state & 0x200) != 0) {
            OS.SetBkColor(this.handle, this.data.background);
        }
        if ((state & 0x100) != 0) {
            OS.SetTextColor(this.handle, this.data.foreground);
        }
        if ((state & 4) != 0) {
            Font font = this.data.font;
            OS.SelectObject(this.handle, font.handle);
        }
    }

    public void copyArea(Image image, int x, int y) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (image == null) {
            SWT.error(4);
        }
        if (image.type != 0 || image.isDisposed()) {
            SWT.error(5);
        }
        Rectangle rect = image.getBounds();
        int memHdc = OS.CreateCompatibleDC(this.handle);
        int hOldBitmap = OS.SelectObject(memHdc, image.handle);
        OS.BitBlt(memHdc, 0, 0, rect.width, rect.height, this.handle, x, y, 0xCC0020);
        OS.SelectObject(memHdc, hOldBitmap);
        OS.DeleteDC(memHdc);
    }

    public void copyArea(int srcX, int srcY, int width, int height, int destX, int destY) {
        this.copyArea(srcX, srcY, width, height, destX, destY, true);
    }

    public void copyArea(int srcX, int srcY, int width, int height, int destX, int destY, boolean paint) {
        int hwnd;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if ((hwnd = this.data.hwnd) == 0) {
            OS.BitBlt(this.handle, destX, destY, width, height, this.handle, srcX, srcY, 0xCC0020);
        } else {
            RECT lprcClip = null;
            int hrgn = OS.CreateRectRgn(0, 0, 0, 0);
            if (OS.GetClipRgn(this.handle, hrgn) == 1) {
                lprcClip = new RECT();
                OS.GetRgnBox(hrgn, lprcClip);
            }
            OS.DeleteObject(hrgn);
            RECT lprcScroll = new RECT();
            OS.SetRect(lprcScroll, srcX, srcY, srcX + width, srcY + height);
            int flags = paint ? 6 : 0;
            int res = OS.ScrollWindowEx(hwnd, destX - srcX, destY - srcY, lprcScroll, lprcClip, 0, null, flags);
            if (res == 0 && OS.IsWinCE) {
                OS.BitBlt(this.handle, destX, destY, width, height, this.handle, srcX, srcY, 0xCC0020);
                if (paint) {
                    boolean disjoint;
                    int deltaX = destX - srcX;
                    int deltaY = destY - srcY;
                    boolean bl = disjoint = destX + width < srcX || srcX + width < destX || destY + height < srcY || srcY + height < destY;
                    if (disjoint) {
                        OS.InvalidateRect(hwnd, lprcScroll, true);
                    } else {
                        if (deltaX != 0) {
                            int newX = destX - deltaX;
                            if (deltaX < 0) {
                                newX = destX + width;
                            }
                            OS.SetRect(lprcScroll, newX, srcY, newX + Math.abs(deltaX), srcY + height);
                            OS.InvalidateRect(hwnd, lprcScroll, true);
                        }
                        if (deltaY != 0) {
                            int newY = destY - deltaY;
                            if (deltaY < 0) {
                                newY = destY + height;
                            }
                            OS.SetRect(lprcScroll, srcX, newY, srcX + width, newY + Math.abs(deltaY));
                            OS.InvalidateRect(hwnd, lprcScroll, true);
                        }
                    }
                }
            }
        }
    }

    static int createGdipFont(int hDC, int hFont, int graphics, int fontCollection, int[] outFamily, int[] outFont) {
        int font = Gdip.Font_new(hDC, hFont);
        if (font == 0) {
            SWT.error(2);
        }
        int family = 0;
        if (!Gdip.Font_IsAvailable(font)) {
            char[] chars;
            Gdip.Font_delete(font);
            LOGFONT logFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
            OS.GetObject(hFont, LOGFONT.sizeof, logFont);
            int size = Math.abs(logFont.lfHeight);
            int style = 0;
            if (logFont.lfWeight == 700) {
                style |= 1;
            }
            if (logFont.lfItalic != 0) {
                style |= 2;
            }
            if (OS.IsUnicode) {
                chars = logFont.lfFaceName;
            } else {
                chars = new char[32];
                byte[] bytes = ((LOGFONTA)logFont).lfFaceName;
                OS.MultiByteToWideChar(0, 1, bytes, bytes.length, chars, chars.length);
            }
            int index = 0;
            while (index < chars.length) {
                if (chars[index] == '\u0000') break;
                ++index;
            }
            String name = new String(chars, 0, index);
            if (Compatibility.equalsIgnoreCase(name, "Courier")) {
                name = "Courier New";
            }
            char[] buffer = new char[name.length() + 1];
            name.getChars(0, name.length(), buffer, 0);
            if (fontCollection != 0 && !Gdip.FontFamily_IsAvailable(family = Gdip.FontFamily_new(buffer, fontCollection))) {
                Gdip.FontFamily_delete(family);
                family = Gdip.FontFamily_new(buffer, 0);
                if (!Gdip.FontFamily_IsAvailable(family)) {
                    Gdip.FontFamily_delete(family);
                    family = 0;
                }
            }
            font = family != 0 ? Gdip.Font_new(family, size, style, 2) : Gdip.Font_new(buffer, size, style, 2, 0);
            if (outFont != null && font != 0) {
                int hHeap = OS.GetProcessHeap();
                int pLogFont = OS.HeapAlloc(hHeap, 8, LOGFONTW.sizeof);
                Gdip.Font_GetLogFontW(font, graphics, pLogFont);
                outFont[0] = OS.CreateFontIndirectW(pLogFont);
                OS.HeapFree(hHeap, 0, pLogFont);
            }
        }
        if (outFamily != null && font != 0) {
            if (family == 0) {
                family = Gdip.FontFamily_new();
                Gdip.Font_GetFamily(font, family);
            }
            outFamily[0] = family;
        } else if (family != 0) {
            Gdip.FontFamily_delete(family);
        }
        if (font == 0) {
            SWT.error(2);
        }
        return font;
    }

    static void destroyGdipBrush(int brush) {
        int type = Gdip.Brush_GetType(brush);
        switch (type) {
            case 0: {
                Gdip.SolidBrush_delete(brush);
                break;
            }
            case 1: {
                Gdip.HatchBrush_delete(brush);
                break;
            }
            case 4: {
                Gdip.LinearGradientBrush_delete(brush);
                break;
            }
            case 2: {
                Gdip.TextureBrush_delete(brush);
            }
        }
    }

    void destroy() {
        Image image;
        int hNullBitmap;
        boolean gdip = this.data.gdipGraphics != 0;
        this.disposeGdip();
        if (gdip && (this.data.style & 0x8000000) != 0) {
            OS.SetLayout(this.handle, OS.GetLayout(this.handle) | 1);
        }
        if (this.data.hPen != 0) {
            OS.SelectObject(this.handle, OS.GetStockObject(8));
            OS.DeleteObject(this.data.hPen);
            this.data.hPen = 0;
        }
        if (this.data.hBrush != 0) {
            OS.SelectObject(this.handle, OS.GetStockObject(5));
            OS.DeleteObject(this.data.hBrush);
            this.data.hBrush = 0;
        }
        if ((hNullBitmap = this.data.hNullBitmap) != 0) {
            OS.SelectObject(this.handle, hNullBitmap);
            this.data.hNullBitmap = 0;
        }
        if ((image = this.data.image) != null) {
            image.memGC = null;
        }
        if (this.drawable != null) {
            this.drawable.internal_dispose_GC(this.handle, this.data);
        }
        this.drawable = null;
        this.handle = 0;
        this.data.image = null;
        this.data.ps = null;
        this.data = null;
    }

    void disposeGdip() {
        if (this.data.gdipPen != 0) {
            Gdip.Pen_delete(this.data.gdipPen);
        }
        if (this.data.gdipBgBrush != 0) {
            GC.destroyGdipBrush(this.data.gdipBgBrush);
        }
        if (this.data.gdipFgBrush != 0) {
            GC.destroyGdipBrush(this.data.gdipFgBrush);
        }
        if (this.data.gdipFont != 0) {
            Gdip.Font_delete(this.data.gdipFont);
        }
        if (this.data.hGDIFont != 0) {
            OS.DeleteObject(this.data.hGDIFont);
        }
        if (this.data.gdipGraphics != 0) {
            Gdip.Graphics_delete(this.data.gdipGraphics);
        }
        this.data.hGDIFont = 0;
        this.data.gdipPen = 0;
        this.data.gdipFont = 0;
        this.data.gdipFgBrush = 0;
        this.data.gdipBgBrush = 0;
        this.data.gdipBrush = 0;
        this.data.gdipGraphics = 0;
    }

    public void drawArc(int x, int y, int width, int height, int startAngle, int arcAngle) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(22777);
        if (width < 0) {
            x += width;
            width = -width;
        }
        if (height < 0) {
            y += height;
            height = -height;
        }
        if (width == 0 || height == 0 || arcAngle == 0) {
            return;
        }
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            Gdip.Graphics_TranslateTransform(gdipGraphics, this.data.gdipXOffset, this.data.gdipYOffset, 0);
            if (width == height) {
                Gdip.Graphics_DrawArc(gdipGraphics, this.data.gdipPen, x, y, width, height, -startAngle, -arcAngle);
            } else {
                int matrix;
                int path = Gdip.GraphicsPath_new(0);
                if (path == 0) {
                    SWT.error(2);
                }
                if ((matrix = Gdip.Matrix_new(width, 0.0f, 0.0f, height, x, y)) == 0) {
                    SWT.error(2);
                }
                Gdip.GraphicsPath_AddArc(path, 0.0f, 0.0f, 1.0f, 1.0f, -startAngle, -arcAngle);
                Gdip.GraphicsPath_Transform(path, matrix);
                Gdip.Graphics_DrawPath(gdipGraphics, this.data.gdipPen, path);
                Gdip.Matrix_delete(matrix);
                Gdip.GraphicsPath_delete(path);
            }
            Gdip.Graphics_TranslateTransform(gdipGraphics, -this.data.gdipXOffset, -this.data.gdipYOffset, 0);
            return;
        }
        if ((this.data.style & 0x8000000) != 0 && this.data.lineWidth != 0.0f && this.data.lineWidth % 2.0f == 0.0f) {
            --x;
        }
        if (OS.IsWinCE) {
            if (arcAngle < 0) {
                startAngle += arcAngle;
                arcAngle = -arcAngle;
            }
            if (arcAngle > 360) {
                arcAngle = 360;
            }
            int[] points = new int[(arcAngle + 1) * 2];
            int cteX = 2 * x + width;
            int cteY = 2 * y + height;
            int index = 0;
            int i = 0;
            while (i <= arcAngle) {
                points[index++] = Compatibility.cos(startAngle + i, width) + cteX >> 1;
                points[index++] = cteY - Compatibility.sin(startAngle + i, height) >> 1;
                ++i;
            }
            OS.Polyline(this.handle, points, points.length / 2);
        } else {
            int y1;
            int y2;
            int x1;
            int x2;
            if (arcAngle >= 360 || arcAngle <= -360) {
                x1 = x2 = x + width;
                y1 = y2 = y + height / 2;
            } else {
                boolean isNegative = arcAngle < 0;
                arcAngle += startAngle;
                if (isNegative) {
                    int tmp = startAngle;
                    startAngle = arcAngle;
                    arcAngle = tmp;
                }
                x1 = Compatibility.cos(startAngle, width) + x + width / 2;
                y1 = -1 * Compatibility.sin(startAngle, height) + y + height / 2;
                x2 = Compatibility.cos(arcAngle, width) + x + width / 2;
                y2 = -1 * Compatibility.sin(arcAngle, height) + y + height / 2;
            }
            OS.Arc(this.handle, x, y, x + width + 1, y + height + 1, x1, y1, x2, y2);
        }
    }

    public void drawFocus(int x, int y, int width, int height) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if ((this.data.uiState & 1) != 0) {
            return;
        }
        this.data.focusDrawn = true;
        int hdc = this.handle;
        int state = 0;
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            int clipRgn = 0;
            Gdip.Graphics_SetPixelOffsetMode(gdipGraphics, 3);
            int rgn = Gdip.Region_new();
            if (rgn == 0) {
                SWT.error(2);
            }
            Gdip.Graphics_GetClip(gdipGraphics, rgn);
            if (!Gdip.Region_IsInfinite(rgn, gdipGraphics)) {
                clipRgn = Gdip.Region_GetHRGN(rgn, gdipGraphics);
            }
            Gdip.Region_delete(rgn);
            Gdip.Graphics_SetPixelOffsetMode(gdipGraphics, 4);
            float[] lpXform = null;
            int matrix = Gdip.Matrix_new(1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
            if (matrix == 0) {
                SWT.error(2);
            }
            Gdip.Graphics_GetTransform(gdipGraphics, matrix);
            if (!Gdip.Matrix_IsIdentity(matrix)) {
                lpXform = new float[6];
                Gdip.Matrix_GetElements(matrix, lpXform);
            }
            Gdip.Matrix_delete(matrix);
            hdc = Gdip.Graphics_GetHDC(gdipGraphics);
            state = OS.SaveDC(hdc);
            if (lpXform != null) {
                OS.SetGraphicsMode(hdc, 2);
                OS.SetWorldTransform(hdc, lpXform);
            }
            if (clipRgn != 0) {
                OS.SelectClipRgn(hdc, clipRgn);
                OS.DeleteObject(clipRgn);
            }
        }
        OS.SetBkColor(hdc, 0xFFFFFF);
        OS.SetTextColor(hdc, 0);
        RECT rect = new RECT();
        OS.SetRect(rect, x, y, x + width, y + height);
        OS.DrawFocusRect(hdc, rect);
        if (gdipGraphics != 0) {
            OS.RestoreDC(hdc, state);
            Gdip.Graphics_ReleaseHDC(gdipGraphics, hdc);
        } else {
            this.data.state &= 0xFFFFFCFF;
        }
    }

    public void drawImage(Image image, int x, int y) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (image == null) {
            SWT.error(4);
        }
        if (image.isDisposed()) {
            SWT.error(5);
        }
        this.drawImage(image, 0, 0, -1, -1, x, y, -1, -1, true);
    }

    public void drawImage(Image image, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (srcWidth == 0 || srcHeight == 0 || destWidth == 0 || destHeight == 0) {
            return;
        }
        if (srcX < 0 || srcY < 0 || srcWidth < 0 || srcHeight < 0 || destWidth < 0 || destHeight < 0) {
            SWT.error(5);
        }
        if (image == null) {
            SWT.error(4);
        }
        if (image.isDisposed()) {
            SWT.error(5);
        }
        this.drawImage(image, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, false);
    }

    void drawImage(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, boolean simple) {
        if (this.data.gdipGraphics != 0) {
            int[] gdipImage = srcImage.createGdipImage();
            int img = gdipImage[0];
            int imgWidth = Gdip.Image_GetWidth(img);
            int imgHeight = Gdip.Image_GetHeight(img);
            if (simple) {
                srcWidth = destWidth = imgWidth;
                srcHeight = destHeight = imgHeight;
            } else {
                if (srcX + srcWidth > imgWidth || srcY + srcHeight > imgHeight) {
                    SWT.error(5);
                }
                simple = srcX == 0 && srcY == 0 && srcWidth == destWidth && destWidth == imgWidth && srcHeight == destHeight && destHeight == imgHeight;
            }
            Rect rect = new Rect();
            rect.X = destX;
            rect.Y = destY;
            rect.Width = destWidth;
            rect.Height = destHeight;
            int attrib = Gdip.ImageAttributes_new();
            Gdip.ImageAttributes_SetWrapMode(attrib, 3);
            if (this.data.alpha != 255) {
                float[] matrix = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, (float)this.data.alpha / 255.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
                Gdip.ImageAttributes_SetColorMatrix(attrib, matrix, 0, 1);
            }
            int gstate = 0;
            if ((this.data.style & 0x8000000) != 0) {
                gstate = Gdip.Graphics_Save(this.data.gdipGraphics);
                Gdip.Graphics_ScaleTransform(this.data.gdipGraphics, -1.0f, 1.0f, 0);
                Gdip.Graphics_TranslateTransform(this.data.gdipGraphics, -2 * destX - destWidth, 0.0f, 0);
            }
            Gdip.Graphics_DrawImage(this.data.gdipGraphics, img, rect, srcX, srcY, srcWidth, srcHeight, 2, attrib, 0, 0);
            if ((this.data.style & 0x8000000) != 0) {
                Gdip.Graphics_Restore(this.data.gdipGraphics, gstate);
            }
            Gdip.ImageAttributes_delete(attrib);
            Gdip.Bitmap_delete(img);
            if (gdipImage[1] != 0) {
                int hHeap = OS.GetProcessHeap();
                OS.HeapFree(hHeap, 0, gdipImage[1]);
            }
            return;
        }
        switch (srcImage.type) {
            case 0: {
                this.drawBitmap(srcImage, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, simple);
                break;
            }
            case 1: {
                this.drawIcon(srcImage, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, simple);
            }
        }
    }

    void drawIcon(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, boolean simple) {
        boolean failed;
        int technology = OS.GetDeviceCaps(this.handle, 2);
        boolean drawIcon = true;
        int flags = 3;
        int offsetX = 0;
        int offsetY = 0;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
            if ((OS.GetLayout(this.handle) & 1) != 0) {
                flags |= 0x10;
                POINT pt = new POINT();
                OS.GetWindowOrgEx(this.handle, pt);
                offsetX = pt.x;
                offsetY = pt.y;
            }
        } else if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
            boolean bl = drawIcon = (OS.GetLayout(this.handle) & 1) == 0;
        }
        if (simple && technology != 2 && drawIcon) {
            if (offsetX != 0 || offsetY != 0) {
                OS.SetWindowOrgEx(this.handle, 0, 0, null);
            }
            OS.DrawIconEx(this.handle, destX - offsetX, destY - offsetY, srcImage.handle, 0, 0, 0, 0, flags);
            if (offsetX != 0 || offsetY != 0) {
                OS.SetWindowOrgEx(this.handle, offsetX, offsetY, null);
            }
            return;
        }
        ICONINFO srcIconInfo = new ICONINFO();
        if (OS.IsWinCE) {
            Image.GetIconInfo(srcImage, srcIconInfo);
        } else {
            OS.GetIconInfo(srcImage.handle, srcIconInfo);
        }
        int hBitmap = srcIconInfo.hbmColor;
        if (hBitmap == 0) {
            hBitmap = srcIconInfo.hbmMask;
        }
        BITMAP bm = new BITMAP();
        OS.GetObject(hBitmap, BITMAP.sizeof, bm);
        int iconWidth = bm.bmWidth;
        int iconHeight = bm.bmHeight;
        if (hBitmap == srcIconInfo.hbmMask) {
            iconHeight /= 2;
        }
        if (simple) {
            srcWidth = destWidth = iconWidth;
            srcHeight = destHeight = iconHeight;
        }
        boolean bl = failed = srcX + srcWidth > iconWidth || srcY + srcHeight > iconHeight;
        if (!failed) {
            boolean bl2 = simple = srcX == 0 && srcY == 0 && srcWidth == destWidth && srcHeight == destHeight && srcWidth == iconWidth && srcHeight == iconHeight;
            if (!drawIcon) {
                this.drawBitmapMask(srcImage, srcIconInfo.hbmColor, srcIconInfo.hbmMask, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, simple, iconWidth, iconHeight, false);
            } else if (simple && technology != 2) {
                if (offsetX != 0 || offsetY != 0) {
                    OS.SetWindowOrgEx(this.handle, 0, 0, null);
                }
                OS.DrawIconEx(this.handle, destX - offsetX, destY - offsetY, srcImage.handle, 0, 0, 0, 0, flags);
                if (offsetX != 0 || offsetY != 0) {
                    OS.SetWindowOrgEx(this.handle, offsetX, offsetY, null);
                }
            } else {
                boolean stretch;
                ICONINFO newIconInfo = new ICONINFO();
                newIconInfo.fIcon = true;
                int srcHdc = OS.CreateCompatibleDC(this.handle);
                int dstHdc = OS.CreateCompatibleDC(this.handle);
                int srcColorY = srcY;
                int srcColor = srcIconInfo.hbmColor;
                if (srcColor == 0) {
                    srcColor = srcIconInfo.hbmMask;
                    srcColorY += iconHeight;
                }
                int oldSrcBitmap = OS.SelectObject(srcHdc, srcColor);
                newIconInfo.hbmColor = OS.CreateCompatibleBitmap(srcHdc, destWidth, destHeight);
                if (newIconInfo.hbmColor == 0) {
                    SWT.error(2);
                }
                int oldDestBitmap = OS.SelectObject(dstHdc, newIconInfo.hbmColor);
                boolean bl3 = stretch = !simple && (srcWidth != destWidth || srcHeight != destHeight);
                if (stretch) {
                    if (!OS.IsWinCE) {
                        OS.SetStretchBltMode(dstHdc, 3);
                    }
                    OS.StretchBlt(dstHdc, 0, 0, destWidth, destHeight, srcHdc, srcX, srcColorY, srcWidth, srcHeight, 0xCC0020);
                } else {
                    OS.BitBlt(dstHdc, 0, 0, destWidth, destHeight, srcHdc, srcX, srcColorY, 0xCC0020);
                }
                OS.SelectObject(srcHdc, srcIconInfo.hbmMask);
                newIconInfo.hbmMask = OS.CreateBitmap(destWidth, destHeight, 1, 1, null);
                if (newIconInfo.hbmMask == 0) {
                    SWT.error(2);
                }
                OS.SelectObject(dstHdc, newIconInfo.hbmMask);
                if (stretch) {
                    OS.StretchBlt(dstHdc, 0, 0, destWidth, destHeight, srcHdc, srcX, srcY, srcWidth, srcHeight, 0xCC0020);
                } else {
                    OS.BitBlt(dstHdc, 0, 0, destWidth, destHeight, srcHdc, srcX, srcY, 0xCC0020);
                }
                if (technology == 2) {
                    OS.SelectObject(srcHdc, newIconInfo.hbmColor);
                    OS.SelectObject(dstHdc, newIconInfo.hbmMask);
                    this.drawBitmapTransparentByClipping(srcHdc, dstHdc, 0, 0, destWidth, destHeight, destX, destY, destWidth, destHeight, true, destWidth, destHeight);
                    OS.SelectObject(srcHdc, oldSrcBitmap);
                    OS.SelectObject(dstHdc, oldDestBitmap);
                } else {
                    OS.SelectObject(srcHdc, oldSrcBitmap);
                    OS.SelectObject(dstHdc, oldDestBitmap);
                    int hIcon = OS.CreateIconIndirect(newIconInfo);
                    if (hIcon == 0) {
                        SWT.error(2);
                    }
                    if (offsetX != 0 || offsetY != 0) {
                        OS.SetWindowOrgEx(this.handle, 0, 0, null);
                    }
                    OS.DrawIconEx(this.handle, destX - offsetX, destY - offsetY, hIcon, destWidth, destHeight, 0, 0, flags);
                    if (offsetX != 0 || offsetY != 0) {
                        OS.SetWindowOrgEx(this.handle, offsetX, offsetY, null);
                    }
                    OS.DestroyIcon(hIcon);
                }
                OS.DeleteObject(newIconInfo.hbmMask);
                OS.DeleteObject(newIconInfo.hbmColor);
                OS.DeleteDC(dstHdc);
                OS.DeleteDC(srcHdc);
            }
        }
        OS.DeleteObject(srcIconInfo.hbmMask);
        if (srcIconInfo.hbmColor != 0) {
            OS.DeleteObject(srcIconInfo.hbmColor);
        }
        if (failed) {
            SWT.error(5);
        }
    }

    void drawBitmap(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, boolean simple) {
        BITMAP bm = new BITMAP();
        OS.GetObject(srcImage.handle, BITMAP.sizeof, bm);
        int imgWidth = bm.bmWidth;
        int imgHeight = bm.bmHeight;
        if (simple) {
            srcWidth = destWidth = imgWidth;
            srcHeight = destHeight = imgHeight;
        } else {
            if (srcX + srcWidth > imgWidth || srcY + srcHeight > imgHeight) {
                SWT.error(5);
            }
            simple = srcX == 0 && srcY == 0 && srcWidth == destWidth && destWidth == imgWidth && srcHeight == destHeight && destHeight == imgHeight;
        }
        boolean mustRestore = false;
        GC memGC = srcImage.memGC;
        if (memGC != null && !memGC.isDisposed()) {
            memGC.flush();
            mustRestore = true;
            GCData data = memGC.data;
            if (data.hNullBitmap != 0) {
                OS.SelectObject(memGC.handle, data.hNullBitmap);
                data.hNullBitmap = 0;
            }
        }
        if (srcImage.alpha != -1 || srcImage.alphaData != null) {
            this.drawBitmapAlpha(srcImage, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, simple, bm, imgWidth, imgHeight);
        } else if (srcImage.transparentPixel != -1) {
            this.drawBitmapTransparent(srcImage, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, simple, bm, imgWidth, imgHeight);
        } else {
            this.drawBitmap(srcImage, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, simple, bm, imgWidth, imgHeight);
        }
        if (mustRestore) {
            int hOldBitmap;
            memGC.data.hNullBitmap = hOldBitmap = OS.SelectObject(memGC.handle, srcImage.handle);
        }
    }

    void drawBitmapAlpha(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, boolean simple, BITMAP bm, int imgWidth, int imgHeight) {
        boolean hasAlphaChannel;
        int caps;
        boolean isPrinter;
        if (srcImage.alpha == 0) {
            return;
        }
        if (srcImage.alpha == 255) {
            this.drawBitmap(srcImage, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, simple, bm, imgWidth, imgHeight);
            return;
        }
        boolean alphaBlendSupport = OS.IsWinNT && OS.WIN32_VERSION >= OS.VERSION(4, 10);
        boolean bl = isPrinter = OS.GetDeviceCaps(this.handle, 2) == 2;
        if (alphaBlendSupport && isPrinter && (caps = OS.GetDeviceCaps(this.handle, 120)) != 0) {
            if (srcImage.alpha != -1) {
                alphaBlendSupport = (caps & 1) != 0;
            } else {
                boolean bl2 = alphaBlendSupport = (caps & 2) != 0;
            }
        }
        if (alphaBlendSupport) {
            BLENDFUNCTION blend = new BLENDFUNCTION();
            blend.BlendOp = 0;
            int srcHdc = OS.CreateCompatibleDC(this.handle);
            int oldSrcBitmap = OS.SelectObject(srcHdc, srcImage.handle);
            if (srcImage.alpha != -1) {
                blend.SourceConstantAlpha = (byte)srcImage.alpha;
                OS.AlphaBlend(this.handle, destX, destY, destWidth, destHeight, srcHdc, srcX, srcY, srcWidth, srcHeight, blend);
            } else {
                int memDib = Image.createDIB(srcWidth, srcHeight, 32);
                if (memDib == 0) {
                    SWT.error(2);
                }
                int memHdc = OS.CreateCompatibleDC(this.handle);
                int oldMemBitmap = OS.SelectObject(memHdc, memDib);
                BITMAP dibBM = new BITMAP();
                OS.GetObject(memDib, BITMAP.sizeof, dibBM);
                OS.BitBlt(memHdc, 0, 0, srcWidth, srcHeight, srcHdc, srcX, srcY, 0xCC0020);
                byte[] srcData = new byte[dibBM.bmWidthBytes * dibBM.bmHeight];
                OS.MoveMemory(srcData, dibBM.bmBits, srcData.length);
                int apinc = imgWidth - srcWidth;
                int ap = srcY * imgWidth + srcX;
                int sp = 0;
                byte[] alphaData = srcImage.alphaData;
                int y = 0;
                while (y < srcHeight) {
                    int x = 0;
                    while (x < srcWidth) {
                        int alpha = alphaData[ap++] & 0xFF;
                        int r = (srcData[sp + 0] & 0xFF) * alpha + 128;
                        r = r + (r >> 8) >> 8;
                        int g = (srcData[sp + 1] & 0xFF) * alpha + 128;
                        g = g + (g >> 8) >> 8;
                        int b = (srcData[sp + 2] & 0xFF) * alpha + 128;
                        b = b + (b >> 8) >> 8;
                        srcData[sp + 0] = (byte)r;
                        srcData[sp + 1] = (byte)g;
                        srcData[sp + 2] = (byte)b;
                        srcData[sp + 3] = (byte)alpha;
                        sp += 4;
                        ++x;
                    }
                    ap += apinc;
                    ++y;
                }
                OS.MoveMemory(dibBM.bmBits, srcData, srcData.length);
                blend.SourceConstantAlpha = (byte)-1;
                blend.AlphaFormat = 1;
                OS.AlphaBlend(this.handle, destX, destY, destWidth, destHeight, memHdc, 0, 0, srcWidth, srcHeight, blend);
                OS.SelectObject(memHdc, oldMemBitmap);
                OS.DeleteDC(memHdc);
                OS.DeleteObject(memDib);
            }
            OS.SelectObject(srcHdc, oldSrcBitmap);
            OS.DeleteDC(srcHdc);
            return;
        }
        Rectangle rect = this.getClipping();
        if ((rect = rect.intersection(new Rectangle(destX, destY, destWidth, destHeight))).isEmpty()) {
            return;
        }
        int sx1 = srcX + (rect.x - destX) * srcWidth / destWidth;
        int sx2 = srcX + (rect.x + rect.width - destX) * srcWidth / destWidth;
        int sy1 = srcY + (rect.y - destY) * srcHeight / destHeight;
        int sy2 = srcY + (rect.y + rect.height - destY) * srcHeight / destHeight;
        destX = rect.x;
        destY = rect.y;
        destWidth = rect.width;
        destHeight = rect.height;
        srcX = sx1;
        srcY = sy1;
        srcWidth = Math.max(1, sx2 - sx1);
        srcHeight = Math.max(1, sy2 - sy1);
        int srcHdc = OS.CreateCompatibleDC(this.handle);
        int oldSrcBitmap = OS.SelectObject(srcHdc, srcImage.handle);
        int memHdc = OS.CreateCompatibleDC(this.handle);
        int memDib = Image.createDIB(Math.max(srcWidth, destWidth), Math.max(srcHeight, destHeight), 32);
        if (memDib == 0) {
            SWT.error(2);
        }
        int oldMemBitmap = OS.SelectObject(memHdc, memDib);
        BITMAP dibBM = new BITMAP();
        OS.GetObject(memDib, BITMAP.sizeof, dibBM);
        int sizeInBytes = dibBM.bmWidthBytes * dibBM.bmHeight;
        OS.BitBlt(memHdc, 0, 0, destWidth, destHeight, this.handle, destX, destY, 0xCC0020);
        byte[] destData = new byte[sizeInBytes];
        OS.MoveMemory(destData, dibBM.bmBits, sizeInBytes);
        OS.BitBlt(memHdc, 0, 0, srcWidth, srcHeight, srcHdc, srcX, srcY, 0xCC0020);
        byte[] srcData = new byte[sizeInBytes];
        OS.MoveMemory(srcData, dibBM.bmBits, sizeInBytes);
        int alpha = srcImage.alpha;
        boolean bl3 = hasAlphaChannel = srcImage.alpha == -1;
        if (hasAlphaChannel) {
            int apinc = imgWidth - srcWidth;
            int spinc = dibBM.bmWidthBytes - srcWidth * 4;
            int ap = srcY * imgWidth + srcX;
            int sp = 3;
            byte[] alphaData = srcImage.alphaData;
            int y = 0;
            while (y < srcHeight) {
                int x = 0;
                while (x < srcWidth) {
                    srcData[sp] = alphaData[ap++];
                    sp += 4;
                    ++x;
                }
                ap += apinc;
                sp += spinc;
                ++y;
            }
        }
        OS.MoveMemory(dibBM.bmBits, srcData, sizeInBytes);
        if (OS.IsWinCE && (destWidth > srcWidth || destHeight > srcHeight) || !OS.IsWinNT && !OS.IsWinCE || isPrinter) {
            int tempHdc = OS.CreateCompatibleDC(this.handle);
            int tempDib = Image.createDIB(destWidth, destHeight, 32);
            if (tempDib == 0) {
                SWT.error(2);
            }
            int oldTempBitmap = OS.SelectObject(tempHdc, tempDib);
            if (!(simple || srcWidth == destWidth && srcHeight == destHeight)) {
                if (!OS.IsWinCE) {
                    OS.SetStretchBltMode(memHdc, 3);
                }
                OS.StretchBlt(tempHdc, 0, 0, destWidth, destHeight, memHdc, 0, 0, srcWidth, srcHeight, 0xCC0020);
            } else {
                OS.BitBlt(tempHdc, 0, 0, destWidth, destHeight, memHdc, 0, 0, 0xCC0020);
            }
            OS.BitBlt(memHdc, 0, 0, destWidth, destHeight, tempHdc, 0, 0, 0xCC0020);
            OS.SelectObject(tempHdc, oldTempBitmap);
            OS.DeleteObject(tempDib);
            OS.DeleteDC(tempHdc);
        } else if (!(simple || srcWidth == destWidth && srcHeight == destHeight)) {
            if (!OS.IsWinCE) {
                OS.SetStretchBltMode(memHdc, 3);
            }
            OS.StretchBlt(memHdc, 0, 0, destWidth, destHeight, memHdc, 0, 0, srcWidth, srcHeight, 0xCC0020);
        } else {
            OS.BitBlt(memHdc, 0, 0, destWidth, destHeight, memHdc, 0, 0, 0xCC0020);
        }
        OS.MoveMemory(srcData, dibBM.bmBits, sizeInBytes);
        int dpinc = dibBM.bmWidthBytes - destWidth * 4;
        int dp = 0;
        int y = 0;
        while (y < destHeight) {
            int x = 0;
            while (x < destWidth) {
                if (hasAlphaChannel) {
                    alpha = srcData[dp + 3] & 0xFF;
                }
                int n = dp;
                destData[n] = (byte)(destData[n] + ((srcData[dp] & 0xFF) - (destData[dp] & 0xFF)) * alpha / 255);
                int n2 = dp + 1;
                destData[n2] = (byte)(destData[n2] + ((srcData[dp + 1] & 0xFF) - (destData[dp + 1] & 0xFF)) * alpha / 255);
                int n3 = dp + 2;
                destData[n3] = (byte)(destData[n3] + ((srcData[dp + 2] & 0xFF) - (destData[dp + 2] & 0xFF)) * alpha / 255);
                dp += 4;
                ++x;
            }
            dp += dpinc;
            ++y;
        }
        OS.MoveMemory(dibBM.bmBits, destData, sizeInBytes);
        OS.BitBlt(this.handle, destX, destY, destWidth, destHeight, memHdc, 0, 0, 0xCC0020);
        OS.SelectObject(memHdc, oldMemBitmap);
        OS.DeleteDC(memHdc);
        OS.DeleteObject(memDib);
        OS.SelectObject(srcHdc, oldSrcBitmap);
        OS.DeleteDC(srcHdc);
    }

    void drawBitmapTransparentByClipping(int srcHdc, int maskHdc, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, boolean simple, int imgWidth, int imgHeight) {
        int dwRop;
        int rgn = OS.CreateRectRgn(0, 0, 0, 0);
        int y = 0;
        while (y < imgHeight) {
            int x = 0;
            while (x < imgWidth) {
                if (OS.GetPixel(maskHdc, x, y) == 0) {
                    int tempRgn = OS.CreateRectRgn(x, y, x + 1, y + 1);
                    OS.CombineRgn(rgn, rgn, tempRgn, 2);
                    OS.DeleteObject(tempRgn);
                }
                ++x;
            }
            ++y;
        }
        if (destWidth != srcWidth || destHeight != srcHeight) {
            int nBytes = OS.GetRegionData(rgn, 0, null);
            int[] lpRgnData = new int[nBytes / 4];
            OS.GetRegionData(rgn, nBytes, lpRgnData);
            float[] lpXform = new float[]{(float)destWidth / (float)srcWidth, 0.0f, 0.0f, (float)destHeight / (float)srcHeight, 0.0f, 0.0f};
            int tmpRgn = OS.ExtCreateRegion(lpXform, nBytes, lpRgnData);
            OS.DeleteObject(rgn);
            rgn = tmpRgn;
        }
        OS.OffsetRgn(rgn, destX, destY);
        int clip = OS.CreateRectRgn(0, 0, 0, 0);
        int result = OS.GetClipRgn(this.handle, clip);
        if (result == 1) {
            OS.CombineRgn(rgn, rgn, clip, 1);
        }
        OS.SelectClipRgn(this.handle, rgn);
        int rop2 = 0;
        if (!OS.IsWinCE) {
            rop2 = OS.GetROP2(this.handle);
        } else {
            rop2 = OS.SetROP2(this.handle, 13);
            OS.SetROP2(this.handle, rop2);
        }
        int n = dwRop = rop2 == 7 ? 0x660046 : 0xCC0020;
        if (!(simple || srcWidth == destWidth && srcHeight == destHeight)) {
            int mode = 0;
            if (!OS.IsWinCE) {
                mode = OS.SetStretchBltMode(this.handle, 3);
            }
            OS.StretchBlt(this.handle, destX, destY, destWidth, destHeight, srcHdc, srcX, srcY, srcWidth, srcHeight, dwRop);
            if (!OS.IsWinCE) {
                OS.SetStretchBltMode(this.handle, mode);
            }
        } else {
            OS.BitBlt(this.handle, destX, destY, destWidth, destHeight, srcHdc, srcX, srcY, dwRop);
        }
        OS.SelectClipRgn(this.handle, result == 1 ? clip : 0);
        OS.DeleteObject(clip);
        OS.DeleteObject(rgn);
    }

    void drawBitmapMask(Image srcImage, int srcColor, int srcMask, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, boolean simple, int imgWidth, int imgHeight, boolean offscreen) {
        int srcColorY = srcY;
        if (srcColor == 0) {
            srcColor = srcMask;
            srcColorY += imgHeight;
        }
        int srcHdc = OS.CreateCompatibleDC(this.handle);
        int oldSrcBitmap = OS.SelectObject(srcHdc, srcColor);
        int destHdc = this.handle;
        int x = destX;
        int y = destY;
        int tempHdc = 0;
        int tempBitmap = 0;
        int oldTempBitmap = 0;
        int oldBkColor = 0;
        int oldTextColor = 0;
        if (offscreen) {
            tempHdc = OS.CreateCompatibleDC(this.handle);
            tempBitmap = OS.CreateCompatibleBitmap(this.handle, destWidth, destHeight);
            oldTempBitmap = OS.SelectObject(tempHdc, tempBitmap);
            OS.BitBlt(tempHdc, 0, 0, destWidth, destHeight, this.handle, destX, destY, 0xCC0020);
            destHdc = tempHdc;
            y = 0;
            x = 0;
        } else {
            oldBkColor = OS.SetBkColor(this.handle, 0xFFFFFF);
            oldTextColor = OS.SetTextColor(this.handle, 0);
        }
        if (!(simple || srcWidth == destWidth && srcHeight == destHeight)) {
            int mode = 0;
            if (!OS.IsWinCE) {
                mode = OS.SetStretchBltMode(this.handle, 3);
            }
            OS.StretchBlt(destHdc, x, y, destWidth, destHeight, srcHdc, srcX, srcColorY, srcWidth, srcHeight, 0x660046);
            OS.SelectObject(srcHdc, srcMask);
            OS.StretchBlt(destHdc, x, y, destWidth, destHeight, srcHdc, srcX, srcY, srcWidth, srcHeight, 8913094);
            OS.SelectObject(srcHdc, srcColor);
            OS.StretchBlt(destHdc, x, y, destWidth, destHeight, srcHdc, srcX, srcColorY, srcWidth, srcHeight, 0x660046);
            if (!OS.IsWinCE) {
                OS.SetStretchBltMode(this.handle, mode);
            }
        } else {
            OS.BitBlt(destHdc, x, y, destWidth, destHeight, srcHdc, srcX, srcColorY, 0x660046);
            OS.SetTextColor(destHdc, 0);
            OS.SelectObject(srcHdc, srcMask);
            OS.BitBlt(destHdc, x, y, destWidth, destHeight, srcHdc, srcX, srcY, 8913094);
            OS.SelectObject(srcHdc, srcColor);
            OS.BitBlt(destHdc, x, y, destWidth, destHeight, srcHdc, srcX, srcColorY, 0x660046);
        }
        if (offscreen) {
            OS.BitBlt(this.handle, destX, destY, destWidth, destHeight, tempHdc, 0, 0, 0xCC0020);
            OS.SelectObject(tempHdc, oldTempBitmap);
            OS.DeleteDC(tempHdc);
            OS.DeleteObject(tempBitmap);
        } else {
            OS.SetBkColor(this.handle, oldBkColor);
            OS.SetTextColor(this.handle, oldTextColor);
        }
        OS.SelectObject(srcHdc, oldSrcBitmap);
        OS.DeleteDC(srcHdc);
    }

    void drawBitmapTransparent(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, boolean simple, BITMAP bm, int imgWidth, int imgHeight) {
        boolean isDib = bm.bmBits != 0;
        int hBitmap = srcImage.handle;
        int srcHdc = OS.CreateCompatibleDC(this.handle);
        int oldSrcBitmap = OS.SelectObject(srcHdc, hBitmap);
        byte[] originalColors = null;
        int transparentColor = srcImage.transparentColor;
        if (transparentColor == -1) {
            int transBlue = 0;
            int transGreen = 0;
            int transRed = 0;
            boolean fixPalette = false;
            if (bm.bmBitsPixel <= 8) {
                if (isDib) {
                    if (OS.IsWinCE) {
                        byte[] pBits = new byte[1];
                        OS.MoveMemory(pBits, bm.bmBits, 1);
                        byte oldValue = pBits[0];
                        int mask = 255 << 8 - bm.bmBitsPixel & 0xFF;
                        pBits[0] = (byte)(srcImage.transparentPixel << 8 - bm.bmBitsPixel | pBits[0] & ~mask);
                        OS.MoveMemory(bm.bmBits, pBits, 1);
                        int color = OS.GetPixel(srcHdc, 0, 0);
                        pBits[0] = oldValue;
                        OS.MoveMemory(bm.bmBits, pBits, 1);
                        transBlue = (color & 0xFF0000) >> 16;
                        transGreen = (color & 0xFF00) >> 8;
                        transRed = color & 0xFF;
                    } else {
                        int maxColors = 1 << bm.bmBitsPixel;
                        byte[] oldColors = new byte[maxColors * 4];
                        OS.GetDIBColorTable(srcHdc, 0, maxColors, oldColors);
                        int offset = srcImage.transparentPixel * 4;
                        int i = 0;
                        while (i < oldColors.length) {
                            if (i != offset && oldColors[offset] == oldColors[i] && oldColors[offset + 1] == oldColors[i + 1] && oldColors[offset + 2] == oldColors[i + 2]) {
                                fixPalette = true;
                                break;
                            }
                            i += 4;
                        }
                        if (fixPalette) {
                            byte[] newColors = new byte[oldColors.length];
                            transBlue = 255;
                            transGreen = 255;
                            transRed = 255;
                            newColors[offset] = (byte)transBlue;
                            newColors[offset + 1] = (byte)transGreen;
                            newColors[offset + 2] = (byte)transRed;
                            OS.SetDIBColorTable(srcHdc, 0, maxColors, newColors);
                            originalColors = oldColors;
                        } else {
                            transBlue = oldColors[offset] & 0xFF;
                            transGreen = oldColors[offset + 1] & 0xFF;
                            transRed = oldColors[offset + 2] & 0xFF;
                        }
                    }
                } else {
                    int numColors = 1 << bm.bmBitsPixel;
                    BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
                    bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
                    bmiHeader.biPlanes = bm.bmPlanes;
                    bmiHeader.biBitCount = bm.bmBitsPixel;
                    byte[] bmi = new byte[BITMAPINFOHEADER.sizeof + numColors * 4];
                    OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
                    if (OS.IsWinCE) {
                        SWT.error(20);
                    }
                    OS.GetDIBits(srcHdc, srcImage.handle, 0, 0, 0, bmi, 0);
                    int offset = BITMAPINFOHEADER.sizeof + 4 * srcImage.transparentPixel;
                    transRed = bmi[offset + 2] & 0xFF;
                    transGreen = bmi[offset + 1] & 0xFF;
                    transBlue = bmi[offset] & 0xFF;
                }
            } else {
                int pixel = srcImage.transparentPixel;
                switch (bm.bmBitsPixel) {
                    case 16: {
                        transBlue = (pixel & 0x1F) << 3;
                        transGreen = (pixel & 0x3E0) >> 2;
                        transRed = (pixel & 0x7C00) >> 7;
                        break;
                    }
                    case 24: {
                        transBlue = (pixel & 0xFF0000) >> 16;
                        transGreen = (pixel & 0xFF00) >> 8;
                        transRed = pixel & 0xFF;
                        break;
                    }
                    case 32: {
                        transBlue = (pixel & 0xFF000000) >>> 24;
                        transGreen = (pixel & 0xFF0000) >> 16;
                        transRed = (pixel & 0xFF00) >> 8;
                    }
                }
            }
            transparentColor = transBlue << 16 | transGreen << 8 | transRed;
            if (!fixPalette) {
                srcImage.transparentColor = transparentColor;
            }
        }
        if (OS.IsWinCE) {
            OS.TransparentImage(this.handle, destX, destY, destWidth, destHeight, srcHdc, srcX, srcY, srcWidth, srcHeight, transparentColor);
        } else if (originalColors == null && OS.IsWinNT && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
            int mode = OS.SetStretchBltMode(this.handle, 3);
            OS.TransparentBlt(this.handle, destX, destY, destWidth, destHeight, srcHdc, srcX, srcY, srcWidth, srcHeight, transparentColor);
            OS.SetStretchBltMode(this.handle, mode);
        } else {
            int maskHdc = OS.CreateCompatibleDC(this.handle);
            int maskBitmap = OS.CreateBitmap(imgWidth, imgHeight, 1, 1, null);
            int oldMaskBitmap = OS.SelectObject(maskHdc, maskBitmap);
            OS.SetBkColor(srcHdc, transparentColor);
            OS.BitBlt(maskHdc, 0, 0, imgWidth, imgHeight, srcHdc, 0, 0, 0xCC0020);
            if (originalColors != null) {
                OS.SetDIBColorTable(srcHdc, 0, 1 << bm.bmBitsPixel, originalColors);
            }
            if (OS.GetDeviceCaps(this.handle, 2) == 2) {
                this.drawBitmapTransparentByClipping(srcHdc, maskHdc, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, simple, imgWidth, imgHeight);
            } else {
                int tempHdc = OS.CreateCompatibleDC(this.handle);
                int tempBitmap = OS.CreateCompatibleBitmap(this.handle, destWidth, destHeight);
                int oldTempBitmap = OS.SelectObject(tempHdc, tempBitmap);
                OS.BitBlt(tempHdc, 0, 0, destWidth, destHeight, this.handle, destX, destY, 0xCC0020);
                if (!(simple || srcWidth == destWidth && srcHeight == destHeight)) {
                    if (!OS.IsWinCE) {
                        OS.SetStretchBltMode(tempHdc, 3);
                    }
                    OS.StretchBlt(tempHdc, 0, 0, destWidth, destHeight, srcHdc, srcX, srcY, srcWidth, srcHeight, 0x660046);
                    OS.StretchBlt(tempHdc, 0, 0, destWidth, destHeight, maskHdc, srcX, srcY, srcWidth, srcHeight, 8913094);
                    OS.StretchBlt(tempHdc, 0, 0, destWidth, destHeight, srcHdc, srcX, srcY, srcWidth, srcHeight, 0x660046);
                } else {
                    OS.BitBlt(tempHdc, 0, 0, destWidth, destHeight, srcHdc, srcX, srcY, 0x660046);
                    OS.BitBlt(tempHdc, 0, 0, destWidth, destHeight, maskHdc, srcX, srcY, 8913094);
                    OS.BitBlt(tempHdc, 0, 0, destWidth, destHeight, srcHdc, srcX, srcY, 0x660046);
                }
                OS.BitBlt(this.handle, destX, destY, destWidth, destHeight, tempHdc, 0, 0, 0xCC0020);
                OS.SelectObject(tempHdc, oldTempBitmap);
                OS.DeleteDC(tempHdc);
                OS.DeleteObject(tempBitmap);
            }
            OS.SelectObject(maskHdc, oldMaskBitmap);
            OS.DeleteDC(maskHdc);
            OS.DeleteObject(maskBitmap);
        }
        OS.SelectObject(srcHdc, oldSrcBitmap);
        if (hBitmap != srcImage.handle) {
            OS.DeleteObject(hBitmap);
        }
        OS.DeleteDC(srcHdc);
    }

    void drawBitmap(Image srcImage, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight, boolean simple, BITMAP bm, int imgWidth, int imgHeight) {
        int dwRop;
        int srcHdc = OS.CreateCompatibleDC(this.handle);
        int oldSrcBitmap = OS.SelectObject(srcHdc, srcImage.handle);
        int rop2 = 0;
        if (!OS.IsWinCE) {
            rop2 = OS.GetROP2(this.handle);
        } else {
            rop2 = OS.SetROP2(this.handle, 13);
            OS.SetROP2(this.handle, rop2);
        }
        int n = dwRop = rop2 == 7 ? 0x660046 : 0xCC0020;
        if (!(simple || srcWidth == destWidth && srcHeight == destHeight)) {
            int mode = 0;
            if (!OS.IsWinCE) {
                mode = OS.SetStretchBltMode(this.handle, 3);
            }
            OS.StretchBlt(this.handle, destX, destY, destWidth, destHeight, srcHdc, srcX, srcY, srcWidth, srcHeight, dwRop);
            if (!OS.IsWinCE) {
                OS.SetStretchBltMode(this.handle, mode);
            }
        } else {
            OS.BitBlt(this.handle, destX, destY, destWidth, destHeight, srcHdc, srcX, srcY, dwRop);
        }
        OS.SelectObject(srcHdc, oldSrcBitmap);
        OS.DeleteDC(srcHdc);
    }

    public void drawLine(int x1, int y1, int x2, int y2) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(22777);
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            Gdip.Graphics_TranslateTransform(gdipGraphics, this.data.gdipXOffset, this.data.gdipYOffset, 0);
            Gdip.Graphics_DrawLine(gdipGraphics, this.data.gdipPen, x1, y1, x2, y2);
            Gdip.Graphics_TranslateTransform(gdipGraphics, -this.data.gdipXOffset, -this.data.gdipYOffset, 0);
            return;
        }
        if ((this.data.style & 0x8000000) != 0 && this.data.lineWidth != 0.0f && this.data.lineWidth % 2.0f == 0.0f) {
            --x1;
            --x2;
        }
        if (OS.IsWinCE) {
            int[] points = new int[]{x1, y1, x2, y2};
            OS.Polyline(this.handle, points, points.length / 2);
        } else {
            OS.MoveToEx(this.handle, x1, y1, 0);
            OS.LineTo(this.handle, x2, y2);
        }
        if (this.data.lineWidth <= 1.0f) {
            OS.SetPixel(this.handle, x2, y2, this.data.foreground);
        }
    }

    public void drawOval(int x, int y, int width, int height) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(22777);
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            Gdip.Graphics_TranslateTransform(gdipGraphics, this.data.gdipXOffset, this.data.gdipYOffset, 0);
            Gdip.Graphics_DrawEllipse(gdipGraphics, this.data.gdipPen, x, y, width, height);
            Gdip.Graphics_TranslateTransform(gdipGraphics, -this.data.gdipXOffset, -this.data.gdipYOffset, 0);
            return;
        }
        if ((this.data.style & 0x8000000) != 0 && this.data.lineWidth != 0.0f && this.data.lineWidth % 2.0f == 0.0f) {
            --x;
        }
        OS.Ellipse(this.handle, x, y, x + width + 1, y + height + 1);
    }

    public void drawPath(Path path) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (path == null) {
            SWT.error(4);
        }
        if (path.handle == 0) {
            SWT.error(5);
        }
        this.initGdip();
        this.checkGC(22777);
        int gdipGraphics = this.data.gdipGraphics;
        Gdip.Graphics_TranslateTransform(gdipGraphics, this.data.gdipXOffset, this.data.gdipYOffset, 0);
        Gdip.Graphics_DrawPath(gdipGraphics, this.data.gdipPen, path.handle);
        Gdip.Graphics_TranslateTransform(gdipGraphics, -this.data.gdipXOffset, -this.data.gdipYOffset, 0);
    }

    public void drawPoint(int x, int y) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.gdipGraphics != 0) {
            this.checkGC(22777);
            Gdip.Graphics_FillRectangle(this.data.gdipGraphics, this.getFgBrush(), x, y, 1, 1);
            return;
        }
        OS.SetPixel(this.handle, x, y, this.data.foreground);
    }

    public void drawPolygon(int[] pointArray) {
        int i;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (pointArray == null) {
            SWT.error(4);
        }
        this.checkGC(22777);
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            Gdip.Graphics_TranslateTransform(gdipGraphics, this.data.gdipXOffset, this.data.gdipYOffset, 0);
            Gdip.Graphics_DrawPolygon(gdipGraphics, this.data.gdipPen, pointArray, pointArray.length / 2);
            Gdip.Graphics_TranslateTransform(gdipGraphics, -this.data.gdipXOffset, -this.data.gdipYOffset, 0);
            return;
        }
        if ((this.data.style & 0x8000000) != 0 && this.data.lineWidth != 0.0f && this.data.lineWidth % 2.0f == 0.0f) {
            i = 0;
            while (i < pointArray.length) {
                int n = i;
                pointArray[n] = pointArray[n] - 1;
                i += 2;
            }
        }
        OS.Polygon(this.handle, pointArray, pointArray.length / 2);
        if ((this.data.style & 0x8000000) != 0 && this.data.lineWidth != 0.0f && this.data.lineWidth % 2.0f == 0.0f) {
            i = 0;
            while (i < pointArray.length) {
                int n = i;
                pointArray[n] = pointArray[n] + 1;
                i += 2;
            }
        }
    }

    public void drawPolyline(int[] pointArray) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (pointArray == null) {
            SWT.error(4);
        }
        this.checkGC(22777);
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            Gdip.Graphics_TranslateTransform(gdipGraphics, this.data.gdipXOffset, this.data.gdipYOffset, 0);
            Gdip.Graphics_DrawLines(gdipGraphics, this.data.gdipPen, pointArray, pointArray.length / 2);
            Gdip.Graphics_TranslateTransform(gdipGraphics, -this.data.gdipXOffset, -this.data.gdipYOffset, 0);
            return;
        }
        if ((this.data.style & 0x8000000) != 0 && this.data.lineWidth != 0.0f && this.data.lineWidth % 2.0f == 0.0f) {
            int i = 0;
            while (i < pointArray.length) {
                int n = i;
                pointArray[n] = pointArray[n] - 1;
                i += 2;
            }
        }
        OS.Polyline(this.handle, pointArray, pointArray.length / 2);
        int length = pointArray.length;
        if (length >= 2 && this.data.lineWidth <= 1.0f) {
            OS.SetPixel(this.handle, pointArray[length - 2], pointArray[length - 1], this.data.foreground);
        }
        if ((this.data.style & 0x8000000) != 0 && this.data.lineWidth != 0.0f && this.data.lineWidth % 2.0f == 0.0f) {
            int i = 0;
            while (i < pointArray.length) {
                int n = i;
                pointArray[n] = pointArray[n] + 1;
                i += 2;
            }
        }
    }

    public void drawRectangle(int x, int y, int width, int height) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(22777);
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            if (width < 0) {
                x += width;
                width = -width;
            }
            if (height < 0) {
                y += height;
                height = -height;
            }
            Gdip.Graphics_TranslateTransform(gdipGraphics, this.data.gdipXOffset, this.data.gdipYOffset, 0);
            Gdip.Graphics_DrawRectangle(gdipGraphics, this.data.gdipPen, x, y, width, height);
            Gdip.Graphics_TranslateTransform(gdipGraphics, -this.data.gdipXOffset, -this.data.gdipYOffset, 0);
            return;
        }
        if ((this.data.style & 0x8000000) != 0) {
            if (this.data.lineWidth > 1.0f) {
                if (this.data.lineWidth % 2.0f == 1.0f) {
                    ++x;
                }
            } else if (this.data.hPen != 0 && OS.GetObject(this.data.hPen, 0, 0) != LOGPEN.sizeof) {
                ++x;
            }
        }
        OS.Rectangle(this.handle, x, y, x + width + 1, y + height + 1);
    }

    public void drawRectangle(Rectangle rect) {
        if (rect == null) {
            SWT.error(4);
        }
        this.drawRectangle(rect.x, rect.y, rect.width, rect.height);
    }

    public void drawRoundRectangle(int x, int y, int width, int height, int arcWidth, int arcHeight) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(22777);
        if (this.data.gdipGraphics != 0) {
            this.drawRoundRectangleGdip(this.data.gdipGraphics, this.data.gdipPen, x, y, width, height, arcWidth, arcHeight);
            return;
        }
        if ((this.data.style & 0x8000000) != 0 && this.data.lineWidth != 0.0f && this.data.lineWidth % 2.0f == 0.0f) {
            --x;
        }
        if (OS.IsWinCE) {
            if (width == 0 || height == 0) {
                return;
            }
            if (arcWidth == 0 || arcHeight == 0) {
                this.drawRectangle(x, y, width, height);
                return;
            }
            if (width < 0) {
                x += width;
                width = -width;
            }
            if (height < 0) {
                y += height;
                height = -height;
            }
            if (arcWidth < 0) {
                arcWidth = -arcWidth;
            }
            if (arcHeight < 0) {
                arcHeight = -arcHeight;
            }
            if (arcWidth > width) {
                arcWidth = width;
            }
            if (arcHeight > height) {
                arcHeight = height;
            }
            if (arcWidth < width) {
                this.drawLine(x + arcWidth / 2, y, x + width - arcWidth / 2, y);
                this.drawLine(x + arcWidth / 2, y + height, x + width - arcWidth / 2, y + height);
            }
            if (arcHeight < height) {
                this.drawLine(x, y + arcHeight / 2, x, y + height - arcHeight / 2);
                this.drawLine(x + width, y + arcHeight / 2, x + width, y + height - arcHeight / 2);
            }
            if (arcWidth != 0 && arcHeight != 0) {
                this.drawArc(x, y, arcWidth, arcHeight, 90, 90);
                this.drawArc(x + width - arcWidth, y, arcWidth, arcHeight, 0, 90);
                this.drawArc(x + width - arcWidth, y + height - arcHeight, arcWidth, arcHeight, 0, -90);
                this.drawArc(x, y + height - arcHeight, arcWidth, arcHeight, 180, 90);
            }
        } else {
            OS.RoundRect(this.handle, x, y, x + width + 1, y + height + 1, arcWidth, arcHeight);
        }
    }

    void drawRoundRectangleGdip(int gdipGraphics, int pen, int x, int y, int width, int height, int arcWidth, int arcHeight) {
        int nx = x;
        int ny = y;
        int nw = width;
        int nh = height;
        int naw = arcWidth;
        int nah = arcHeight;
        if (nw < 0) {
            nw = 0 - nw;
            nx -= nw;
        }
        if (nh < 0) {
            nh = 0 - nh;
            ny -= nh;
        }
        if (naw < 0) {
            naw = 0 - naw;
        }
        if (nah < 0) {
            nah = 0 - nah;
        }
        Gdip.Graphics_TranslateTransform(gdipGraphics, this.data.gdipXOffset, this.data.gdipYOffset, 0);
        if (naw == 0 || nah == 0) {
            Gdip.Graphics_DrawRectangle(gdipGraphics, this.data.gdipPen, x, y, width, height);
        } else {
            int path = Gdip.GraphicsPath_new(0);
            if (path == 0) {
                SWT.error(2);
            }
            if (nw > naw) {
                if (nh > nah) {
                    Gdip.GraphicsPath_AddArc(path, nx + nw - naw, ny, naw, nah, 0.0f, -90.0f);
                    Gdip.GraphicsPath_AddArc(path, nx, ny, naw, nah, -90.0f, -90.0f);
                    Gdip.GraphicsPath_AddArc(path, nx, ny + nh - nah, naw, nah, -180.0f, -90.0f);
                    Gdip.GraphicsPath_AddArc(path, nx + nw - naw, ny + nh - nah, naw, nah, -270.0f, -90.0f);
                } else {
                    Gdip.GraphicsPath_AddArc(path, nx + nw - naw, ny, naw, nh, -270.0f, -180.0f);
                    Gdip.GraphicsPath_AddArc(path, nx, ny, naw, nh, -90.0f, -180.0f);
                }
            } else if (nh > nah) {
                Gdip.GraphicsPath_AddArc(path, nx, ny, nw, nah, 0.0f, -180.0f);
                Gdip.GraphicsPath_AddArc(path, nx, ny + nh - nah, nw, nah, -180.0f, -180.0f);
            } else {
                Gdip.GraphicsPath_AddArc(path, nx, ny, nw, nh, 0.0f, 360.0f);
            }
            Gdip.GraphicsPath_CloseFigure(path);
            Gdip.Graphics_DrawPath(gdipGraphics, pen, path);
            Gdip.GraphicsPath_delete(path);
        }
        Gdip.Graphics_TranslateTransform(gdipGraphics, -this.data.gdipXOffset, -this.data.gdipYOffset, 0);
    }

    public void drawString(String string, int x, int y) {
        this.drawString(string, x, y, false);
    }

    public void drawString(String string, int x, int y, boolean isTransparent) {
        int length;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (string == null) {
            SWT.error(4);
        }
        if ((length = string.length()) == 0) {
            return;
        }
        char[] buffer = new char[length];
        string.getChars(0, length, buffer, 0);
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            this.checkGC(5 | (isTransparent ? 0 : 2));
            this.drawText(gdipGraphics, string, x, y, isTransparent ? 1 : 0, null);
            return;
        }
        int rop2 = 0;
        if (OS.IsWinCE) {
            rop2 = OS.SetROP2(this.handle, 13);
            OS.SetROP2(this.handle, rop2);
        } else {
            rop2 = OS.GetROP2(this.handle);
        }
        this.checkGC(772);
        int oldBkMode = OS.SetBkMode(this.handle, isTransparent ? 1 : 2);
        RECT rect = null;
        SIZE size = null;
        int flags = 0;
        if ((this.data.style & 0x8000000) != 0) {
            if (!isTransparent) {
                size = new SIZE();
                OS.GetTextExtentPoint32W(this.handle, buffer, length, size);
                rect = new RECT();
                rect.left = x;
                rect.right = x + size.cx;
                rect.top = y;
                rect.bottom = y + size.cy;
                flags = 4;
            }
            --x;
        }
        if (rop2 != 7) {
            OS.ExtTextOutW(this.handle, x, y, flags, rect, buffer, length, null);
        } else {
            int foreground = OS.GetTextColor(this.handle);
            if (isTransparent) {
                int height;
                int width;
                int hBitmap;
                if (size == null) {
                    size = new SIZE();
                    OS.GetTextExtentPoint32W(this.handle, buffer, length, size);
                }
                if ((hBitmap = OS.CreateCompatibleBitmap(this.handle, width = size.cx, height = size.cy)) == 0) {
                    SWT.error(2);
                }
                int memDC = OS.CreateCompatibleDC(this.handle);
                int hOldBitmap = OS.SelectObject(memDC, hBitmap);
                OS.PatBlt(memDC, 0, 0, width, height, 66);
                OS.SetBkMode(memDC, 1);
                OS.SetTextColor(memDC, foreground);
                OS.SelectObject(memDC, OS.GetCurrentObject(this.handle, 6));
                OS.ExtTextOutW(memDC, 0, 0, 0, null, buffer, length, null);
                OS.BitBlt(this.handle, x, y, width, height, memDC, 0, 0, 0x660046);
                OS.SelectObject(memDC, hOldBitmap);
                OS.DeleteDC(memDC);
                OS.DeleteObject(hBitmap);
            } else {
                int background = OS.GetBkColor(this.handle);
                OS.SetTextColor(this.handle, foreground ^ background);
                OS.ExtTextOutW(this.handle, x, y, flags, rect, buffer, length, null);
                OS.SetTextColor(this.handle, foreground);
            }
        }
        OS.SetBkMode(this.handle, oldBkMode);
    }

    public void drawText(String string, int x, int y) {
        this.drawText(string, x, y, 6);
    }

    public void drawText(String string, int x, int y, boolean isTransparent) {
        int flags = 6;
        if (isTransparent) {
            flags |= 1;
        }
        this.drawText(string, x, y, flags);
    }

    public void drawText(String string, int x, int y, int flags) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (string == null) {
            SWT.error(4);
        }
        if (string.length() == 0) {
            return;
        }
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            this.checkGC(5 | ((flags & 1) != 0 ? 0 : 2));
            this.drawText(gdipGraphics, string, x, y, flags, null);
            return;
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), string, false);
        int length = buffer.length();
        if (length == 0) {
            return;
        }
        RECT rect = new RECT();
        int limit = OS.IsWin95 ? Short.MAX_VALUE : 0x6FFFFFF;
        OS.SetRect(rect, x, y, limit, limit);
        int uFormat = 0;
        if ((flags & 2) == 0) {
            uFormat |= 0x20;
        }
        if ((flags & 4) != 0) {
            uFormat |= 0x40;
        }
        if ((flags & 8) == 0) {
            uFormat |= 0x800;
        }
        if ((flags & 8) != 0 && (this.data.uiState & 2) != 0) {
            uFormat |= 0x100000;
        }
        int rop2 = 0;
        if (OS.IsWinCE) {
            rop2 = OS.SetROP2(this.handle, 13);
            OS.SetROP2(this.handle, rop2);
        } else {
            rop2 = OS.GetROP2(this.handle);
        }
        this.checkGC(772);
        int oldBkMode = OS.SetBkMode(this.handle, (flags & 1) != 0 ? 1 : 2);
        if (rop2 != 7) {
            OS.DrawText(this.handle, buffer, length, rect, uFormat);
        } else {
            int foreground = OS.GetTextColor(this.handle);
            if ((flags & 1) != 0) {
                OS.DrawText(this.handle, buffer, buffer.length(), rect, uFormat | 0x400);
                int width = rect.right - rect.left;
                int height = rect.bottom - rect.top;
                int hBitmap = OS.CreateCompatibleBitmap(this.handle, width, height);
                if (hBitmap == 0) {
                    SWT.error(2);
                }
                int memDC = OS.CreateCompatibleDC(this.handle);
                int hOldBitmap = OS.SelectObject(memDC, hBitmap);
                OS.PatBlt(memDC, 0, 0, width, height, 66);
                OS.SetBkMode(memDC, 1);
                OS.SetTextColor(memDC, foreground);
                OS.SelectObject(memDC, OS.GetCurrentObject(this.handle, 6));
                OS.SetRect(rect, 0, 0, Short.MAX_VALUE, Short.MAX_VALUE);
                OS.DrawText(memDC, buffer, length, rect, uFormat);
                OS.BitBlt(this.handle, x, y, width, height, memDC, 0, 0, 0x660046);
                OS.SelectObject(memDC, hOldBitmap);
                OS.DeleteDC(memDC);
                OS.DeleteObject(hBitmap);
            } else {
                int background = OS.GetBkColor(this.handle);
                OS.SetTextColor(this.handle, foreground ^ background);
                OS.DrawText(this.handle, buffer, length, rect, uFormat);
                OS.SetTextColor(this.handle, foreground);
            }
        }
        OS.SetBkMode(this.handle, oldBkMode);
    }

    boolean useGDIP(int hdc, char[] buffer) {
        if (OS.IsWinCE || !OS.IsUnicode) {
            return false;
        }
        short[] glyphs = new short[buffer.length];
        OS.GetGlyphIndicesW(hdc, buffer, buffer.length, glyphs, 1);
        int i = 0;
        while (i < glyphs.length) {
            if (glyphs[i] == -1) {
                switch (buffer[i]) {
                    case '\t': 
                    case '\n': 
                    case '\r': {
                        break;
                    }
                    default: {
                        return true;
                    }
                }
            }
            ++i;
        }
        return false;
    }

    void drawText(int gdipGraphics, String string, int x, int y, int flags, Point size) {
        int length = string.length();
        char[] chars = new char[length];
        string.getChars(0, length, chars, 0);
        int hdc = Gdip.Graphics_GetHDC(gdipGraphics);
        int hFont = this.data.hGDIFont;
        if (hFont == 0 && this.data.font != null) {
            hFont = this.data.font.handle;
        }
        int oldFont = 0;
        if (hFont != 0) {
            oldFont = OS.SelectObject(hdc, hFont);
        }
        TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        OS.GetTextMetrics(hdc, lptm);
        boolean gdip = this.useGDIP(hdc, chars);
        if (hFont != 0) {
            OS.SelectObject(hdc, oldFont);
        }
        Gdip.Graphics_ReleaseHDC(gdipGraphics, hdc);
        if (gdip) {
            this.drawTextGDIP(gdipGraphics, string, x, y, flags, size == null, size);
            return;
        }
        int i = 0;
        int start = 0;
        int end = 0;
        int drawX = x;
        int drawY = y;
        int width = 0;
        int mnemonicIndex = -1;
        if ((flags & 0xE) != 0) {
            int tabWidth = lptm.tmAveCharWidth * 8;
            while (i < length) {
                int n = end++;
                char c = chars[i++];
                chars[n] = c;
                char c2 = c;
                switch (c2) {
                    case '\t': {
                        if ((flags & 4) == 0) break;
                        int l = end - start - 1;
                        RectF bounds = this.drawText(gdipGraphics, chars, start, l, drawX, drawY, flags, mnemonicIndex, lptm, size == null);
                        drawX = (int)((double)drawX + Math.ceil(bounds.Width));
                        drawX = x + ((drawX - x) / tabWidth + 1) * tabWidth;
                        mnemonicIndex = -1;
                        start = end;
                        break;
                    }
                    case '&': {
                        if ((flags & 8) == 0) break;
                        if (i == length) {
                            --end;
                            break;
                        }
                        if (chars[i] == '&') {
                            ++i;
                            break;
                        }
                        mnemonicIndex = --end - start;
                        break;
                    }
                    case '\n': 
                    case '\r': {
                        if ((flags & 2) == 0) break;
                        int l = end - start - 1;
                        if (c2 == '\r' && end != length && chars[end] == '\n') {
                            ++end;
                            ++i;
                        }
                        RectF bounds = this.drawText(gdipGraphics, chars, start, l, drawX, drawY, flags, mnemonicIndex, lptm, size == null);
                        drawY = (int)((double)drawY + Math.ceil(bounds.Height));
                        width = Math.max(width, drawX + (int)Math.ceil(bounds.Width));
                        drawX = x;
                        mnemonicIndex = -1;
                        start = end;
                    }
                }
            }
            length = end;
        }
        RectF bounds = this.drawText(gdipGraphics, chars, start, length - start, drawX, drawY, flags, mnemonicIndex, lptm, size == null);
        if (size != null) {
            drawY = (int)((double)drawY + Math.ceil(bounds.Height));
            size.x = width = Math.max(width, drawX + (int)Math.ceil(bounds.Width));
            size.y = drawY;
        }
    }

    RectF drawText(int gdipGraphics, char[] buffer, int start, int length, int x, int y, int flags, int mnemonicIndex, TEXTMETRIC lptm, boolean draw) {
        boolean needsBounds;
        boolean drawMnemonic = draw && mnemonicIndex != -1 && (this.data.uiState & 2) == 0;
        boolean bl = needsBounds = !draw || drawMnemonic || (flags & 1) == 0 || (this.data.style & 0x8000000) != 0 || (flags & 2) != 0;
        if (length <= 0) {
            RectF bounds = null;
            if (needsBounds) {
                bounds = new RectF();
                bounds.Height = lptm.tmHeight;
            }
            return bounds;
        }
        int nGlyphs = length * 3 / 2 + 16;
        GCP_RESULTS result = new GCP_RESULTS();
        result.lStructSize = GCP_RESULTS.sizeof;
        result.nGlyphs = nGlyphs;
        int hHeap = OS.GetProcessHeap();
        int lpDx = result.lpDx = OS.HeapAlloc(hHeap, 8, nGlyphs * 4);
        int lpGlyphs = result.lpGlyphs = OS.HeapAlloc(hHeap, 8, nGlyphs * 2);
        int lpOrder = 0;
        int dwFlags = 50;
        if (drawMnemonic) {
            lpOrder = result.lpOrder = OS.HeapAlloc(hHeap, 8, nGlyphs * 4);
        }
        int hdc = Gdip.Graphics_GetHDC(gdipGraphics);
        int hFont = this.data.hGDIFont;
        if (hFont == 0 && this.data.font != null) {
            hFont = this.data.font.handle;
        }
        int oldFont = 0;
        if (hFont != 0) {
            oldFont = OS.SelectObject(hdc, hFont);
        }
        if (start != 0) {
            char[] temp = new char[length];
            System.arraycopy(buffer, start, temp, 0, length);
            buffer = temp;
        }
        if ((this.data.style & 0x8000000) != 0) {
            OS.SetLayout(hdc, OS.GetLayout(hdc) | 1);
        }
        OS.GetCharacterPlacementW(hdc, buffer, length, 0, result, dwFlags);
        if ((this.data.style & 0x8000000) != 0) {
            OS.SetLayout(hdc, OS.GetLayout(hdc) & 0xFFFFFFFE);
        }
        if (hFont != 0) {
            OS.SelectObject(hdc, oldFont);
        }
        Gdip.Graphics_ReleaseHDC(gdipGraphics, hdc);
        nGlyphs = result.nGlyphs;
        int drawX = x;
        int drawY = y + lptm.tmAscent;
        int[] dx = new int[nGlyphs];
        OS.MoveMemory(dx, result.lpDx, nGlyphs * 4);
        float[] points = new float[dx.length * 2];
        int i = 0;
        int j = 0;
        while (i < dx.length) {
            points[j++] = drawX;
            points[j++] = drawY;
            drawX += dx[i];
            ++i;
        }
        RectF bounds = null;
        if (needsBounds) {
            bounds = new RectF();
            Gdip.Graphics_MeasureDriverString(gdipGraphics, lpGlyphs, nGlyphs, this.data.gdipFont, points, 0, 0, bounds);
        }
        if (draw) {
            int pen;
            if ((flags & 1) == 0) {
                Gdip.Graphics_FillRectangle(gdipGraphics, this.data.gdipBrush, x, y, (int)Math.ceil(bounds.Width), (int)Math.ceil(bounds.Height));
            }
            int gstate = 0;
            int brush = this.getFgBrush();
            if ((this.data.style & 0x8000000) != 0) {
                switch (Gdip.Brush_GetType(brush)) {
                    case 4: {
                        Gdip.LinearGradientBrush_ScaleTransform(brush, -1.0f, 1.0f, 0);
                        Gdip.LinearGradientBrush_TranslateTransform(brush, (float)(-2 * x) - bounds.Width, 0.0f, 0);
                        break;
                    }
                    case 2: {
                        Gdip.TextureBrush_ScaleTransform(brush, -1.0f, 1.0f, 0);
                        Gdip.TextureBrush_TranslateTransform(brush, (float)(-2 * x) - bounds.Width, 0.0f, 0);
                    }
                }
                gstate = Gdip.Graphics_Save(gdipGraphics);
                Gdip.Graphics_ScaleTransform(gdipGraphics, -1.0f, 1.0f, 0);
                Gdip.Graphics_TranslateTransform(gdipGraphics, (float)(-2 * x) - bounds.Width, 0.0f, 0);
            }
            Gdip.Graphics_DrawDriverString(gdipGraphics, lpGlyphs, result.nGlyphs, this.data.gdipFont, brush, points, 0, 0);
            if ((this.data.style & 0x8000000) != 0) {
                switch (Gdip.Brush_GetType(brush)) {
                    case 4: {
                        Gdip.LinearGradientBrush_ResetTransform(brush);
                        break;
                    }
                    case 2: {
                        Gdip.TextureBrush_ResetTransform(brush);
                    }
                }
                Gdip.Graphics_Restore(gdipGraphics, gstate);
            }
            if (drawMnemonic && (pen = Gdip.Pen_new(brush, 1.0f)) != 0) {
                int mnemonicRight;
                int mnemonicLeft;
                int[] order = new int[1];
                OS.MoveMemory(order, result.lpOrder + mnemonicIndex * 4, 4);
                if ((this.data.style & 0x8000000) != 0) {
                    mnemonicLeft = (int)Math.ceil(bounds.Width) - (int)points[order[0] * 2] + 2 * x;
                    mnemonicRight = mnemonicLeft - dx[order[0]];
                } else {
                    mnemonicLeft = (int)points[order[0] * 2];
                    mnemonicRight = mnemonicLeft + dx[order[0]];
                }
                int mnemonicY = y + lptm.tmAscent + 2;
                int smoothingMode = Gdip.Graphics_GetSmoothingMode(gdipGraphics);
                Gdip.Graphics_SetSmoothingMode(gdipGraphics, 3);
                Gdip.Graphics_DrawLine(gdipGraphics, pen, mnemonicLeft, mnemonicY, mnemonicRight, mnemonicY);
                Gdip.Graphics_SetSmoothingMode(gdipGraphics, smoothingMode);
                Gdip.Pen_delete(pen);
            }
        }
        if (lpOrder != 0) {
            OS.HeapFree(hHeap, 0, lpOrder);
        }
        OS.HeapFree(hHeap, 0, lpGlyphs);
        OS.HeapFree(hHeap, 0, lpDx);
        return bounds;
    }

    void drawTextGDIP(int gdipGraphics, String string, int x, int y, int flags, boolean draw, Point size) {
        int hotkeyPrefix;
        float[] fArray;
        char[] buffer;
        boolean needsBounds = !draw || (flags & 1) == 0;
        int length = string.length();
        if (length != 0) {
            buffer = new char[length];
            string.getChars(0, length, buffer, 0);
        } else {
            if (draw) {
                return;
            }
            buffer = new char[]{' '};
        }
        PointF pt = new PointF();
        int format = Gdip.StringFormat_Clone(Gdip.StringFormat_GenericTypographic());
        int formatFlags = Gdip.StringFormat_GetFormatFlags(format) | 0x800;
        if ((this.data.style & 0x8000000) != 0) {
            formatFlags |= 1;
        }
        Gdip.StringFormat_SetFormatFlags(format, formatFlags);
        if ((flags & 4) != 0) {
            float[] fArray2 = new float[1];
            fArray = fArray2;
            fArray2[0] = this.measureSpace(this.data.gdipFont, format) * 8.0f;
        } else {
            fArray = new float[1];
        }
        float[] tabs = fArray;
        Gdip.StringFormat_SetTabStops(format, 0.0f, tabs.length, tabs);
        int n = hotkeyPrefix = (flags & 8) != 0 ? 1 : 0;
        if ((flags & 8) != 0 && (this.data.uiState & 2) != 0) {
            hotkeyPrefix = 2;
        }
        Gdip.StringFormat_SetHotkeyPrefix(format, hotkeyPrefix);
        RectF bounds = null;
        if (needsBounds) {
            bounds = new RectF();
            Gdip.Graphics_MeasureString(gdipGraphics, buffer, buffer.length, this.data.gdipFont, pt, format, bounds);
        }
        if (draw) {
            if ((flags & 1) == 0) {
                Gdip.Graphics_FillRectangle(gdipGraphics, this.data.gdipBrush, x, y, (int)Math.ceil(bounds.Width), (int)Math.ceil(bounds.Height));
            }
            int gstate = 0;
            int brush = this.getFgBrush();
            if ((this.data.style & 0x8000000) != 0) {
                switch (Gdip.Brush_GetType(brush)) {
                    case 4: {
                        Gdip.LinearGradientBrush_ScaleTransform(brush, -1.0f, 1.0f, 0);
                        Gdip.LinearGradientBrush_TranslateTransform(brush, -2 * x, 0.0f, 0);
                        break;
                    }
                    case 2: {
                        Gdip.TextureBrush_ScaleTransform(brush, -1.0f, 1.0f, 0);
                        Gdip.TextureBrush_TranslateTransform(brush, -2 * x, 0.0f, 0);
                    }
                }
                gstate = Gdip.Graphics_Save(gdipGraphics);
                Gdip.Graphics_ScaleTransform(gdipGraphics, -1.0f, 1.0f, 0);
                Gdip.Graphics_TranslateTransform(gdipGraphics, -2 * x, 0.0f, 0);
            }
            pt.X = x;
            pt.Y = y;
            Gdip.Graphics_DrawString(gdipGraphics, buffer, buffer.length, this.data.gdipFont, pt, format, brush);
            if ((this.data.style & 0x8000000) != 0) {
                switch (Gdip.Brush_GetType(brush)) {
                    case 4: {
                        Gdip.LinearGradientBrush_ResetTransform(brush);
                        break;
                    }
                    case 2: {
                        Gdip.TextureBrush_ResetTransform(brush);
                    }
                }
                Gdip.Graphics_Restore(gdipGraphics, gstate);
            }
        }
        Gdip.StringFormat_delete(format);
        if (length == 0) {
            bounds.Width = 0.0f;
        }
        if (size != null) {
            size.x = (int)Math.ceil(bounds.Width);
            size.y = (int)Math.ceil(bounds.Height);
        }
    }

    public boolean equals(Object object) {
        return object == this || object instanceof GC && this.handle == ((GC)object).handle;
    }

    public void fillArc(int x, int y, int width, int height, int startAngle, int arcAngle) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(9218);
        if (width < 0) {
            x += width;
            width = -width;
        }
        if (height < 0) {
            y += height;
            height = -height;
        }
        if (width == 0 || height == 0 || arcAngle == 0) {
            return;
        }
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            if (width == height) {
                Gdip.Graphics_FillPie(gdipGraphics, this.data.gdipBrush, x, y, width, height, -startAngle, -arcAngle);
            } else {
                int state = Gdip.Graphics_Save(gdipGraphics);
                Gdip.Graphics_TranslateTransform(gdipGraphics, x, y, 0);
                Gdip.Graphics_ScaleTransform(gdipGraphics, width, height, 0);
                Gdip.Graphics_FillPie(gdipGraphics, this.data.gdipBrush, 0, 0, 1, 1, -startAngle, -arcAngle);
                Gdip.Graphics_Restore(gdipGraphics, state);
            }
            return;
        }
        if ((this.data.style & 0x8000000) != 0) {
            --x;
        }
        if (OS.IsWinCE) {
            if (arcAngle < 0) {
                startAngle += arcAngle;
                arcAngle = -arcAngle;
            }
            boolean drawSegments = true;
            if (arcAngle >= 360) {
                arcAngle = 360;
                drawSegments = false;
            }
            int[] points = new int[(arcAngle + 1) * 2 + (drawSegments ? 4 : 0)];
            int cteX = 2 * x + width;
            int cteY = 2 * y + height;
            int index = drawSegments ? 2 : 0;
            int i = 0;
            while (i <= arcAngle) {
                points[index++] = Compatibility.cos(startAngle + i, width) + cteX >> 1;
                points[index++] = cteY - Compatibility.sin(startAngle + i, height) >> 1;
                ++i;
            }
            if (drawSegments) {
                int n = cteX >> 1;
                points[points.length - 2] = n;
                points[0] = n;
                int n2 = cteY >> 1;
                points[points.length - 1] = n2;
                points[1] = n2;
            }
            OS.Polygon(this.handle, points, points.length / 2);
        } else {
            int y1;
            int y2;
            int x1;
            int x2;
            if (arcAngle >= 360 || arcAngle <= -360) {
                x1 = x2 = x + width;
                y1 = y2 = y + height / 2;
            } else {
                boolean isNegative = arcAngle < 0;
                arcAngle += startAngle;
                if (isNegative) {
                    int tmp = startAngle;
                    startAngle = arcAngle;
                    arcAngle = tmp;
                }
                x1 = Compatibility.cos(startAngle, width) + x + width / 2;
                y1 = -1 * Compatibility.sin(startAngle, height) + y + height / 2;
                x2 = Compatibility.cos(arcAngle, width) + x + width / 2;
                y2 = -1 * Compatibility.sin(arcAngle, height) + y + height / 2;
            }
            OS.Pie(this.handle, x, y, x + width + 1, y + height + 1, x1, y1, x2, y2);
        }
    }

    public void fillGradientRectangle(int x, int y, int width, int height, boolean vertical) {
        int depth;
        RGB foregroundRGB;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (width == 0 || height == 0) {
            return;
        }
        RGB backgroundRGB = this.getBackground().getRGB();
        RGB fromRGB = foregroundRGB = this.getForeground().getRGB();
        RGB toRGB = backgroundRGB;
        boolean swapColors = false;
        if (width < 0) {
            x += width;
            width = -width;
            if (!vertical) {
                swapColors = true;
            }
        }
        if (height < 0) {
            y += height;
            height = -height;
            if (vertical) {
                swapColors = true;
            }
        }
        if (swapColors) {
            fromRGB = backgroundRGB;
            toRGB = foregroundRGB;
        }
        if (fromRGB.equals(toRGB)) {
            this.fillRectangle(x, y, width, height);
            return;
        }
        if (this.data.gdipGraphics != 0) {
            int toGpColor;
            this.initGdip();
            PointF p1 = new PointF();
            PointF p2 = new PointF();
            p1.X = x;
            p1.Y = y;
            if (vertical) {
                p2.X = p1.X;
                p2.Y = p1.Y + (float)height;
            } else {
                p2.X = p1.X + (float)width;
                p2.Y = p1.Y;
            }
            int rgb = (fromRGB.red & 0xFF) << 16 | (fromRGB.green & 0xFF) << 8 | fromRGB.blue & 0xFF;
            int fromGpColor = Gdip.Color_new(this.data.alpha << 24 | rgb);
            if (fromGpColor == 0) {
                SWT.error(2);
            }
            if ((toGpColor = Gdip.Color_new(this.data.alpha << 24 | (rgb = (toRGB.red & 0xFF) << 16 | (toRGB.green & 0xFF) << 8 | toRGB.blue & 0xFF))) == 0) {
                SWT.error(2);
            }
            int brush = Gdip.LinearGradientBrush_new(p1, p2, fromGpColor, toGpColor);
            Gdip.Graphics_FillRectangle(this.data.gdipGraphics, brush, x, y, width, height);
            Gdip.LinearGradientBrush_delete(brush);
            Gdip.Color_delete(fromGpColor);
            Gdip.Color_delete(toGpColor);
            return;
        }
        int rop2 = 0;
        if (OS.IsWinCE) {
            rop2 = OS.SetROP2(this.handle, 13);
            OS.SetROP2(this.handle, rop2);
        } else {
            rop2 = OS.GetROP2(this.handle);
        }
        if (OS.IsWinNT && rop2 != 7 && OS.GetDeviceCaps(this.handle, 2) != 2) {
            int hHeap = OS.GetProcessHeap();
            int pMesh = OS.HeapAlloc(hHeap, 8, GRADIENT_RECT.sizeof + TRIVERTEX.sizeof * 2);
            if (pMesh == 0) {
                SWT.error(2);
            }
            int pVertex = pMesh + GRADIENT_RECT.sizeof;
            GRADIENT_RECT gradientRect = new GRADIENT_RECT();
            gradientRect.UpperLeft = 0;
            gradientRect.LowerRight = 1;
            OS.MoveMemory(pMesh, gradientRect, GRADIENT_RECT.sizeof);
            TRIVERTEX trivertex = new TRIVERTEX();
            trivertex.x = x;
            trivertex.y = y;
            trivertex.Red = (short)(fromRGB.red << 8 | fromRGB.red);
            trivertex.Green = (short)(fromRGB.green << 8 | fromRGB.green);
            trivertex.Blue = (short)(fromRGB.blue << 8 | fromRGB.blue);
            trivertex.Alpha = (short)-1;
            OS.MoveMemory(pVertex, trivertex, TRIVERTEX.sizeof);
            trivertex.x = x + width;
            trivertex.y = y + height;
            trivertex.Red = (short)(toRGB.red << 8 | toRGB.red);
            trivertex.Green = (short)(toRGB.green << 8 | toRGB.green);
            trivertex.Blue = (short)(toRGB.blue << 8 | toRGB.blue);
            trivertex.Alpha = (short)-1;
            OS.MoveMemory(pVertex + TRIVERTEX.sizeof, trivertex, TRIVERTEX.sizeof);
            boolean success = OS.GradientFill(this.handle, pVertex, 2, pMesh, 1, vertical ? 1 : 0);
            OS.HeapFree(hHeap, 0, pMesh);
            if (success) {
                return;
            }
        }
        int bitResolution = (depth = OS.GetDeviceCaps(this.handle, 12)) >= 24 ? 8 : (depth >= 15 ? 5 : 0);
        ImageData.fillGradientRectangle(this, this.data.device, x, y, width, height, vertical, fromRGB, toRGB, bitResolution, bitResolution, bitResolution);
    }

    public void fillOval(int x, int y, int width, int height) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(9218);
        if (this.data.gdipGraphics != 0) {
            Gdip.Graphics_FillEllipse(this.data.gdipGraphics, this.data.gdipBrush, x, y, width, height);
            return;
        }
        if ((this.data.style & 0x8000000) != 0) {
            --x;
        }
        OS.Ellipse(this.handle, x, y, x + width + 1, y + height + 1);
    }

    public void fillPath(Path path) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (path == null) {
            SWT.error(4);
        }
        if (path.handle == 0) {
            SWT.error(5);
        }
        this.initGdip();
        this.checkGC(9218);
        int mode = OS.GetPolyFillMode(this.handle) == 2 ? 1 : 0;
        Gdip.GraphicsPath_SetFillMode(path.handle, mode);
        Gdip.Graphics_FillPath(this.data.gdipGraphics, this.data.gdipBrush, path.handle);
    }

    public void fillPolygon(int[] pointArray) {
        int i;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (pointArray == null) {
            SWT.error(4);
        }
        this.checkGC(9218);
        if (this.data.gdipGraphics != 0) {
            int mode = OS.GetPolyFillMode(this.handle) == 2 ? 1 : 0;
            Gdip.Graphics_FillPolygon(this.data.gdipGraphics, this.data.gdipBrush, pointArray, pointArray.length / 2, mode);
            return;
        }
        if ((this.data.style & 0x8000000) != 0) {
            i = 0;
            while (i < pointArray.length) {
                int n = i;
                pointArray[n] = pointArray[n] - 1;
                i += 2;
            }
        }
        OS.Polygon(this.handle, pointArray, pointArray.length / 2);
        if ((this.data.style & 0x8000000) != 0) {
            i = 0;
            while (i < pointArray.length) {
                int n = i;
                pointArray[n] = pointArray[n] + 1;
                i += 2;
            }
        }
    }

    public void fillRectangle(int x, int y, int width, int height) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(9218);
        if (this.data.gdipGraphics != 0) {
            if (width < 0) {
                x += width;
                width = -width;
            }
            if (height < 0) {
                y += height;
                height = -height;
            }
            Gdip.Graphics_FillRectangle(this.data.gdipGraphics, this.data.gdipBrush, x, y, width, height);
            return;
        }
        int rop2 = 0;
        if (OS.IsWinCE) {
            rop2 = OS.SetROP2(this.handle, 13);
            OS.SetROP2(this.handle, rop2);
        } else {
            rop2 = OS.GetROP2(this.handle);
        }
        int dwRop = rop2 == 7 ? 5898313 : 15728673;
        OS.PatBlt(this.handle, x, y, width, height, dwRop);
    }

    public void fillRectangle(Rectangle rect) {
        if (rect == null) {
            SWT.error(4);
        }
        this.fillRectangle(rect.x, rect.y, rect.width, rect.height);
    }

    public void fillRoundRectangle(int x, int y, int width, int height, int arcWidth, int arcHeight) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(9218);
        if (this.data.gdipGraphics != 0) {
            this.fillRoundRectangleGdip(this.data.gdipGraphics, this.data.gdipBrush, x, y, width, height, arcWidth, arcHeight);
            return;
        }
        if ((this.data.style & 0x8000000) != 0) {
            --x;
        }
        OS.RoundRect(this.handle, x, y, x + width + 1, y + height + 1, arcWidth, arcHeight);
    }

    void fillRoundRectangleGdip(int gdipGraphics, int brush, int x, int y, int width, int height, int arcWidth, int arcHeight) {
        int nx = x;
        int ny = y;
        int nw = width;
        int nh = height;
        int naw = arcWidth;
        int nah = arcHeight;
        if (nw < 0) {
            nw = 0 - nw;
            nx -= nw;
        }
        if (nh < 0) {
            nh = 0 - nh;
            ny -= nh;
        }
        if (naw < 0) {
            naw = 0 - naw;
        }
        if (nah < 0) {
            nah = 0 - nah;
        }
        if (naw == 0 || nah == 0) {
            Gdip.Graphics_FillRectangle(this.data.gdipGraphics, this.data.gdipBrush, x, y, width, height);
        } else {
            int path = Gdip.GraphicsPath_new(0);
            if (path == 0) {
                SWT.error(2);
            }
            if (nw > naw) {
                if (nh > nah) {
                    Gdip.GraphicsPath_AddArc(path, nx + nw - naw, ny, naw, nah, 0.0f, -90.0f);
                    Gdip.GraphicsPath_AddArc(path, nx, ny, naw, nah, -90.0f, -90.0f);
                    Gdip.GraphicsPath_AddArc(path, nx, ny + nh - nah, naw, nah, -180.0f, -90.0f);
                    Gdip.GraphicsPath_AddArc(path, nx + nw - naw, ny + nh - nah, naw, nah, -270.0f, -90.0f);
                } else {
                    Gdip.GraphicsPath_AddArc(path, nx + nw - naw, ny, naw, nh, -270.0f, -180.0f);
                    Gdip.GraphicsPath_AddArc(path, nx, ny, naw, nh, -90.0f, -180.0f);
                }
            } else if (nh > nah) {
                Gdip.GraphicsPath_AddArc(path, nx, ny, nw, nah, 0.0f, -180.0f);
                Gdip.GraphicsPath_AddArc(path, nx, ny + nh - nah, nw, nah, -180.0f, -180.0f);
            } else {
                Gdip.GraphicsPath_AddArc(path, nx, ny, nw, nh, 0.0f, 360.0f);
            }
            Gdip.GraphicsPath_CloseFigure(path);
            Gdip.Graphics_FillPath(gdipGraphics, brush, path);
            Gdip.GraphicsPath_delete(path);
        }
    }

    void flush() {
        if (this.data.gdipGraphics != 0) {
            Gdip.Graphics_Flush(this.data.gdipGraphics, 0);
            int hdc = Gdip.Graphics_GetHDC(this.data.gdipGraphics);
            Gdip.Graphics_ReleaseHDC(this.data.gdipGraphics, hdc);
        }
    }

    public int getAdvanceWidth(char ch) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(4);
        if (OS.IsWinCE) {
            SIZE size = new SIZE();
            OS.GetTextExtentPoint32W(this.handle, new char[]{ch}, 1, size);
            return size.cx;
        }
        int tch = ch;
        if (ch > 127) {
            TCHAR buffer = new TCHAR(this.getCodePage(), (char)ch, false);
            tch = buffer.tcharAt(0);
        }
        int[] width = new int[1];
        OS.GetCharWidth(this.handle, tch, tch, width);
        return width[0];
    }

    public boolean getAdvanced() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data.gdipGraphics != 0;
    }

    public int getAlpha() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data.alpha;
    }

    public int getAntialias() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.gdipGraphics == 0) {
            return -1;
        }
        int mode = Gdip.Graphics_GetSmoothingMode(this.data.gdipGraphics);
        switch (mode) {
            case 0: {
                return -1;
            }
            case 1: 
            case 3: {
                return 0;
            }
            case 2: 
            case 4: 
            case 5: {
                return 1;
            }
        }
        return -1;
    }

    public Color getBackground() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return Color.win32_new(this.data.device, this.data.background);
    }

    public Pattern getBackgroundPattern() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data.backgroundPattern;
    }

    public int getCharWidth(char ch) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(4);
        if (!OS.IsWinCE) {
            int[] width;
            int tch = ch;
            if (ch > 127) {
                TCHAR buffer = new TCHAR(this.getCodePage(), (char)ch, false);
                tch = buffer.tcharAt(0);
            }
            if (OS.GetCharABCWidths(this.handle, tch, tch, width = new int[3])) {
                return width[1];
            }
        }
        TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        OS.GetTextMetrics(this.handle, lptm);
        SIZE size = new SIZE();
        OS.GetTextExtentPoint32W(this.handle, new char[]{ch}, 1, size);
        return size.cx - lptm.tmOverhang;
    }

    public Rectangle getClipping() {
        int gdipGraphics;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if ((gdipGraphics = this.data.gdipGraphics) != 0) {
            Rect rect = new Rect();
            Gdip.Graphics_SetPixelOffsetMode(gdipGraphics, 3);
            Gdip.Graphics_GetVisibleClipBounds(gdipGraphics, rect);
            Gdip.Graphics_SetPixelOffsetMode(gdipGraphics, 4);
            return new Rectangle(rect.X, rect.Y, rect.Width, rect.Height);
        }
        RECT rect = new RECT();
        OS.GetClipBox(this.handle, rect);
        return new Rectangle(rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
    }

    public void getClipping(Region region) {
        int result;
        int gdipGraphics;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (region == null) {
            SWT.error(4);
        }
        if (region.isDisposed()) {
            SWT.error(5);
        }
        if ((gdipGraphics = this.data.gdipGraphics) != 0) {
            int rgn = Gdip.Region_new();
            Gdip.Graphics_GetClip(this.data.gdipGraphics, rgn);
            if (Gdip.Region_IsInfinite(rgn, gdipGraphics)) {
                Rect rect = new Rect();
                Gdip.Graphics_SetPixelOffsetMode(gdipGraphics, 3);
                Gdip.Graphics_GetVisibleClipBounds(gdipGraphics, rect);
                Gdip.Graphics_SetPixelOffsetMode(gdipGraphics, 4);
                OS.SetRectRgn(region.handle, rect.X, rect.Y, rect.X + rect.Width, rect.Y + rect.Height);
            } else {
                int matrix = Gdip.Matrix_new(1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
                int identity = Gdip.Matrix_new(1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
                Gdip.Graphics_GetTransform(gdipGraphics, matrix);
                Gdip.Graphics_SetTransform(gdipGraphics, identity);
                int hRgn = Gdip.Region_GetHRGN(rgn, this.data.gdipGraphics);
                Gdip.Graphics_SetTransform(gdipGraphics, matrix);
                Gdip.Matrix_delete(identity);
                Gdip.Matrix_delete(matrix);
                if (!OS.IsWinCE) {
                    POINT pt = new POINT();
                    OS.GetWindowOrgEx(this.handle, pt);
                    OS.OffsetRgn(hRgn, pt.x, pt.y);
                }
                OS.CombineRgn(region.handle, hRgn, 0, 5);
                OS.DeleteObject(hRgn);
            }
            Gdip.Region_delete(rgn);
            return;
        }
        POINT pt = new POINT();
        if (!OS.IsWinCE) {
            OS.GetWindowOrgEx(this.handle, pt);
        }
        if ((result = OS.GetClipRgn(this.handle, region.handle)) != 1) {
            RECT rect = new RECT();
            OS.GetClipBox(this.handle, rect);
            OS.SetRectRgn(region.handle, rect.left, rect.top, rect.right, rect.bottom);
        } else {
            OS.OffsetRgn(region.handle, pt.x, pt.y);
        }
        if (!OS.IsWinCE) {
            int metaRgn = OS.CreateRectRgn(0, 0, 0, 0);
            if (OS.GetMetaRgn(this.handle, metaRgn) != 0) {
                OS.OffsetRgn(metaRgn, pt.x, pt.y);
                OS.CombineRgn(region.handle, metaRgn, region.handle, 1);
            }
            OS.DeleteObject(metaRgn);
            int hwnd = this.data.hwnd;
            if (hwnd != 0 && this.data.ps != null) {
                int sysRgn = OS.CreateRectRgn(0, 0, 0, 0);
                if (OS.GetRandomRgn(this.handle, sysRgn, 4) == 1) {
                    if (OS.WIN32_VERSION >= OS.VERSION(4, 10) && (OS.GetLayout(this.handle) & 1) != 0) {
                        int nBytes = OS.GetRegionData(sysRgn, 0, null);
                        int[] lpRgnData = new int[nBytes / 4];
                        OS.GetRegionData(sysRgn, nBytes, lpRgnData);
                        int newSysRgn = OS.ExtCreateRegion(new float[]{-1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f}, nBytes, lpRgnData);
                        OS.DeleteObject(sysRgn);
                        sysRgn = newSysRgn;
                    }
                    if (OS.IsWinNT) {
                        OS.MapWindowPoints(0, hwnd, pt, 1);
                        OS.OffsetRgn(sysRgn, pt.x, pt.y);
                    }
                    OS.CombineRgn(region.handle, sysRgn, region.handle, 1);
                }
                OS.DeleteObject(sysRgn);
            }
        }
    }

    int getCodePage() {
        if (OS.IsUnicode) {
            return 0;
        }
        int[] lpCs = new int[8];
        int cs = OS.GetTextCharset(this.handle);
        OS.TranslateCharsetInfo(cs, lpCs, 1);
        return lpCs[1];
    }

    int getFgBrush() {
        return this.data.foregroundPattern != null ? this.data.foregroundPattern.handle : this.data.gdipFgBrush;
    }

    public int getFillRule() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (OS.IsWinCE) {
            return 1;
        }
        return OS.GetPolyFillMode(this.handle) == 2 ? 2 : 1;
    }

    public Font getFont() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data.font;
    }

    public FontMetrics getFontMetrics() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        this.checkGC(4);
        TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        OS.GetTextMetrics(this.handle, lptm);
        return FontMetrics.win32_new(lptm);
    }

    public Color getForeground() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return Color.win32_new(this.data.device, this.data.foreground);
    }

    public Pattern getForegroundPattern() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data.foregroundPattern;
    }

    public GCData getGCData() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data;
    }

    public int getInterpolation() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.gdipGraphics == 0) {
            return -1;
        }
        int mode = Gdip.Graphics_GetInterpolationMode(this.data.gdipGraphics);
        switch (mode) {
            case 0: {
                return -1;
            }
            case 5: {
                return 0;
            }
            case 1: 
            case 3: {
                return 1;
            }
            case 2: 
            case 4: 
            case 6: 
            case 7: {
                return 2;
            }
        }
        return -1;
    }

    public LineAttributes getLineAttributes() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        float[] dashes = null;
        if (this.data.lineDashes != null) {
            dashes = new float[this.data.lineDashes.length];
            System.arraycopy(this.data.lineDashes, 0, dashes, 0, dashes.length);
        }
        return new LineAttributes(this.data.lineWidth, this.data.lineCap, this.data.lineJoin, this.data.lineStyle, dashes, this.data.lineDashesOffset, this.data.lineMiterLimit);
    }

    public int getLineCap() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data.lineCap;
    }

    public int[] getLineDash() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.lineDashes == null) {
            return null;
        }
        int[] lineDashes = new int[this.data.lineDashes.length];
        int i = 0;
        while (i < lineDashes.length) {
            lineDashes[i] = (int)this.data.lineDashes[i];
            ++i;
        }
        return lineDashes;
    }

    public int getLineJoin() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data.lineJoin;
    }

    public int getLineStyle() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data.lineStyle;
    }

    public int getLineWidth() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return (int)this.data.lineWidth;
    }

    public int getStyle() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        return this.data.style;
    }

    public int getTextAntialias() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.gdipGraphics == 0) {
            return -1;
        }
        int mode = Gdip.Graphics_GetTextRenderingHint(this.data.gdipGraphics);
        switch (mode) {
            case 0: {
                return -1;
            }
            case 1: 
            case 2: {
                return 0;
            }
            case 3: 
            case 4: 
            case 5: {
                return 1;
            }
        }
        return -1;
    }

    public void getTransform(Transform transform) {
        int gdipGraphics;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (transform == null) {
            SWT.error(4);
        }
        if (transform.isDisposed()) {
            SWT.error(5);
        }
        if ((gdipGraphics = this.data.gdipGraphics) != 0) {
            Gdip.Graphics_GetTransform(gdipGraphics, transform.handle);
            int identity = this.identity();
            Gdip.Matrix_Invert(identity);
            Gdip.Matrix_Multiply(transform.handle, identity, 1);
            Gdip.Matrix_delete(identity);
        } else {
            transform.setElements(1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
        }
    }

    public boolean getXORMode() {
        if (this.handle == 0) {
            SWT.error(44);
        }
        int rop2 = 0;
        if (OS.IsWinCE) {
            rop2 = OS.SetROP2(this.handle, 13);
            OS.SetROP2(this.handle, rop2);
        } else {
            rop2 = OS.GetROP2(this.handle);
        }
        return rop2 == 7;
    }

    void initGdip() {
        this.data.device.checkGDIP();
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            return;
        }
        int hRgn = OS.CreateRectRgn(0, 0, 0, 0);
        int result = OS.GetClipRgn(this.handle, hRgn);
        if (!OS.IsWinCE) {
            POINT pt = new POINT();
            OS.GetWindowOrgEx(this.handle, pt);
            OS.OffsetRgn(hRgn, pt.x, pt.y);
        }
        OS.SelectClipRgn(this.handle, 0);
        if ((this.data.style & 0x8000000) != 0) {
            OS.SetLayout(this.handle, OS.GetLayout(this.handle) & 0xFFFFFFFE);
        }
        if ((gdipGraphics = (this.data.gdipGraphics = Gdip.Graphics_new(this.handle))) == 0) {
            SWT.error(2);
        }
        Gdip.Graphics_SetPageUnit(gdipGraphics, 2);
        Gdip.Graphics_SetPixelOffsetMode(gdipGraphics, 4);
        if ((this.data.style & 0x8000000) != 0) {
            int matrix = this.identity();
            Gdip.Graphics_SetTransform(gdipGraphics, matrix);
            Gdip.Matrix_delete(matrix);
        }
        if (result == 1) {
            this.setClipping(hRgn);
        }
        OS.DeleteObject(hRgn);
        this.data.state = 0;
        if (this.data.hPen != 0) {
            OS.SelectObject(this.handle, OS.GetStockObject(8));
            OS.DeleteObject(this.data.hPen);
            this.data.hPen = 0;
        }
        if (this.data.hBrush != 0) {
            OS.SelectObject(this.handle, OS.GetStockObject(5));
            OS.DeleteObject(this.data.hBrush);
            this.data.hBrush = 0;
        }
    }

    int identity() {
        if ((this.data.style & 0x8000000) != 0) {
            int width = 0;
            int technology = OS.GetDeviceCaps(this.handle, 2);
            if (technology == 2) {
                width = OS.GetDeviceCaps(this.handle, 110);
            } else {
                Image image = this.data.image;
                if (image != null) {
                    BITMAP bm = new BITMAP();
                    OS.GetObject(image.handle, BITMAP.sizeof, bm);
                    width = bm.bmWidth;
                } else {
                    int hwnd;
                    int n = hwnd = OS.IsWinCE ? this.data.hwnd : OS.WindowFromDC(this.handle);
                    if (hwnd != 0) {
                        RECT rect = new RECT();
                        OS.GetClientRect(hwnd, rect);
                        width = rect.right - rect.left;
                    } else {
                        int hBitmap = OS.GetCurrentObject(this.handle, 7);
                        BITMAP bm = new BITMAP();
                        OS.GetObject(hBitmap, BITMAP.sizeof, bm);
                        width = bm.bmWidth;
                    }
                }
            }
            POINT pt = new POINT();
            if (!OS.IsWinCE) {
                OS.GetWindowOrgEx(this.handle, pt);
            }
            return Gdip.Matrix_new(-1.0f, 0.0f, 0.0f, 1.0f, width + 2 * pt.x, 0.0f);
        }
        return Gdip.Matrix_new(1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
    }

    void init(Drawable drawable, GCData data, int hDC) {
        int layout;
        Image image;
        int foreground = data.foreground;
        if (foreground != -1) {
            data.state &= 0xFFFFF6FE;
        } else {
            data.foreground = OS.GetTextColor(hDC);
        }
        int background = data.background;
        if (background != -1) {
            data.state &= 0xFFFFF9FD;
        } else {
            data.background = OS.GetBkColor(hDC);
        }
        data.state &= 0xFFFFCFFF;
        Font font = data.font;
        if (font != null) {
            data.state &= 0xFFFFFFFB;
        } else {
            data.font = Font.win32_new(this.device, OS.GetCurrentObject(hDC, 6));
        }
        int hPalette = data.device.hPalette;
        if (hPalette != 0) {
            OS.SelectPalette(hDC, hPalette, true);
            OS.RealizePalette(hDC);
        }
        if ((image = data.image) != null) {
            data.hNullBitmap = OS.SelectObject(hDC, image.handle);
            image.memGC = this;
        }
        if ((layout = data.layout) != -1 && !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
            int flags = OS.GetLayout(hDC);
            if ((flags & 1) != (layout & 1)) {
                OS.SetLayout(hDC, (flags &= 0xFFFFFFFE) | layout);
            }
            if ((data.style & 0x4000000) != 0) {
                data.style |= 0x8000000;
            }
        }
        this.drawable = drawable;
        this.data = data;
        this.handle = hDC;
    }

    public int hashCode() {
        return this.handle;
    }

    public boolean isClipped() {
        int gdipGraphics;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if ((gdipGraphics = this.data.gdipGraphics) != 0) {
            int rgn = Gdip.Region_new();
            Gdip.Graphics_GetClip(this.data.gdipGraphics, rgn);
            boolean isInfinite = Gdip.Region_IsInfinite(rgn, gdipGraphics);
            Gdip.Region_delete(rgn);
            return !isInfinite;
        }
        int region = OS.CreateRectRgn(0, 0, 0, 0);
        int result = OS.GetClipRgn(this.handle, region);
        OS.DeleteObject(region);
        return result > 0;
    }

    public boolean isDisposed() {
        return this.handle == 0;
    }

    float measureSpace(int font, int format) {
        PointF pt = new PointF();
        RectF bounds = new RectF();
        Gdip.Graphics_MeasureString(this.data.gdipGraphics, new char[]{' '}, 1, font, pt, format, bounds);
        return bounds.Width;
    }

    public void setAdvanced(boolean advanced) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (advanced && this.data.gdipGraphics != 0) {
            return;
        }
        if (advanced) {
            try {
                this.initGdip();
            }
            catch (SWTException sWTException) {}
        } else {
            this.disposeGdip();
            this.data.alpha = 255;
            this.data.foregroundPattern = null;
            this.data.backgroundPattern = null;
            this.data.state = 0;
            this.setClipping(0);
            if ((this.data.style & 0x8000000) != 0) {
                OS.SetLayout(this.handle, OS.GetLayout(this.handle) | 1);
            }
        }
    }

    public void setAntialias(int antialias) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.gdipGraphics == 0 && antialias == -1) {
            return;
        }
        int mode = 0;
        switch (antialias) {
            case -1: {
                mode = 0;
                break;
            }
            case 0: {
                mode = 3;
                break;
            }
            case 1: {
                mode = 4;
                break;
            }
            default: {
                SWT.error(5);
            }
        }
        this.initGdip();
        Gdip.Graphics_SetSmoothingMode(this.data.gdipGraphics, mode);
    }

    public void setAlpha(int alpha) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.gdipGraphics == 0 && (alpha & 0xFF) == 255) {
            return;
        }
        this.initGdip();
        this.data.alpha = alpha & 0xFF;
        this.data.state &= 0xFFFFFFFC;
    }

    public void setBackground(Color color) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (color == null) {
            SWT.error(4);
        }
        if (color.isDisposed()) {
            SWT.error(5);
        }
        if (this.data.backgroundPattern == null && this.data.background == color.handle) {
            return;
        }
        this.data.backgroundPattern = null;
        this.data.background = color.handle;
        this.data.state &= 0xFFFFFDFD;
    }

    public void setBackgroundPattern(Pattern pattern) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (pattern != null && pattern.isDisposed()) {
            SWT.error(5);
        }
        if (this.data.gdipGraphics == 0 && pattern == null) {
            return;
        }
        this.initGdip();
        if (this.data.backgroundPattern == pattern) {
            return;
        }
        this.data.backgroundPattern = pattern;
        this.data.state &= 0xFFFFFFFD;
    }

    void setClipping(int clipRgn) {
        int hRgn = clipRgn;
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            if (hRgn != 0) {
                int region = Gdip.Region_new(hRgn);
                Gdip.Graphics_SetClip(gdipGraphics, region, 0);
                Gdip.Region_delete(region);
            } else {
                Gdip.Graphics_ResetClip(gdipGraphics);
            }
        } else {
            POINT pt = null;
            if (hRgn != 0 && !OS.IsWinCE) {
                pt = new POINT();
                OS.GetWindowOrgEx(this.handle, pt);
                OS.OffsetRgn(hRgn, -pt.x, -pt.y);
            }
            OS.SelectClipRgn(this.handle, hRgn);
            if (hRgn != 0 && !OS.IsWinCE) {
                OS.OffsetRgn(hRgn, pt.x, pt.y);
            }
        }
    }

    public void setClipping(int x, int y, int width, int height) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        int hRgn = OS.CreateRectRgn(x, y, x + width, y + height);
        this.setClipping(hRgn);
        OS.DeleteObject(hRgn);
    }

    public void setClipping(Path path) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (path != null && path.isDisposed()) {
            SWT.error(5);
        }
        this.setClipping(0);
        if (path != null) {
            this.initGdip();
            int mode = OS.GetPolyFillMode(this.handle) == 2 ? 1 : 0;
            Gdip.GraphicsPath_SetFillMode(path.handle, mode);
            Gdip.Graphics_SetClipPath(this.data.gdipGraphics, path.handle);
        }
    }

    public void setClipping(Rectangle rect) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (rect == null) {
            this.setClipping(0);
        } else {
            this.setClipping(rect.x, rect.y, rect.width, rect.height);
        }
    }

    public void setClipping(Region region) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (region != null && region.isDisposed()) {
            SWT.error(5);
        }
        this.setClipping(region != null ? region.handle : 0);
    }

    public void setFillRule(int rule) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (OS.IsWinCE) {
            return;
        }
        int mode = 1;
        switch (rule) {
            case 2: {
                mode = 2;
                break;
            }
            case 1: {
                mode = 1;
                break;
            }
            default: {
                SWT.error(5);
            }
        }
        OS.SetPolyFillMode(this.handle, mode);
    }

    public void setFont(Font font) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (font != null && font.isDisposed()) {
            SWT.error(5);
        }
        this.data.font = font != null ? font : this.data.device.systemFont;
        this.data.state &= 0xFFFFFFFB;
    }

    public void setForeground(Color color) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (color == null) {
            SWT.error(4);
        }
        if (color.isDisposed()) {
            SWT.error(5);
        }
        if (this.data.foregroundPattern == null && color.handle == this.data.foreground) {
            return;
        }
        this.data.foregroundPattern = null;
        this.data.foreground = color.handle;
        this.data.state &= 0xFFFFFEFE;
    }

    public void setForegroundPattern(Pattern pattern) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (pattern != null && pattern.isDisposed()) {
            SWT.error(5);
        }
        if (this.data.gdipGraphics == 0 && pattern == null) {
            return;
        }
        this.initGdip();
        if (this.data.foregroundPattern == pattern) {
            return;
        }
        this.data.foregroundPattern = pattern;
        this.data.state &= 0xFFFFFFFE;
    }

    public void setInterpolation(int interpolation) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.gdipGraphics == 0 && interpolation == -1) {
            return;
        }
        int mode = 0;
        switch (interpolation) {
            case -1: {
                mode = 0;
                break;
            }
            case 0: {
                mode = 5;
                break;
            }
            case 1: {
                mode = 1;
                break;
            }
            case 2: {
                mode = 2;
                break;
            }
            default: {
                SWT.error(5);
            }
        }
        this.initGdip();
        Gdip.Graphics_SetInterpolationMode(this.data.gdipGraphics, mode);
    }

    public void setLineAttributes(LineAttributes attributes) {
        float miterLimit;
        int cap;
        int join;
        int lineStyle;
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (attributes == null) {
            SWT.error(4);
        }
        int mask = 0;
        float lineWidth = attributes.width;
        if (lineWidth != this.data.lineWidth) {
            mask |= 0x4010;
        }
        if ((lineStyle = attributes.style) != this.data.lineStyle) {
            mask |= 8;
            switch (lineStyle) {
                case 1: 
                case 2: 
                case 3: 
                case 4: 
                case 5: {
                    break;
                }
                case 6: {
                    if (attributes.dash != null) break;
                    lineStyle = 1;
                    break;
                }
                default: {
                    SWT.error(5);
                }
            }
        }
        if ((join = attributes.join) != this.data.lineJoin) {
            mask |= 0x40;
            switch (join) {
                case 1: 
                case 2: 
                case 3: {
                    break;
                }
                default: {
                    SWT.error(5);
                }
            }
        }
        if ((cap = attributes.cap) != this.data.lineCap) {
            mask |= 0x20;
            switch (cap) {
                case 1: 
                case 2: 
                case 3: {
                    break;
                }
                default: {
                    SWT.error(5);
                }
            }
        }
        float[] dashes = attributes.dash;
        float[] lineDashes = this.data.lineDashes;
        if (dashes != null && dashes.length > 0) {
            boolean changed = lineDashes == null || lineDashes.length != dashes.length;
            int i = 0;
            while (i < dashes.length) {
                float dash = dashes[i];
                if (dash <= 0.0f) {
                    SWT.error(5);
                }
                if (!changed && lineDashes[i] != dash) {
                    changed = true;
                }
                ++i;
            }
            if (changed) {
                float[] newDashes = new float[dashes.length];
                System.arraycopy(dashes, 0, newDashes, 0, dashes.length);
                dashes = newDashes;
                mask |= 8;
            } else {
                dashes = lineDashes;
            }
        } else if (lineDashes != null && lineDashes.length > 0) {
            mask |= 8;
        } else {
            dashes = lineDashes;
        }
        float dashOffset = attributes.dashOffset;
        if (dashOffset != this.data.lineDashesOffset) {
            mask |= 8;
        }
        if ((miterLimit = attributes.miterLimit) != this.data.lineMiterLimit) {
            mask |= 0x80;
        }
        this.initGdip();
        if (mask == 0) {
            return;
        }
        this.data.lineWidth = lineWidth;
        this.data.lineStyle = lineStyle;
        this.data.lineCap = cap;
        this.data.lineJoin = join;
        this.data.lineDashes = dashes;
        this.data.lineDashesOffset = dashOffset;
        this.data.lineMiterLimit = miterLimit;
        this.data.state &= ~mask;
    }

    public void setLineCap(int cap) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.lineCap == cap) {
            return;
        }
        switch (cap) {
            case 1: 
            case 2: 
            case 3: {
                break;
            }
            default: {
                SWT.error(5);
            }
        }
        this.data.lineCap = cap;
        this.data.state &= 0xFFFFFFDF;
    }

    public void setLineDash(int[] dashes) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        float[] lineDashes = this.data.lineDashes;
        if (dashes != null && dashes.length > 0) {
            boolean changed = this.data.lineStyle != 6 || lineDashes == null || lineDashes.length != dashes.length;
            int i = 0;
            while (i < dashes.length) {
                int dash = dashes[i];
                if (dash <= 0) {
                    SWT.error(5);
                }
                if (!changed && lineDashes[i] != (float)dash) {
                    changed = true;
                }
                ++i;
            }
            if (!changed) {
                return;
            }
            this.data.lineDashes = new float[dashes.length];
            i = 0;
            while (i < dashes.length) {
                this.data.lineDashes[i] = dashes[i];
                ++i;
            }
            this.data.lineStyle = 6;
        } else {
            if (this.data.lineStyle == 1 && (lineDashes == null || lineDashes.length == 0)) {
                return;
            }
            this.data.lineDashes = null;
            this.data.lineStyle = 1;
        }
        this.data.state &= 0xFFFFFFF7;
    }

    public void setLineJoin(int join) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.lineJoin == join) {
            return;
        }
        switch (join) {
            case 1: 
            case 2: 
            case 3: {
                break;
            }
            default: {
                SWT.error(5);
            }
        }
        this.data.lineJoin = join;
        this.data.state &= 0xFFFFFFBF;
    }

    public void setLineStyle(int lineStyle) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.lineStyle == lineStyle) {
            return;
        }
        switch (lineStyle) {
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: {
                break;
            }
            case 6: {
                if (this.data.lineDashes != null) break;
                lineStyle = 1;
                break;
            }
            default: {
                SWT.error(5);
            }
        }
        this.data.lineStyle = lineStyle;
        this.data.state &= 0xFFFFFFF7;
    }

    public void setLineWidth(int lineWidth) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.lineWidth == (float)lineWidth) {
            return;
        }
        this.data.lineWidth = lineWidth;
        this.data.state &= 0xFFFFBFEF;
    }

    public void setXORMode(boolean xor) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        OS.SetROP2(this.handle, xor ? 7 : 13);
    }

    public void setTextAntialias(int antialias) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.data.gdipGraphics == 0 && antialias == -1) {
            return;
        }
        int textMode = 0;
        switch (antialias) {
            case -1: {
                textMode = 0;
                break;
            }
            case 0: {
                textMode = 1;
                break;
            }
            case 1: {
                int[] type = new int[1];
                OS.SystemParametersInfo(8202, 0, type, 0);
                if (type[0] == 2) {
                    textMode = 5;
                    break;
                }
                textMode = 3;
                break;
            }
            default: {
                SWT.error(5);
            }
        }
        this.initGdip();
        Gdip.Graphics_SetTextRenderingHint(this.data.gdipGraphics, textMode);
    }

    public void setTransform(Transform transform) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (transform != null && transform.isDisposed()) {
            SWT.error(5);
        }
        if (this.data.gdipGraphics == 0 && transform == null) {
            return;
        }
        this.initGdip();
        int identity = this.identity();
        if (transform != null) {
            Gdip.Matrix_Multiply(identity, transform.handle, 0);
        }
        Gdip.Graphics_SetTransform(this.data.gdipGraphics, identity);
        Gdip.Matrix_delete(identity);
        this.data.state &= 0xFFFFBFFF;
    }

    public Point stringExtent(String string) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (string == null) {
            SWT.error(4);
        }
        this.checkGC(4);
        int length = string.length();
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            Point size = new Point(0, 0);
            this.drawText(gdipGraphics, string, 0, 0, 0, size);
            return size;
        }
        SIZE size = new SIZE();
        if (length == 0) {
            OS.GetTextExtentPoint32W(this.handle, new char[]{' '}, 1, size);
            return new Point(0, size.cy);
        }
        char[] buffer = new char[length];
        string.getChars(0, length, buffer, 0);
        OS.GetTextExtentPoint32W(this.handle, buffer, length, size);
        return new Point(size.cx, size.cy);
    }

    public Point textExtent(String string) {
        return this.textExtent(string, 6);
    }

    public Point textExtent(String string, int flags) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (string == null) {
            SWT.error(4);
        }
        this.checkGC(4);
        int gdipGraphics = this.data.gdipGraphics;
        if (gdipGraphics != 0) {
            Point size = new Point(0, 0);
            this.drawText(gdipGraphics, string, 0, 0, flags, size);
            return size;
        }
        if (string.length() == 0) {
            SIZE size = new SIZE();
            OS.GetTextExtentPoint32W(this.handle, new char[]{' '}, 1, size);
            return new Point(0, size.cy);
        }
        RECT rect = new RECT();
        TCHAR buffer = new TCHAR(this.getCodePage(), string, false);
        int uFormat = 1024;
        if ((flags & 2) == 0) {
            uFormat |= 0x20;
        }
        if ((flags & 4) != 0) {
            uFormat |= 0x40;
        }
        if ((flags & 8) == 0) {
            uFormat |= 0x800;
        }
        OS.DrawText(this.handle, buffer, buffer.length(), rect, uFormat);
        return new Point(rect.right, rect.bottom);
    }

    public String toString() {
        if (this.isDisposed()) {
            return "GC {*DISPOSED*}";
        }
        return "GC {" + this.handle + "}";
    }

    public static GC win32_new(Drawable drawable, GCData data) {
        GC gc = new GC();
        int hDC = drawable.internal_new_GC(data);
        gc.device = data.device;
        gc.init(drawable, data, hDC);
        return gc;
    }

    public static GC win32_new(int hDC, GCData data) {
        int flags;
        GC gc = new GC();
        gc.device = data.device;
        data.style |= 0x2000000;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) && ((flags = OS.GetLayout(hDC)) & 1) != 0) {
            data.style |= 0xC000000;
        }
        gc.init(null, data, hDC);
        return gc;
    }
}

