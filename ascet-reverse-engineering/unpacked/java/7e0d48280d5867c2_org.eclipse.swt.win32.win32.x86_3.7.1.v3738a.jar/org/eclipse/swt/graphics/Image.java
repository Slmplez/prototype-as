/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import java.io.InputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.gdip.BitmapData;
import org.eclipse.swt.internal.gdip.ColorPalette;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.gdip.Rect;
import org.eclipse.swt.internal.win32.BITMAP;
import org.eclipse.swt.internal.win32.BITMAPINFOHEADER;
import org.eclipse.swt.internal.win32.DIBSECTION;
import org.eclipse.swt.internal.win32.ICONINFO;
import org.eclipse.swt.internal.win32.OS;

public final class Image
extends Resource
implements Drawable {
    public int type;
    public int handle;
    int transparentPixel = -1;
    int transparentColor = -1;
    GC memGC;
    byte[] alphaData;
    int alpha = -1;
    ImageData data;
    int width = -1;
    int height = -1;
    static final int DEFAULT_SCANLINE_PAD = 4;

    Image(Device device) {
        super(device);
    }

    public Image(Device device, int width, int height) {
        super(device);
        this.init(width, height);
        this.init();
    }

    public Image(Device device, Image srcImage, int flag) {
        super(device);
        device = this.device;
        if (srcImage == null) {
            SWT.error(4);
        }
        if (srcImage.isDisposed()) {
            SWT.error(5);
        }
        Rectangle rect = srcImage.getBounds();
        this.type = srcImage.type;
        block0 : switch (flag) {
            case 0: {
                switch (this.type) {
                    case 0: {
                        int hDC = device.internal_new_GC(null);
                        int hdcSource = OS.CreateCompatibleDC(hDC);
                        int hdcDest = OS.CreateCompatibleDC(hDC);
                        int hOldSrc = OS.SelectObject(hdcSource, srcImage.handle);
                        BITMAP bm = new BITMAP();
                        OS.GetObject(srcImage.handle, BITMAP.sizeof, bm);
                        this.handle = OS.CreateCompatibleBitmap(hdcSource, rect.width, bm.bmBits != 0 ? -rect.height : rect.height);
                        if (this.handle == 0) {
                            SWT.error(2);
                        }
                        int hOldDest = OS.SelectObject(hdcDest, this.handle);
                        OS.BitBlt(hdcDest, 0, 0, rect.width, rect.height, hdcSource, 0, 0, 0xCC0020);
                        OS.SelectObject(hdcSource, hOldSrc);
                        OS.SelectObject(hdcDest, hOldDest);
                        OS.DeleteDC(hdcSource);
                        OS.DeleteDC(hdcDest);
                        device.internal_dispose_GC(hDC, null);
                        this.transparentPixel = srcImage.transparentPixel;
                        this.alpha = srcImage.alpha;
                        if (srcImage.alphaData == null) break block0;
                        this.alphaData = new byte[srcImage.alphaData.length];
                        System.arraycopy(srcImage.alphaData, 0, this.alphaData, 0, this.alphaData.length);
                        break;
                    }
                    case 1: {
                        if (OS.IsWinCE) {
                            this.init(srcImage.data);
                            break;
                        }
                        this.handle = OS.CopyImage(srcImage.handle, 1, rect.width, rect.height, 0);
                        if (this.handle != 0) break block0;
                        SWT.error(2);
                        break;
                    }
                    default: {
                        SWT.error(40);
                        break;
                    }
                }
                break;
            }
            case 1: {
                ImageData data = srcImage.getImageData();
                PaletteData palette = data.palette;
                RGB[] rgbs = new RGB[]{device.getSystemColor(2).getRGB(), device.getSystemColor(18).getRGB(), device.getSystemColor(22).getRGB()};
                ImageData newData = new ImageData(rect.width, rect.height, 8, new PaletteData(rgbs));
                newData.alpha = data.alpha;
                newData.alphaData = data.alphaData;
                newData.maskData = data.maskData;
                newData.maskPad = data.maskPad;
                if (data.transparentPixel != -1) {
                    newData.transparentPixel = 0;
                }
                int[] scanline = new int[rect.width];
                int[] maskScanline = null;
                ImageData mask = null;
                if (data.maskData != null) {
                    mask = data.getTransparencyMask();
                }
                if (mask != null) {
                    maskScanline = new int[rect.width];
                }
                int redMask = palette.redMask;
                int greenMask = palette.greenMask;
                int blueMask = palette.blueMask;
                int redShift = palette.redShift;
                int greenShift = palette.greenShift;
                int blueShift = palette.blueShift;
                int y = 0;
                while (y < rect.height) {
                    int offset = y * newData.bytesPerLine;
                    data.getPixels(0, y, rect.width, scanline, 0);
                    if (mask != null) {
                        mask.getPixels(0, y, rect.width, maskScanline, 0);
                    }
                    int x = 0;
                    while (x < rect.width) {
                        int pixel = scanline[x];
                        if (!(data.transparentPixel != -1 && pixel == data.transparentPixel || mask != null && maskScanline[x] == 0)) {
                            int blue;
                            int green;
                            int red;
                            if (palette.isDirect) {
                                red = pixel & redMask;
                                red = redShift < 0 ? red >>> -redShift : red << redShift;
                                green = pixel & greenMask;
                                green = greenShift < 0 ? green >>> -greenShift : green << greenShift;
                                blue = pixel & blueMask;
                                blue = blueShift < 0 ? blue >>> -blueShift : blue << blueShift;
                            } else {
                                red = palette.colors[pixel].red;
                                green = palette.colors[pixel].green;
                                blue = palette.colors[pixel].blue;
                            }
                            int intensity = red * red + green * green + blue * blue;
                            newData.data[offset] = intensity < 98304 ? 1 : 2;
                        }
                        ++offset;
                        ++x;
                    }
                    ++y;
                }
                this.init(newData);
                break;
            }
            case 2: {
                ImageData data = srcImage.getImageData();
                PaletteData palette = data.palette;
                ImageData newData = data;
                if (!palette.isDirect) {
                    RGB[] rgbs = palette.getRGBs();
                    int i = 0;
                    while (i < rgbs.length) {
                        if (data.transparentPixel != i) {
                            int intensity;
                            RGB color = rgbs[i];
                            int red = color.red;
                            int green = color.green;
                            int blue = color.blue;
                            color.green = color.blue = (intensity = red + red + green + green + green + green + green + blue >> 3);
                            color.red = color.blue;
                        }
                        ++i;
                    }
                    newData.palette = new PaletteData(rgbs);
                } else {
                    RGB[] rgbs = new RGB[256];
                    int i = 0;
                    while (i < rgbs.length) {
                        rgbs[i] = new RGB(i, i, i);
                        ++i;
                    }
                    newData = new ImageData(rect.width, rect.height, 8, new PaletteData(rgbs));
                    newData.alpha = data.alpha;
                    newData.alphaData = data.alphaData;
                    newData.maskData = data.maskData;
                    newData.maskPad = data.maskPad;
                    if (data.transparentPixel != -1) {
                        newData.transparentPixel = 254;
                    }
                    int[] scanline = new int[rect.width];
                    int redMask = palette.redMask;
                    int greenMask = palette.greenMask;
                    int blueMask = palette.blueMask;
                    int redShift = palette.redShift;
                    int greenShift = palette.greenShift;
                    int blueShift = palette.blueShift;
                    int y = 0;
                    while (y < rect.height) {
                        int offset = y * newData.bytesPerLine;
                        data.getPixels(0, y, rect.width, scanline, 0);
                        int x = 0;
                        while (x < rect.width) {
                            int pixel = scanline[x];
                            if (pixel != data.transparentPixel) {
                                int red = pixel & redMask;
                                red = redShift < 0 ? red >>> -redShift : red << redShift;
                                int green = pixel & greenMask;
                                green = greenShift < 0 ? green >>> -greenShift : green << greenShift;
                                int blue = pixel & blueMask;
                                blue = blueShift < 0 ? blue >>> -blueShift : blue << blueShift;
                                int intensity = red + red + green + green + green + green + green + blue >> 3;
                                if (newData.transparentPixel == intensity) {
                                    intensity = 255;
                                }
                                newData.data[offset] = (byte)intensity;
                            } else {
                                newData.data[offset] = -2;
                            }
                            ++offset;
                            ++x;
                        }
                        ++y;
                    }
                }
                this.init(newData);
                break;
            }
            default: {
                SWT.error(5);
            }
        }
        this.init();
    }

    public Image(Device device, Rectangle bounds) {
        super(device);
        if (bounds == null) {
            SWT.error(4);
        }
        this.init(bounds.width, bounds.height);
        this.init();
    }

    public Image(Device device, ImageData data) {
        super(device);
        this.init(data);
        this.init();
    }

    public Image(Device device, ImageData source, ImageData mask) {
        super(device);
        if (source == null) {
            SWT.error(4);
        }
        if (mask == null) {
            SWT.error(4);
        }
        if (source.width != mask.width || source.height != mask.height) {
            SWT.error(5);
        }
        mask = ImageData.convertMask(mask);
        Image.init(this.device, this, source, mask);
        this.init();
    }

    public Image(Device device, InputStream stream) {
        super(device);
        this.init(new ImageData(stream));
        this.init();
    }

    public Image(Device device, String filename) {
        super(device);
        if (filename == null) {
            SWT.error(4);
        }
        this.initNative(filename);
        if (this.handle == 0) {
            this.init(new ImageData(filename));
        }
        this.init();
    }

    void initNative(String filename) {
        boolean gdip = true;
        try {
            this.device.checkGDIP();
        }
        catch (SWTException sWTException) {
            gdip = false;
        }
        if (gdip && OS.PTR_SIZEOF == 8 && filename.toLowerCase().endsWith(".gif")) {
            gdip = false;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 1) && filename.toLowerCase().endsWith(".gif")) {
            gdip = false;
        }
        if (gdip) {
            int length = filename.length();
            char[] chars = new char[length + 1];
            filename.getChars(0, length, chars, 0);
            int bitmap = Gdip.Bitmap_new(chars, false);
            if (bitmap != 0) {
                int error = 2;
                int status = Gdip.Image_GetLastStatus(bitmap);
                if (status == 0) {
                    if (filename.toLowerCase().endsWith(".ico")) {
                        this.type = 1;
                        int[] hicon = new int[1];
                        status = Gdip.Bitmap_GetHICON(bitmap, hicon);
                        this.handle = hicon[0];
                    } else {
                        this.type = 0;
                        int width = Gdip.Image_GetWidth(bitmap);
                        int height = Gdip.Image_GetHeight(bitmap);
                        int pixelFormat = Gdip.Image_GetPixelFormat(bitmap);
                        switch (pixelFormat) {
                            case 135173: 
                            case 135174: {
                                this.handle = Image.createDIB(width, height, 16);
                                break;
                            }
                            case 137224: {
                                this.handle = Image.createDIB(width, height, 24);
                                break;
                            }
                            case 139273: 
                            case 925707: 
                            case 0x101004: 
                            case 1060876: 
                            case 1851406: 
                            case 3424269: {
                                this.handle = Image.createDIB(width, height, 32);
                            }
                        }
                        if (this.handle != 0) {
                            int hDC = this.device.internal_new_GC(null);
                            int srcHDC = OS.CreateCompatibleDC(hDC);
                            int oldSrcBitmap = OS.SelectObject(srcHDC, this.handle);
                            int graphics = Gdip.Graphics_new(srcHDC);
                            if (graphics != 0) {
                                Rect rect = new Rect();
                                rect.Width = width;
                                rect.Height = height;
                                status = Gdip.Graphics_DrawImage(graphics, bitmap, rect, 0, 0, width, height, 2, 0, 0, 0);
                                if (status != 0) {
                                    error = 40;
                                    OS.DeleteObject(this.handle);
                                    this.handle = 0;
                                }
                                Gdip.Graphics_delete(graphics);
                            }
                            OS.SelectObject(srcHDC, oldSrcBitmap);
                            OS.DeleteDC(srcHDC);
                            this.device.internal_dispose_GC(hDC, null);
                        } else {
                            int lockedBitmapData = Gdip.BitmapData_new();
                            if (lockedBitmapData != 0) {
                                status = Gdip.Bitmap_LockBits(bitmap, 0, 0, pixelFormat, lockedBitmapData);
                                if (status == 0) {
                                    BitmapData bitmapData = new BitmapData();
                                    Gdip.MoveMemory(bitmapData, lockedBitmapData);
                                    int stride = bitmapData.Stride;
                                    int pixels = bitmapData.Scan0;
                                    int depth = 0;
                                    int scanlinePad = 4;
                                    int transparentPixel = -1;
                                    switch (bitmapData.PixelFormat) {
                                        case 196865: {
                                            depth = 1;
                                            break;
                                        }
                                        case 197634: {
                                            depth = 4;
                                            break;
                                        }
                                        case 198659: {
                                            depth = 8;
                                            break;
                                        }
                                        case 135173: 
                                        case 135174: 
                                        case 397319: {
                                            depth = 16;
                                            break;
                                        }
                                        case 137224: {
                                            depth = 24;
                                            break;
                                        }
                                        case 139273: 
                                        case 2498570: {
                                            depth = 32;
                                        }
                                    }
                                    if (depth != 0) {
                                        PaletteData paletteData = null;
                                        switch (bitmapData.PixelFormat) {
                                            case 196865: 
                                            case 197634: 
                                            case 198659: {
                                                int paletteSize = Gdip.Image_GetPaletteSize(bitmap);
                                                int hHeap = OS.GetProcessHeap();
                                                int palette = OS.HeapAlloc(hHeap, 8, paletteSize);
                                                if (palette == 0) {
                                                    SWT.error(2);
                                                }
                                                Gdip.Image_GetPalette(bitmap, palette, paletteSize);
                                                ColorPalette colorPalette = new ColorPalette();
                                                Gdip.MoveMemory(colorPalette, palette, ColorPalette.sizeof);
                                                int[] entries = new int[colorPalette.Count];
                                                OS.MoveMemory(entries, palette + 8, entries.length * 4);
                                                OS.HeapFree(hHeap, 0, palette);
                                                RGB[] rgbs = new RGB[colorPalette.Count];
                                                paletteData = new PaletteData(rgbs);
                                                int i = 0;
                                                while (i < entries.length) {
                                                    if ((entries[i] >> 24 & 0xFF) == 0 && (colorPalette.Flags & 1) != 0) {
                                                        transparentPixel = i;
                                                    }
                                                    rgbs[i] = new RGB((entries[i] & 0xFF0000) >> 16, (entries[i] & 0xFF00) >> 8, (entries[i] & 0xFF) >> 0);
                                                    ++i;
                                                }
                                                break;
                                            }
                                            case 135173: 
                                            case 397319: {
                                                paletteData = new PaletteData(31744, 992, 31);
                                                break;
                                            }
                                            case 135174: {
                                                paletteData = new PaletteData(63488, 2016, 31);
                                                break;
                                            }
                                            case 137224: {
                                                paletteData = new PaletteData(255, 65280, 0xFF0000);
                                                break;
                                            }
                                            case 139273: 
                                            case 2498570: {
                                                paletteData = new PaletteData(65280, 0xFF0000, -16777216);
                                            }
                                        }
                                        byte[] data = new byte[stride * height];
                                        byte[] alphaData = null;
                                        OS.MoveMemory(data, pixels, data.length);
                                        switch (bitmapData.PixelFormat) {
                                            case 397319: {
                                                alphaData = new byte[width * height];
                                                int i = 1;
                                                int j = 0;
                                                while (i < data.length) {
                                                    alphaData[j] = (byte)((data[i] & 0x80) != 0 ? 255 : 0);
                                                    i += 2;
                                                    ++j;
                                                }
                                                break;
                                            }
                                            case 2498570: {
                                                alphaData = new byte[width * height];
                                                int i = 3;
                                                int j = 0;
                                                while (i < data.length) {
                                                    alphaData[j] = data[i];
                                                    i += 4;
                                                    ++j;
                                                }
                                                break;
                                            }
                                        }
                                        ImageData img = new ImageData(width, height, depth, paletteData, scanlinePad, data);
                                        img.transparentPixel = transparentPixel;
                                        img.alphaData = alphaData;
                                        this.init(img);
                                    }
                                    Gdip.Bitmap_UnlockBits(bitmap, lockedBitmapData);
                                } else {
                                    error = 40;
                                }
                                Gdip.BitmapData_delete(lockedBitmapData);
                            }
                        }
                    }
                }
                Gdip.Bitmap_delete(bitmap);
                if (status == 0 && this.handle == 0) {
                    SWT.error(error);
                }
            }
        }
    }

    int createDIBFromDDB(int hDC, int hBitmap, int width, int height) {
        int[] pBits;
        int hDib;
        int planes;
        int bits = OS.GetDeviceCaps(hDC, 12);
        int depth = bits * (planes = OS.GetDeviceCaps(hDC, 14));
        boolean isDirect = depth > 8;
        RGB[] rgbs = null;
        if (!isDirect) {
            int numColors = 1 << depth;
            byte[] logPalette = new byte[4 * numColors];
            OS.GetPaletteEntries(this.device.hPalette, 0, numColors, logPalette);
            rgbs = new RGB[numColors];
            int i = 0;
            while (i < numColors) {
                rgbs[i] = new RGB(logPalette[i] & 0xFF, logPalette[i + 1] & 0xFF, logPalette[i + 2] & 0xFF);
                ++i;
            }
        }
        boolean useBitfields = OS.IsWinCE && (depth == 16 || depth == 32);
        BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
        bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
        bmiHeader.biWidth = width;
        bmiHeader.biHeight = -height;
        bmiHeader.biPlanes = 1;
        bmiHeader.biBitCount = (short)depth;
        bmiHeader.biCompression = useBitfields ? 3 : 0;
        byte[] bmi = isDirect ? new byte[BITMAPINFOHEADER.sizeof + (useBitfields ? 12 : 0)] : new byte[BITMAPINFOHEADER.sizeof + rgbs.length * 4];
        OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
        int offset = BITMAPINFOHEADER.sizeof;
        if (isDirect) {
            if (useBitfields) {
                int redMask = 0;
                int greenMask = 0;
                int blueMask = 0;
                switch (depth) {
                    case 16: {
                        redMask = 31744;
                        greenMask = 992;
                        blueMask = 31;
                        bmi[offset] = (byte)((redMask & 0xFF) >> 0);
                        bmi[offset + 1] = (byte)((redMask & 0xFF00) >> 8);
                        bmi[offset + 2] = (byte)((redMask & 0xFF0000) >> 16);
                        bmi[offset + 3] = (byte)((redMask & 0xFF000000) >> 24);
                        bmi[offset + 4] = (byte)((greenMask & 0xFF) >> 0);
                        bmi[offset + 5] = (byte)((greenMask & 0xFF00) >> 8);
                        bmi[offset + 6] = (byte)((greenMask & 0xFF0000) >> 16);
                        bmi[offset + 7] = (byte)((greenMask & 0xFF000000) >> 24);
                        bmi[offset + 8] = (byte)((blueMask & 0xFF) >> 0);
                        bmi[offset + 9] = (byte)((blueMask & 0xFF00) >> 8);
                        bmi[offset + 10] = (byte)((blueMask & 0xFF0000) >> 16);
                        bmi[offset + 11] = (byte)((blueMask & 0xFF000000) >> 24);
                        break;
                    }
                    case 32: {
                        redMask = 65280;
                        greenMask = 0xFF0000;
                        blueMask = -16777216;
                        bmi[offset] = (byte)((redMask & 0xFF000000) >> 24);
                        bmi[offset + 1] = (byte)((redMask & 0xFF0000) >> 16);
                        bmi[offset + 2] = (byte)((redMask & 0xFF00) >> 8);
                        bmi[offset + 3] = (byte)((redMask & 0xFF) >> 0);
                        bmi[offset + 4] = (byte)((greenMask & 0xFF000000) >> 24);
                        bmi[offset + 5] = (byte)((greenMask & 0xFF0000) >> 16);
                        bmi[offset + 6] = (byte)((greenMask & 0xFF00) >> 8);
                        bmi[offset + 7] = (byte)((greenMask & 0xFF) >> 0);
                        bmi[offset + 8] = (byte)((blueMask & 0xFF000000) >> 24);
                        bmi[offset + 9] = (byte)((blueMask & 0xFF0000) >> 16);
                        bmi[offset + 10] = (byte)((blueMask & 0xFF00) >> 8);
                        bmi[offset + 11] = (byte)((blueMask & 0xFF) >> 0);
                        break;
                    }
                    default: {
                        SWT.error(38);
                        break;
                    }
                }
            }
        } else {
            int j = 0;
            while (j < rgbs.length) {
                bmi[offset] = (byte)rgbs[j].blue;
                bmi[offset + 1] = (byte)rgbs[j].green;
                bmi[offset + 2] = (byte)rgbs[j].red;
                bmi[offset + 3] = 0;
                offset += 4;
                ++j;
            }
        }
        if ((hDib = OS.CreateDIBSection(0, bmi, 0, pBits = new int[1], 0, 0)) == 0) {
            SWT.error(2);
        }
        int hdcSource = OS.CreateCompatibleDC(hDC);
        int hdcDest = OS.CreateCompatibleDC(hDC);
        int hOldSrc = OS.SelectObject(hdcSource, hBitmap);
        int hOldDest = OS.SelectObject(hdcDest, hDib);
        OS.BitBlt(hdcDest, 0, 0, width, height, hdcSource, 0, 0, 0xCC0020);
        OS.SelectObject(hdcSource, hOldSrc);
        OS.SelectObject(hdcDest, hOldDest);
        OS.DeleteDC(hdcSource);
        OS.DeleteDC(hdcDest);
        return hDib;
    }

    int[] createGdipImage() {
        switch (this.type) {
            case 0: {
                if (this.alpha != -1 || this.alphaData != null || this.transparentPixel != -1) {
                    int x;
                    int y;
                    BITMAP bm = new BITMAP();
                    OS.GetObject(this.handle, BITMAP.sizeof, bm);
                    int imgWidth = bm.bmWidth;
                    int imgHeight = bm.bmHeight;
                    int hDC = this.device.internal_new_GC(null);
                    int srcHdc = OS.CreateCompatibleDC(hDC);
                    int oldSrcBitmap = OS.SelectObject(srcHdc, this.handle);
                    int memHdc = OS.CreateCompatibleDC(hDC);
                    int memDib = Image.createDIB(imgWidth, imgHeight, 32);
                    if (memDib == 0) {
                        SWT.error(2);
                    }
                    int oldMemBitmap = OS.SelectObject(memHdc, memDib);
                    BITMAP dibBM = new BITMAP();
                    OS.GetObject(memDib, BITMAP.sizeof, dibBM);
                    int sizeInBytes = dibBM.bmWidthBytes * dibBM.bmHeight;
                    OS.BitBlt(memHdc, 0, 0, imgWidth, imgHeight, srcHdc, 0, 0, 0xCC0020);
                    byte red = 0;
                    byte green = 0;
                    byte blue = 0;
                    if (this.transparentPixel != -1) {
                        if (bm.bmBitsPixel <= 8) {
                            byte[] color = new byte[4];
                            OS.GetDIBColorTable(srcHdc, this.transparentPixel, 1, color);
                            blue = color[0];
                            green = color[1];
                            red = color[2];
                        } else {
                            switch (bm.bmBitsPixel) {
                                case 16: {
                                    int blueMask = 31;
                                    int blueShift = ImageData.getChannelShift(blueMask);
                                    byte[] blues = ImageData.ANY_TO_EIGHT[ImageData.getChannelWidth(blueMask, blueShift)];
                                    blue = blues[(this.transparentPixel & blueMask) >> blueShift];
                                    int greenMask = 992;
                                    int greenShift = ImageData.getChannelShift(greenMask);
                                    byte[] greens = ImageData.ANY_TO_EIGHT[ImageData.getChannelWidth(greenMask, greenShift)];
                                    green = greens[(this.transparentPixel & greenMask) >> greenShift];
                                    int redMask = 31744;
                                    int redShift = ImageData.getChannelShift(redMask);
                                    byte[] reds = ImageData.ANY_TO_EIGHT[ImageData.getChannelWidth(redMask, redShift)];
                                    red = reds[(this.transparentPixel & redMask) >> redShift];
                                    break;
                                }
                                case 24: {
                                    blue = (byte)((this.transparentPixel & 0xFF0000) >> 16);
                                    green = (byte)((this.transparentPixel & 0xFF00) >> 8);
                                    red = (byte)(this.transparentPixel & 0xFF);
                                    break;
                                }
                                case 32: {
                                    blue = (byte)((this.transparentPixel & 0xFF000000) >>> 24);
                                    green = (byte)((this.transparentPixel & 0xFF0000) >> 16);
                                    red = (byte)((this.transparentPixel & 0xFF00) >> 8);
                                }
                            }
                        }
                    }
                    OS.SelectObject(srcHdc, oldSrcBitmap);
                    OS.SelectObject(memHdc, oldMemBitmap);
                    OS.DeleteObject(srcHdc);
                    OS.DeleteObject(memHdc);
                    byte[] srcData = new byte[sizeInBytes];
                    OS.MoveMemory(srcData, dibBM.bmBits, sizeInBytes);
                    OS.DeleteObject(memDib);
                    this.device.internal_dispose_GC(hDC, null);
                    if (this.alpha != -1) {
                        y = 0;
                        int dp = 0;
                        while (y < imgHeight) {
                            x = 0;
                            while (x < imgWidth) {
                                srcData[dp + 3] = (byte)this.alpha;
                                dp += 4;
                                ++x;
                            }
                            ++y;
                        }
                    } else if (this.alphaData != null) {
                        y = 0;
                        int dp = 0;
                        int ap = 0;
                        while (y < imgHeight) {
                            int x2 = 0;
                            while (x2 < imgWidth) {
                                srcData[dp + 3] = this.alphaData[ap++];
                                dp += 4;
                                ++x2;
                            }
                            ++y;
                        }
                    } else if (this.transparentPixel != -1) {
                        y = 0;
                        int dp = 0;
                        while (y < imgHeight) {
                            x = 0;
                            while (x < imgWidth) {
                                srcData[dp + 3] = srcData[dp] == blue && srcData[dp + 1] == green && srcData[dp + 2] == red ? 0 : -1;
                                dp += 4;
                                ++x;
                            }
                            ++y;
                        }
                    }
                    int hHeap = OS.GetProcessHeap();
                    int pixels = OS.HeapAlloc(hHeap, 8, srcData.length);
                    if (pixels == 0) {
                        SWT.error(2);
                    }
                    OS.MoveMemory(pixels, srcData, sizeInBytes);
                    return new int[]{Gdip.Bitmap_new(imgWidth, imgHeight, dibBM.bmWidthBytes, 2498570, pixels), pixels};
                }
                int[] nArray = new int[2];
                nArray[0] = Gdip.Bitmap_new(this.handle, 0);
                return nArray;
            }
            case 1: {
                ICONINFO iconInfo = new ICONINFO();
                if (OS.IsWinCE) {
                    Image.GetIconInfo(this, iconInfo);
                } else {
                    OS.GetIconInfo(this.handle, iconInfo);
                }
                int hBitmap = iconInfo.hbmColor;
                if (hBitmap == 0) {
                    hBitmap = iconInfo.hbmMask;
                }
                BITMAP bm = new BITMAP();
                OS.GetObject(hBitmap, BITMAP.sizeof, bm);
                int imgWidth = bm.bmWidth;
                int imgHeight = hBitmap == iconInfo.hbmMask ? bm.bmHeight / 2 : bm.bmHeight;
                int img = 0;
                int pixels = 0;
                if (imgWidth > imgHeight || bm.bmBitsPixel == 32) {
                    int hDC = this.device.internal_new_GC(null);
                    int srcHdc = OS.CreateCompatibleDC(hDC);
                    int oldSrcBitmap = OS.SelectObject(srcHdc, hBitmap);
                    int memHdc = OS.CreateCompatibleDC(hDC);
                    int memDib = Image.createDIB(imgWidth, imgHeight, 32);
                    if (memDib == 0) {
                        SWT.error(2);
                    }
                    int oldMemBitmap = OS.SelectObject(memHdc, memDib);
                    BITMAP dibBM = new BITMAP();
                    OS.GetObject(memDib, BITMAP.sizeof, dibBM);
                    OS.BitBlt(memHdc, 0, 0, imgWidth, imgHeight, srcHdc, 0, hBitmap == iconInfo.hbmMask ? imgHeight : 0, 0xCC0020);
                    OS.SelectObject(memHdc, oldMemBitmap);
                    OS.DeleteObject(memHdc);
                    byte[] srcData = new byte[dibBM.bmWidthBytes * dibBM.bmHeight];
                    OS.MoveMemory(srcData, dibBM.bmBits, srcData.length);
                    OS.DeleteObject(memDib);
                    OS.SelectObject(srcHdc, iconInfo.hbmMask);
                    int y = 0;
                    int dp = 3;
                    while (y < imgHeight) {
                        int x = 0;
                        while (x < imgWidth) {
                            if (srcData[dp] == 0) {
                                srcData[dp] = OS.GetPixel(srcHdc, x, y) != 0 ? 0 : -1;
                            }
                            dp += 4;
                            ++x;
                        }
                        ++y;
                    }
                    OS.SelectObject(srcHdc, oldSrcBitmap);
                    OS.DeleteObject(srcHdc);
                    this.device.internal_dispose_GC(hDC, null);
                    int hHeap = OS.GetProcessHeap();
                    pixels = OS.HeapAlloc(hHeap, 8, srcData.length);
                    if (pixels == 0) {
                        SWT.error(2);
                    }
                    OS.MoveMemory(pixels, srcData, srcData.length);
                    img = Gdip.Bitmap_new(imgWidth, imgHeight, dibBM.bmWidthBytes, 2498570, pixels);
                } else {
                    img = Gdip.Bitmap_new(this.handle);
                }
                if (iconInfo.hbmColor != 0) {
                    OS.DeleteObject(iconInfo.hbmColor);
                }
                if (iconInfo.hbmMask != 0) {
                    OS.DeleteObject(iconInfo.hbmMask);
                }
                return new int[]{img, pixels};
            }
        }
        SWT.error(40);
        return null;
    }

    void destroy() {
        if (this.memGC != null) {
            this.memGC.dispose();
        }
        if (this.type == 1) {
            if (OS.IsWinCE) {
                this.data = null;
            }
            OS.DestroyIcon(this.handle);
        } else {
            OS.DeleteObject(this.handle);
        }
        this.handle = 0;
        this.memGC = null;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Image)) {
            return false;
        }
        Image image = (Image)object;
        return this.device == image.device && this.handle == image.handle;
    }

    public Color getBackground() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (this.transparentPixel == -1) {
            return null;
        }
        int hDC = this.device.internal_new_GC(null);
        BITMAP bm = new BITMAP();
        OS.GetObject(this.handle, BITMAP.sizeof, bm);
        int hdcMem = OS.CreateCompatibleDC(hDC);
        int hOldObject = OS.SelectObject(hdcMem, this.handle);
        int red = 0;
        int green = 0;
        int blue = 0;
        if (bm.bmBitsPixel <= 8) {
            if (OS.IsWinCE) {
                byte[] pBits = new byte[1];
                OS.MoveMemory(pBits, bm.bmBits, 1);
                byte oldValue = pBits[0];
                int mask = 255 << 8 - bm.bmBitsPixel & 0xFF;
                pBits[0] = (byte)(this.transparentPixel << 8 - bm.bmBitsPixel | pBits[0] & ~mask);
                OS.MoveMemory(bm.bmBits, pBits, 1);
                int color = OS.GetPixel(hdcMem, 0, 0);
                pBits[0] = oldValue;
                OS.MoveMemory(bm.bmBits, pBits, 1);
                blue = (color & 0xFF0000) >> 16;
                green = (color & 0xFF00) >> 8;
                red = color & 0xFF;
            } else {
                byte[] color = new byte[4];
                OS.GetDIBColorTable(hdcMem, this.transparentPixel, 1, color);
                blue = color[0] & 0xFF;
                green = color[1] & 0xFF;
                red = color[2] & 0xFF;
            }
        } else {
            switch (bm.bmBitsPixel) {
                case 16: {
                    blue = (this.transparentPixel & 0x1F) << 3;
                    green = (this.transparentPixel & 0x3E0) >> 2;
                    red = (this.transparentPixel & 0x7C00) >> 7;
                    break;
                }
                case 24: {
                    blue = (this.transparentPixel & 0xFF0000) >> 16;
                    green = (this.transparentPixel & 0xFF00) >> 8;
                    red = this.transparentPixel & 0xFF;
                    break;
                }
                case 32: {
                    blue = (this.transparentPixel & 0xFF000000) >>> 24;
                    green = (this.transparentPixel & 0xFF0000) >> 16;
                    red = (this.transparentPixel & 0xFF00) >> 8;
                    break;
                }
                default: {
                    return null;
                }
            }
        }
        OS.SelectObject(hdcMem, hOldObject);
        OS.DeleteDC(hdcMem);
        this.device.internal_dispose_GC(hDC, null);
        return Color.win32_new(this.device, blue << 16 | green << 8 | red);
    }

    public Rectangle getBounds() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (this.width != -1 && this.height != -1) {
            return new Rectangle(0, 0, this.width, this.height);
        }
        switch (this.type) {
            case 0: {
                BITMAP bm = new BITMAP();
                OS.GetObject(this.handle, BITMAP.sizeof, bm);
                this.width = bm.bmWidth;
                this.height = bm.bmHeight;
                return new Rectangle(0, 0, this.width, this.height);
            }
            case 1: {
                if (OS.IsWinCE) {
                    this.width = this.data.width;
                    this.height = this.data.height;
                    return new Rectangle(0, 0, this.width, this.height);
                }
                ICONINFO info = new ICONINFO();
                OS.GetIconInfo(this.handle, info);
                int hBitmap = info.hbmColor;
                if (hBitmap == 0) {
                    hBitmap = info.hbmMask;
                }
                BITMAP bm = new BITMAP();
                OS.GetObject(hBitmap, BITMAP.sizeof, bm);
                if (hBitmap == info.hbmMask) {
                    bm.bmHeight /= 2;
                }
                if (info.hbmColor != 0) {
                    OS.DeleteObject(info.hbmColor);
                }
                if (info.hbmMask != 0) {
                    OS.DeleteObject(info.hbmMask);
                }
                this.width = bm.bmWidth;
                this.height = bm.bmHeight;
                return new Rectangle(0, 0, this.width, this.height);
            }
        }
        SWT.error(40);
        return null;
    }

    public ImageData getImageData() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        switch (this.type) {
            case 1: {
                int hPalette;
                if (OS.IsWinCE) {
                    return this.data;
                }
                ICONINFO info = new ICONINFO();
                if (OS.IsWinCE) {
                    SWT.error(20);
                }
                OS.GetIconInfo(this.handle, info);
                int hBitmap = info.hbmColor;
                if (hBitmap == 0) {
                    hBitmap = info.hbmMask;
                }
                BITMAP bm = new BITMAP();
                OS.GetObject(hBitmap, BITMAP.sizeof, bm);
                int depth = bm.bmPlanes * bm.bmBitsPixel;
                int width = bm.bmWidth;
                if (hBitmap == info.hbmMask) {
                    bm.bmHeight /= 2;
                }
                int height = bm.bmHeight;
                int numColors = 0;
                if (depth <= 8) {
                    numColors = 1 << depth;
                }
                BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
                bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
                bmiHeader.biWidth = width;
                bmiHeader.biHeight = -height;
                bmiHeader.biPlanes = 1;
                bmiHeader.biBitCount = (short)depth;
                bmiHeader.biCompression = 0;
                byte[] bmi = new byte[BITMAPINFOHEADER.sizeof + numColors * 4];
                OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
                int hDC = this.device.internal_new_GC(null);
                int hBitmapDC = OS.CreateCompatibleDC(hDC);
                int hOldBitmap = OS.SelectObject(hBitmapDC, hBitmap);
                int oldPalette = 0;
                if (depth <= 8 && (hPalette = this.device.hPalette) != 0) {
                    oldPalette = OS.SelectPalette(hBitmapDC, hPalette, false);
                    OS.RealizePalette(hBitmapDC);
                }
                if (OS.IsWinCE) {
                    SWT.error(20);
                }
                OS.GetDIBits(hBitmapDC, hBitmap, 0, height, 0, bmi, 0);
                OS.MoveMemory(bmiHeader, bmi, BITMAPINFOHEADER.sizeof);
                int imageSize = bmiHeader.biSizeImage;
                byte[] data = new byte[imageSize];
                int hHeap = OS.GetProcessHeap();
                int lpvBits = OS.HeapAlloc(hHeap, 8, imageSize);
                if (lpvBits == 0) {
                    SWT.error(2);
                }
                if (OS.IsWinCE) {
                    SWT.error(20);
                }
                OS.GetDIBits(hBitmapDC, hBitmap, 0, height, lpvBits, bmi, 0);
                OS.MoveMemory(data, lpvBits, imageSize);
                PaletteData palette = null;
                if (depth <= 8) {
                    RGB[] rgbs = new RGB[numColors];
                    int srcIndex = 40;
                    int i = 0;
                    while (i < numColors) {
                        rgbs[i] = new RGB(bmi[srcIndex + 2] & 0xFF, bmi[srcIndex + 1] & 0xFF, bmi[srcIndex] & 0xFF);
                        srcIndex += 4;
                        ++i;
                    }
                    palette = new PaletteData(rgbs);
                } else if (depth == 16) {
                    palette = new PaletteData(31744, 992, 31);
                } else if (depth == 24) {
                    palette = new PaletteData(255, 65280, 0xFF0000);
                } else if (depth == 32) {
                    palette = new PaletteData(65280, 0xFF0000, -16777216);
                } else {
                    SWT.error(38);
                }
                byte[] maskData = null;
                if (info.hbmColor == 0) {
                    maskData = new byte[imageSize];
                    if (OS.IsWinCE) {
                        SWT.error(20);
                    }
                    OS.GetDIBits(hBitmapDC, hBitmap, height, height, lpvBits, bmi, 0);
                    OS.MoveMemory(maskData, lpvBits, imageSize);
                } else {
                    bmiHeader = new BITMAPINFOHEADER();
                    bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
                    bmiHeader.biWidth = width;
                    bmiHeader.biHeight = -height;
                    bmiHeader.biPlanes = 1;
                    bmiHeader.biBitCount = 1;
                    bmiHeader.biCompression = 0;
                    bmi = new byte[BITMAPINFOHEADER.sizeof + 8];
                    OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
                    int offset = BITMAPINFOHEADER.sizeof;
                    bmi[offset + 6] = -1;
                    bmi[offset + 5] = -1;
                    bmi[offset + 4] = -1;
                    bmi[offset + 7] = 0;
                    OS.SelectObject(hBitmapDC, info.hbmMask);
                    if (OS.IsWinCE) {
                        SWT.error(20);
                    }
                    OS.GetDIBits(hBitmapDC, info.hbmMask, 0, height, 0, bmi, 0);
                    OS.MoveMemory(bmiHeader, bmi, BITMAPINFOHEADER.sizeof);
                    imageSize = bmiHeader.biSizeImage;
                    maskData = new byte[imageSize];
                    int lpvMaskBits = OS.HeapAlloc(hHeap, 8, imageSize);
                    if (lpvMaskBits == 0) {
                        SWT.error(2);
                    }
                    if (OS.IsWinCE) {
                        SWT.error(20);
                    }
                    OS.GetDIBits(hBitmapDC, info.hbmMask, 0, height, lpvMaskBits, bmi, 0);
                    OS.MoveMemory(maskData, lpvMaskBits, imageSize);
                    OS.HeapFree(hHeap, 0, lpvMaskBits);
                    int i = 0;
                    while (i < maskData.length) {
                        int n = i++;
                        maskData[n] = ~maskData[n];
                    }
                    int bpl = imageSize / height;
                    int maskPad = 1;
                    while (maskPad < 128) {
                        int calcBpl = ((width + 7) / 8 + (maskPad - 1)) / maskPad * maskPad;
                        if (calcBpl == bpl) break;
                        ++maskPad;
                    }
                    maskData = ImageData.convertPad(maskData, width, height, 1, maskPad, 2);
                }
                OS.HeapFree(hHeap, 0, lpvBits);
                OS.SelectObject(hBitmapDC, hOldBitmap);
                if (oldPalette != 0) {
                    OS.SelectPalette(hBitmapDC, oldPalette, false);
                    OS.RealizePalette(hBitmapDC);
                }
                OS.DeleteDC(hBitmapDC);
                this.device.internal_dispose_GC(hDC, null);
                if (info.hbmColor != 0) {
                    OS.DeleteObject(info.hbmColor);
                }
                if (info.hbmMask != 0) {
                    OS.DeleteObject(info.hbmMask);
                }
                ImageData imageData = new ImageData(width, height, depth, palette, 4, data);
                imageData.maskData = maskData;
                imageData.maskPad = 2;
                return imageData;
            }
            case 0: {
                int imageSize;
                int hPalette;
                BITMAP bm = new BITMAP();
                OS.GetObject(this.handle, BITMAP.sizeof, bm);
                int depth = bm.bmPlanes * bm.bmBitsPixel;
                int width = bm.bmWidth;
                int height = bm.bmHeight;
                boolean isDib = bm.bmBits != 0;
                int hDC = this.device.internal_new_GC(null);
                int handle = this.handle;
                if (OS.IsWinCE && !isDib) {
                    boolean mustRestore = false;
                    if (this.memGC != null && !this.memGC.isDisposed()) {
                        this.memGC.flush();
                        mustRestore = true;
                        GCData data = this.memGC.data;
                        if (data.hNullBitmap != 0) {
                            OS.SelectObject(this.memGC.handle, data.hNullBitmap);
                            data.hNullBitmap = 0;
                        }
                    }
                    handle = this.createDIBFromDDB(hDC, this.handle, width, height);
                    if (mustRestore) {
                        int hOldBitmap;
                        this.memGC.data.hNullBitmap = hOldBitmap = OS.SelectObject(this.memGC.handle, this.handle);
                    }
                    isDib = true;
                }
                DIBSECTION dib = null;
                if (isDib) {
                    dib = new DIBSECTION();
                    OS.GetObject(handle, DIBSECTION.sizeof, dib);
                }
                int numColors = 0;
                if (depth <= 8) {
                    numColors = isDib ? dib.biClrUsed : 1 << depth;
                }
                byte[] bmi = null;
                BITMAPINFOHEADER bmiHeader = null;
                if (!isDib) {
                    bmiHeader = new BITMAPINFOHEADER();
                    bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
                    bmiHeader.biWidth = width;
                    bmiHeader.biHeight = -height;
                    bmiHeader.biPlanes = 1;
                    bmiHeader.biBitCount = (short)depth;
                    bmiHeader.biCompression = 0;
                    bmi = new byte[BITMAPINFOHEADER.sizeof + numColors * 4];
                    OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
                }
                int hBitmapDC = OS.CreateCompatibleDC(hDC);
                int hOldBitmap = OS.SelectObject(hBitmapDC, handle);
                int oldPalette = 0;
                if (!isDib && depth <= 8 && (hPalette = this.device.hPalette) != 0) {
                    oldPalette = OS.SelectPalette(hBitmapDC, hPalette, false);
                    OS.RealizePalette(hBitmapDC);
                }
                if (isDib) {
                    imageSize = dib.biSizeImage;
                } else {
                    if (OS.IsWinCE) {
                        SWT.error(20);
                    }
                    OS.GetDIBits(hBitmapDC, handle, 0, height, 0, bmi, 0);
                    OS.MoveMemory(bmiHeader, bmi, BITMAPINFOHEADER.sizeof);
                    imageSize = bmiHeader.biSizeImage;
                }
                byte[] data = new byte[imageSize];
                if (isDib) {
                    if (OS.IsWinCE && this.handle != handle) {
                        OS.MoveMemory(data, dib.bmBits, imageSize);
                    } else {
                        OS.MoveMemory(data, bm.bmBits, imageSize);
                    }
                } else {
                    int hHeap = OS.GetProcessHeap();
                    int lpvBits = OS.HeapAlloc(hHeap, 8, imageSize);
                    if (lpvBits == 0) {
                        SWT.error(2);
                    }
                    if (OS.IsWinCE) {
                        SWT.error(20);
                    }
                    OS.GetDIBits(hBitmapDC, handle, 0, height, lpvBits, bmi, 0);
                    OS.MoveMemory(data, lpvBits, imageSize);
                    OS.HeapFree(hHeap, 0, lpvBits);
                }
                PaletteData palette = null;
                if (depth <= 8) {
                    RGB[] rgbs = new RGB[numColors];
                    if (isDib) {
                        if (OS.IsWinCE) {
                            int red = 0;
                            int green = 0;
                            int blue = 0;
                            byte[] pBits = new byte[1];
                            OS.MoveMemory(pBits, bm.bmBits, 1);
                            byte oldValue = pBits[0];
                            int mask = 255 << 8 - bm.bmBitsPixel & 0xFF;
                            int i = 0;
                            while (i < numColors) {
                                pBits[0] = (byte)(i << 8 - bm.bmBitsPixel | pBits[0] & ~mask);
                                OS.MoveMemory(bm.bmBits, pBits, 1);
                                int color = OS.GetPixel(hBitmapDC, 0, 0);
                                blue = (color & 0xFF0000) >> 16;
                                green = (color & 0xFF00) >> 8;
                                red = color & 0xFF;
                                rgbs[i] = new RGB(red, green, blue);
                                ++i;
                            }
                            pBits[0] = oldValue;
                            OS.MoveMemory(bm.bmBits, pBits, 1);
                        } else {
                            byte[] colors = new byte[numColors * 4];
                            OS.GetDIBColorTable(hBitmapDC, 0, numColors, colors);
                            int colorIndex = 0;
                            int i = 0;
                            while (i < rgbs.length) {
                                rgbs[i] = new RGB(colors[colorIndex + 2] & 0xFF, colors[colorIndex + 1] & 0xFF, colors[colorIndex] & 0xFF);
                                colorIndex += 4;
                                ++i;
                            }
                        }
                    } else {
                        int srcIndex = BITMAPINFOHEADER.sizeof;
                        int i = 0;
                        while (i < numColors) {
                            rgbs[i] = new RGB(bmi[srcIndex + 2] & 0xFF, bmi[srcIndex + 1] & 0xFF, bmi[srcIndex] & 0xFF);
                            srcIndex += 4;
                            ++i;
                        }
                    }
                    palette = new PaletteData(rgbs);
                } else if (depth == 16) {
                    palette = new PaletteData(31744, 992, 31);
                } else if (depth == 24) {
                    palette = new PaletteData(255, 65280, 0xFF0000);
                } else if (depth == 32) {
                    palette = new PaletteData(65280, 0xFF0000, -16777216);
                } else {
                    SWT.error(38);
                }
                OS.SelectObject(hBitmapDC, hOldBitmap);
                if (oldPalette != 0) {
                    OS.SelectPalette(hBitmapDC, oldPalette, false);
                    OS.RealizePalette(hBitmapDC);
                }
                if (OS.IsWinCE && handle != this.handle) {
                    OS.DeleteObject(handle);
                }
                OS.DeleteDC(hBitmapDC);
                this.device.internal_dispose_GC(hDC, null);
                ImageData imageData = new ImageData(width, height, depth, palette, 4, data);
                imageData.transparentPixel = this.transparentPixel;
                imageData.alpha = this.alpha;
                if (this.alpha == -1 && this.alphaData != null) {
                    imageData.alphaData = new byte[this.alphaData.length];
                    System.arraycopy(this.alphaData, 0, imageData.alphaData, 0, this.alphaData.length);
                }
                return imageData;
            }
        }
        SWT.error(40);
        return null;
    }

    public int hashCode() {
        return this.handle;
    }

    void init(int width, int height) {
        if (width <= 0 || height <= 0) {
            SWT.error(5);
        }
        this.type = 0;
        int hDC = this.device.internal_new_GC(null);
        this.handle = OS.CreateCompatibleBitmap(hDC, width, height);
        if (this.handle == 0) {
            int planes;
            int bits = OS.GetDeviceCaps(hDC, 12);
            int depth = bits * (planes = OS.GetDeviceCaps(hDC, 14));
            if (depth < 16) {
                depth = 16;
            }
            this.handle = Image.createDIB(width, height, depth);
        }
        if (this.handle != 0) {
            int memDC = OS.CreateCompatibleDC(hDC);
            int hOldBitmap = OS.SelectObject(memDC, this.handle);
            OS.PatBlt(memDC, 0, 0, width, height, 15728673);
            OS.SelectObject(memDC, hOldBitmap);
            OS.DeleteDC(memDC);
        }
        this.device.internal_dispose_GC(hDC, null);
        if (this.handle == 0) {
            SWT.error(2, null, this.device.getLastError());
        }
    }

    static int createDIB(int width, int height, int depth) {
        BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
        bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
        bmiHeader.biWidth = width;
        bmiHeader.biHeight = -height;
        bmiHeader.biPlanes = 1;
        bmiHeader.biBitCount = (short)depth;
        bmiHeader.biCompression = OS.IsWinCE ? 3 : 0;
        byte[] bmi = new byte[BITMAPINFOHEADER.sizeof + (OS.IsWinCE ? 12 : 0)];
        OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
        if (OS.IsWinCE) {
            int redMask = 65280;
            int greenMask = 0xFF0000;
            int blueMask = -16777216;
            int offset = BITMAPINFOHEADER.sizeof;
            bmi[offset] = (byte)((redMask & 0xFF000000) >> 24);
            bmi[offset + 1] = (byte)((redMask & 0xFF0000) >> 16);
            bmi[offset + 2] = (byte)((redMask & 0xFF00) >> 8);
            bmi[offset + 3] = (byte)((redMask & 0xFF) >> 0);
            bmi[offset + 4] = (byte)((greenMask & 0xFF000000) >> 24);
            bmi[offset + 5] = (byte)((greenMask & 0xFF0000) >> 16);
            bmi[offset + 6] = (byte)((greenMask & 0xFF00) >> 8);
            bmi[offset + 7] = (byte)((greenMask & 0xFF) >> 0);
            bmi[offset + 8] = (byte)((blueMask & 0xFF000000) >> 24);
            bmi[offset + 9] = (byte)((blueMask & 0xFF0000) >> 16);
            bmi[offset + 10] = (byte)((blueMask & 0xFF00) >> 8);
            bmi[offset + 11] = (byte)((blueMask & 0xFF) >> 0);
        }
        int[] pBits = new int[1];
        return OS.CreateDIBSection(0, bmi, 0, pBits, 0, 0);
    }

    static void GetIconInfo(Image image, ICONINFO info) {
        int[] result = Image.init(image.device, null, image.data);
        info.hbmColor = result[0];
        info.hbmMask = result[1];
    }

    static int[] init(Device device, Image image, ImageData i) {
        int[] pBits;
        int hDib;
        if (OS.IsWin95 && i.depth == 1 && i.getTransparencyType() != 2 || i.depth == 2) {
            ImageData img = new ImageData(i.width, i.height, 4, i.palette);
            ImageData.blit(1, i.data, i.depth, i.bytesPerLine, i.getByteOrder(), 0, 0, i.width, i.height, null, null, null, 255, null, 0, 0, 0, img.data, img.depth, img.bytesPerLine, i.getByteOrder(), 0, 0, img.width, img.height, null, null, null, false, false);
            img.transparentPixel = i.transparentPixel;
            img.maskPad = i.maskPad;
            img.maskData = i.maskData;
            img.alpha = i.alpha;
            img.alphaData = i.alphaData;
            i = img;
        }
        if (i.palette.isDirect) {
            PaletteData palette = i.palette;
            int redMask = palette.redMask;
            int greenMask = palette.greenMask;
            int blueMask = palette.blueMask;
            int newDepth = i.depth;
            int newOrder = 1;
            PaletteData newPalette = null;
            switch (i.depth) {
                case 8: {
                    newDepth = 16;
                    newOrder = 0;
                    newPalette = new PaletteData(31744, 992, 31);
                    break;
                }
                case 16: {
                    newOrder = 0;
                    if (redMask == 31744 && greenMask == 992 && blueMask == 31) break;
                    newPalette = new PaletteData(31744, 992, 31);
                    break;
                }
                case 24: {
                    if (redMask == 255 && greenMask == 65280 && blueMask == 0xFF0000) break;
                    newPalette = new PaletteData(255, 65280, 0xFF0000);
                    break;
                }
                case 32: {
                    if (redMask == 65280 && greenMask == 0xFF0000 && blueMask == -16777216) break;
                    newPalette = new PaletteData(65280, 0xFF0000, -16777216);
                    break;
                }
                default: {
                    SWT.error(38);
                }
            }
            if (newPalette != null) {
                ImageData img = new ImageData(i.width, i.height, newDepth, newPalette);
                ImageData.blit(1, i.data, i.depth, i.bytesPerLine, i.getByteOrder(), 0, 0, i.width, i.height, redMask, greenMask, blueMask, 255, null, 0, 0, 0, img.data, img.depth, img.bytesPerLine, newOrder, 0, 0, img.width, img.height, newPalette.redMask, newPalette.greenMask, newPalette.blueMask, false, false);
                if (i.transparentPixel != -1) {
                    img.transparentPixel = newPalette.getPixel(palette.getRGB(i.transparentPixel));
                }
                img.maskPad = i.maskPad;
                img.maskData = i.maskData;
                img.alpha = i.alpha;
                img.alphaData = i.alphaData;
                i = img;
            }
        }
        RGB[] rgbs = i.palette.getRGBs();
        boolean useBitfields = OS.IsWinCE && (i.depth == 16 || i.depth == 32);
        BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
        bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
        bmiHeader.biWidth = i.width;
        bmiHeader.biHeight = -i.height;
        bmiHeader.biPlanes = 1;
        bmiHeader.biBitCount = (short)i.depth;
        bmiHeader.biCompression = useBitfields ? 3 : 0;
        int n = bmiHeader.biClrUsed = rgbs == null ? 0 : rgbs.length;
        byte[] bmi = i.palette.isDirect ? new byte[BITMAPINFOHEADER.sizeof + (useBitfields ? 12 : 0)] : new byte[BITMAPINFOHEADER.sizeof + rgbs.length * 4];
        OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
        int offset = BITMAPINFOHEADER.sizeof;
        if (i.palette.isDirect) {
            if (useBitfields) {
                PaletteData palette = i.palette;
                int redMask = palette.redMask;
                int greenMask = palette.greenMask;
                int blueMask = palette.blueMask;
                if (i.getByteOrder() == 0) {
                    bmi[offset] = (byte)((redMask & 0xFF) >> 0);
                    bmi[offset + 1] = (byte)((redMask & 0xFF00) >> 8);
                    bmi[offset + 2] = (byte)((redMask & 0xFF0000) >> 16);
                    bmi[offset + 3] = (byte)((redMask & 0xFF000000) >> 24);
                    bmi[offset + 4] = (byte)((greenMask & 0xFF) >> 0);
                    bmi[offset + 5] = (byte)((greenMask & 0xFF00) >> 8);
                    bmi[offset + 6] = (byte)((greenMask & 0xFF0000) >> 16);
                    bmi[offset + 7] = (byte)((greenMask & 0xFF000000) >> 24);
                    bmi[offset + 8] = (byte)((blueMask & 0xFF) >> 0);
                    bmi[offset + 9] = (byte)((blueMask & 0xFF00) >> 8);
                    bmi[offset + 10] = (byte)((blueMask & 0xFF0000) >> 16);
                    bmi[offset + 11] = (byte)((blueMask & 0xFF000000) >> 24);
                } else {
                    bmi[offset] = (byte)((redMask & 0xFF000000) >> 24);
                    bmi[offset + 1] = (byte)((redMask & 0xFF0000) >> 16);
                    bmi[offset + 2] = (byte)((redMask & 0xFF00) >> 8);
                    bmi[offset + 3] = (byte)((redMask & 0xFF) >> 0);
                    bmi[offset + 4] = (byte)((greenMask & 0xFF000000) >> 24);
                    bmi[offset + 5] = (byte)((greenMask & 0xFF0000) >> 16);
                    bmi[offset + 6] = (byte)((greenMask & 0xFF00) >> 8);
                    bmi[offset + 7] = (byte)((greenMask & 0xFF) >> 0);
                    bmi[offset + 8] = (byte)((blueMask & 0xFF000000) >> 24);
                    bmi[offset + 9] = (byte)((blueMask & 0xFF0000) >> 16);
                    bmi[offset + 10] = (byte)((blueMask & 0xFF00) >> 8);
                    bmi[offset + 11] = (byte)((blueMask & 0xFF) >> 0);
                }
            }
        } else {
            int j = 0;
            while (j < rgbs.length) {
                bmi[offset] = (byte)rgbs[j].blue;
                bmi[offset + 1] = (byte)rgbs[j].green;
                bmi[offset + 2] = (byte)rgbs[j].red;
                bmi[offset + 3] = 0;
                offset += 4;
                ++j;
            }
        }
        if ((hDib = OS.CreateDIBSection(0, bmi, 0, pBits = new int[1], 0, 0)) == 0) {
            SWT.error(2);
        }
        byte[] data = i.data;
        if (i.scanlinePad != 4 && i.bytesPerLine % 4 != 0) {
            data = ImageData.convertPad(data, i.width, i.height, i.depth, i.scanlinePad, 4);
        }
        OS.MoveMemory(pBits[0], data, data.length);
        int[] result = null;
        if (i.getTransparencyType() == 2) {
            int hDC = device.internal_new_GC(null);
            int hdcSrc = OS.CreateCompatibleDC(hDC);
            OS.SelectObject(hdcSrc, hDib);
            int hBitmap = OS.CreateCompatibleBitmap(hDC, i.width, i.height);
            if (hBitmap == 0) {
                SWT.error(2);
            }
            int hdcDest = OS.CreateCompatibleDC(hDC);
            OS.SelectObject(hdcDest, hBitmap);
            OS.BitBlt(hdcDest, 0, 0, i.width, i.height, hdcSrc, 0, 0, 0xCC0020);
            device.internal_dispose_GC(hDC, null);
            byte[] maskData = ImageData.convertPad(i.maskData, i.width, i.height, 1, i.maskPad, 2);
            int hMask = OS.CreateBitmap(i.width, i.height, 1, 1, maskData);
            if (hMask == 0) {
                SWT.error(2);
            }
            OS.SelectObject(hdcSrc, hMask);
            OS.PatBlt(hdcSrc, 0, 0, i.width, i.height, 0x550009);
            OS.DeleteDC(hdcSrc);
            OS.DeleteDC(hdcDest);
            OS.DeleteObject(hDib);
            if (image == null) {
                result = new int[]{hBitmap, hMask};
            } else {
                ICONINFO info = new ICONINFO();
                info.fIcon = true;
                info.hbmColor = hBitmap;
                info.hbmMask = hMask;
                int hIcon = OS.CreateIconIndirect(info);
                if (hIcon == 0) {
                    SWT.error(2);
                }
                OS.DeleteObject(hBitmap);
                OS.DeleteObject(hMask);
                image.handle = hIcon;
                image.type = 1;
                if (OS.IsWinCE) {
                    image.data = i;
                }
            }
        } else if (image == null) {
            result = new int[]{hDib};
        } else {
            image.handle = hDib;
            image.type = 0;
            image.transparentPixel = i.transparentPixel;
            if (image.transparentPixel == -1) {
                image.alpha = i.alpha;
                if (i.alpha == -1 && i.alphaData != null) {
                    int length = i.alphaData.length;
                    image.alphaData = new byte[length];
                    System.arraycopy(i.alphaData, 0, image.alphaData, 0, length);
                }
            }
        }
        return result;
    }

    /*
     * Unable to fully structure code
     */
    static int[] init(Device device, Image image, ImageData source, ImageData mask) {
        block13: {
            block12: {
                blackIndex = 0;
                if (!source.palette.isDirect) break block12;
                imageData = new ImageData(source.width, source.height, source.depth, source.palette);
                break block13;
            }
            black = new RGB(0, 0, 0);
            rgbs = source.getRGBs();
            if (source.transparentPixel == -1) ** GOTO lbl27
            newRGBs = new RGB[rgbs.length];
            System.arraycopy(rgbs, 0, newRGBs, 0, rgbs.length);
            if (source.transparentPixel >= newRGBs.length) {
                rgbs = new RGB[source.transparentPixel + 1];
                System.arraycopy(newRGBs, 0, rgbs, 0, newRGBs.length);
                i = newRGBs.length;
                while (i <= source.transparentPixel) {
                    rgbs[i] = new RGB(0, 0, 0);
                    ++i;
                }
            } else {
                newRGBs[source.transparentPixel] = black;
                rgbs = newRGBs;
            }
            blackIndex = source.transparentPixel;
            imageData = new ImageData(source.width, source.height, source.depth, new PaletteData(rgbs));
            break block13;
            while (!rgbs[blackIndex].equals(black)) {
                ++blackIndex;
lbl27:
                // 2 sources

                if (blackIndex < rgbs.length) continue;
            }
            if (blackIndex == rgbs.length) {
                if (1 << source.depth > rgbs.length) {
                    newRGBs = new RGB[rgbs.length + 1];
                    System.arraycopy(rgbs, 0, newRGBs, 0, rgbs.length);
                    newRGBs[rgbs.length] = black;
                    rgbs = newRGBs;
                } else {
                    blackIndex = -1;
                }
            }
            imageData = new ImageData(source.width, source.height, source.depth, new PaletteData(rgbs));
        }
        if (blackIndex == -1) {
            System.arraycopy(source.data, 0, imageData.data, 0, imageData.data.length);
        } else {
            imagePixels = new int[imageData.width];
            maskPixels = new int[mask.width];
            y = 0;
            while (y < imageData.height) {
                source.getPixels(0, y, imageData.width, imagePixels, 0);
                mask.getPixels(0, y, mask.width, maskPixels, 0);
                i = 0;
                while (i < imagePixels.length) {
                    if (maskPixels[i] == 0) {
                        imagePixels[i] = blackIndex;
                    }
                    ++i;
                }
                imageData.setPixels(0, y, source.width, imagePixels, 0);
                ++y;
            }
        }
        imageData.maskPad = mask.scanlinePad;
        imageData.maskData = mask.data;
        return Image.init(device, image, imageData);
    }

    void init(ImageData i) {
        if (i == null) {
            SWT.error(4);
        }
        Image.init(this.device, this, i);
    }

    public int internal_new_GC(GCData data) {
        if (this.handle == 0) {
            SWT.error(44);
        }
        if (this.type != 0 || this.memGC != null) {
            SWT.error(5);
        }
        int hDC = this.device.internal_new_GC(null);
        int imageDC = OS.CreateCompatibleDC(hDC);
        this.device.internal_dispose_GC(hDC, null);
        if (imageDC == 0) {
            SWT.error(2);
        }
        if (data != null) {
            int mask = 0x6000000;
            if ((data.style & mask) != 0) {
                data.layout = (data.style & 0x4000000) != 0 ? 1 : 0;
            } else {
                data.style |= 0x2000000;
            }
            data.device = this.device;
            data.image = this;
            data.font = this.device.systemFont;
        }
        return imageDC;
    }

    public void internal_dispose_GC(int hDC, GCData data) {
        OS.DeleteDC(hDC);
    }

    public boolean isDisposed() {
        return this.handle == 0;
    }

    public void setBackground(Color color) {
        if (OS.IsWinCE) {
            return;
        }
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (color == null) {
            SWT.error(4);
        }
        if (color.isDisposed()) {
            SWT.error(5);
        }
        if (this.transparentPixel == -1) {
            return;
        }
        this.transparentColor = -1;
        int hDC = this.device.internal_new_GC(null);
        BITMAP bm = new BITMAP();
        OS.GetObject(this.handle, BITMAP.sizeof, bm);
        int hdcMem = OS.CreateCompatibleDC(hDC);
        OS.SelectObject(hdcMem, this.handle);
        int maxColors = 1 << bm.bmBitsPixel;
        byte[] colors = new byte[maxColors * 4];
        if (OS.IsWinCE) {
            SWT.error(20);
        }
        int numColors = OS.GetDIBColorTable(hdcMem, 0, maxColors, colors);
        int offset = this.transparentPixel * 4;
        colors[offset] = (byte)color.getBlue();
        colors[offset + 1] = (byte)color.getGreen();
        colors[offset + 2] = (byte)color.getRed();
        if (OS.IsWinCE) {
            SWT.error(20);
        }
        OS.SetDIBColorTable(hdcMem, 0, numColors, colors);
        OS.DeleteDC(hdcMem);
        this.device.internal_dispose_GC(hDC, null);
    }

    public String toString() {
        if (this.isDisposed()) {
            return "Image {*DISPOSED*}";
        }
        return "Image {" + this.handle + "}";
    }

    public static Image win32_new(Device device, int type, int handle) {
        Image image = new Image(device);
        image.type = type;
        image.handle = handle;
        return image;
    }
}

