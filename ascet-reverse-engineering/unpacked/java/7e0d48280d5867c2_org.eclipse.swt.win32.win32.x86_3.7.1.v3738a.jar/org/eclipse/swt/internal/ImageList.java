/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.BITMAP;
import org.eclipse.swt.internal.win32.BITMAPINFOHEADER;
import org.eclipse.swt.internal.win32.OS;

public class ImageList {
    int handle;
    int style;
    int refCount;
    Image[] images;

    public ImageList(int style) {
        this(style, 32, 32);
    }

    public ImageList(int style, int width, int height) {
        this.style = style;
        int flags = 1;
        if (OS.IsWinCE) {
            flags |= 0;
        } else if (OS.COMCTL32_MAJOR >= 6) {
            flags |= 0x20;
        } else {
            int hDC = OS.GetDC(0);
            int bits = OS.GetDeviceCaps(hDC, 12);
            int planes = OS.GetDeviceCaps(hDC, 14);
            OS.ReleaseDC(0, hDC);
            int depth = bits * planes;
            switch (depth) {
                case 4: {
                    flags |= 4;
                    break;
                }
                case 8: {
                    flags |= 8;
                    break;
                }
                case 16: {
                    flags |= 0x10;
                    break;
                }
                case 24: {
                    flags |= 0x18;
                    break;
                }
                case 32: {
                    flags |= 0x20;
                    break;
                }
                default: {
                    flags |= 0;
                }
            }
        }
        if ((style & 0x4000000) != 0) {
            flags |= 0x2000;
        }
        this.handle = OS.ImageList_Create(width, height, flags, 16, 16);
        this.images = new Image[4];
    }

    public int add(Image image) {
        int count = OS.ImageList_GetImageCount(this.handle);
        int index = 0;
        while (index < count) {
            if (this.images[index] != null && this.images[index].isDisposed()) {
                this.images[index] = null;
            }
            if (this.images[index] == null) break;
            ++index;
        }
        if (count == 0) {
            Rectangle rect = image.getBounds();
            OS.ImageList_SetIconSize(this.handle, rect.width, rect.height);
        }
        this.set(index, image, count);
        if (index == this.images.length) {
            Image[] newImages = new Image[this.images.length + 4];
            System.arraycopy(this.images, 0, newImages, 0, this.images.length);
            this.images = newImages;
        }
        this.images[index] = image;
        return index;
    }

    public int addRef() {
        return ++this.refCount;
    }

    int copyBitmap(int hImage, int width, int height) {
        int hBitmap;
        BITMAP bm = new BITMAP();
        OS.GetObject(hImage, BITMAP.sizeof, bm);
        int hDC = OS.GetDC(0);
        int hdc1 = OS.CreateCompatibleDC(hDC);
        OS.SelectObject(hdc1, hImage);
        int hdc2 = OS.CreateCompatibleDC(hDC);
        if (bm.bmBitsPixel == 32 && OS.COMCTL32_MAJOR >= 6) {
            BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
            bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
            bmiHeader.biWidth = width;
            bmiHeader.biHeight = -height;
            bmiHeader.biPlanes = 1;
            bmiHeader.biBitCount = (short)24;
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
            hBitmap = OS.CreateDIBSection(0, bmi, 0, pBits, 0, 0);
        } else {
            hBitmap = OS.CreateCompatibleBitmap(hDC, width, height);
        }
        OS.SelectObject(hdc2, hBitmap);
        if (width != bm.bmWidth || height != bm.bmHeight) {
            if (!OS.IsWinCE) {
                OS.SetStretchBltMode(hdc2, 3);
            }
            OS.StretchBlt(hdc2, 0, 0, width, height, hdc1, 0, 0, bm.bmWidth, bm.bmHeight, 0xCC0020);
        } else {
            OS.BitBlt(hdc2, 0, 0, width, height, hdc1, 0, 0, 0xCC0020);
        }
        OS.DeleteDC(hdc1);
        OS.DeleteDC(hdc2);
        OS.ReleaseDC(0, hDC);
        return hBitmap;
    }

    int copyIcon(int hImage, int width, int height) {
        int hIcon;
        if (OS.IsWinCE) {
            SWT.error(20);
        }
        return (hIcon = OS.CopyImage(hImage, 1, width, height, 0)) != 0 ? hIcon : hImage;
    }

    int copyWithAlpha(int hBitmap, int background, byte[] alphaData, int destWidth, int destHeight) {
        BITMAP bm = new BITMAP();
        OS.GetObject(hBitmap, BITMAP.sizeof, bm);
        int srcWidth = bm.bmWidth;
        int srcHeight = bm.bmHeight;
        int hdc = OS.GetDC(0);
        int srcHdc = OS.CreateCompatibleDC(hdc);
        int oldSrcBitmap = OS.SelectObject(srcHdc, hBitmap);
        int memHdc = OS.CreateCompatibleDC(hdc);
        BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
        bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
        bmiHeader.biWidth = srcWidth;
        bmiHeader.biHeight = -srcHeight;
        bmiHeader.biPlanes = 1;
        bmiHeader.biBitCount = (short)32;
        bmiHeader.biCompression = 0;
        byte[] bmi = new byte[BITMAPINFOHEADER.sizeof];
        OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
        int[] pBits = new int[1];
        int memDib = OS.CreateDIBSection(0, bmi, 0, pBits, 0, 0);
        if (memDib == 0) {
            SWT.error(2);
        }
        int oldMemBitmap = OS.SelectObject(memHdc, memDib);
        BITMAP dibBM = new BITMAP();
        OS.GetObject(memDib, BITMAP.sizeof, dibBM);
        int sizeInBytes = dibBM.bmWidthBytes * dibBM.bmHeight;
        OS.BitBlt(memHdc, 0, 0, srcWidth, srcHeight, srcHdc, 0, 0, 0xCC0020);
        byte[] srcData = new byte[sizeInBytes];
        OS.MoveMemory(srcData, dibBM.bmBits, sizeInBytes);
        if (alphaData != null) {
            int spinc = dibBM.bmWidthBytes - srcWidth * 4;
            int ap = 0;
            int sp = 3;
            int y = 0;
            while (y < srcHeight) {
                int x = 0;
                while (x < srcWidth) {
                    srcData[sp] = alphaData[ap++];
                    sp += 4;
                    ++x;
                }
                sp += spinc;
                ++y;
            }
        } else {
            byte transRed = (byte)(background & 0xFF);
            byte transGreen = (byte)(background >> 8 & 0xFF);
            byte transBlue = (byte)(background >> 16 & 0xFF);
            int spinc = dibBM.bmWidthBytes - srcWidth * 4;
            int sp = 3;
            int y = 0;
            while (y < srcHeight) {
                int x = 0;
                while (x < srcWidth) {
                    srcData[sp] = srcData[sp - 1] == transRed && srcData[sp - 2] == transGreen && srcData[sp - 3] == transBlue ? 0 : -1;
                    sp += 4;
                    ++x;
                }
                sp += spinc;
                ++y;
            }
        }
        OS.MoveMemory(dibBM.bmBits, srcData, sizeInBytes);
        if (srcWidth != destWidth || srcHeight != destHeight) {
            BITMAPINFOHEADER bmiHeader2 = new BITMAPINFOHEADER();
            bmiHeader2.biSize = BITMAPINFOHEADER.sizeof;
            bmiHeader2.biWidth = destWidth;
            bmiHeader2.biHeight = -destHeight;
            bmiHeader2.biPlanes = 1;
            bmiHeader2.biBitCount = (short)32;
            bmiHeader2.biCompression = 0;
            byte[] bmi2 = new byte[BITMAPINFOHEADER.sizeof];
            OS.MoveMemory(bmi2, bmiHeader2, BITMAPINFOHEADER.sizeof);
            int[] pBits2 = new int[1];
            int memDib2 = OS.CreateDIBSection(0, bmi2, 0, pBits2, 0, 0);
            int memHdc2 = OS.CreateCompatibleDC(hdc);
            int oldMemBitmap2 = OS.SelectObject(memHdc2, memDib2);
            if (!OS.IsWinCE) {
                OS.SetStretchBltMode(memHdc2, 3);
            }
            OS.StretchBlt(memHdc2, 0, 0, destWidth, destHeight, memHdc, 0, 0, srcWidth, srcHeight, 0xCC0020);
            OS.SelectObject(memHdc2, oldMemBitmap2);
            OS.DeleteDC(memHdc2);
            OS.SelectObject(memHdc, oldMemBitmap);
            OS.DeleteDC(memHdc);
            OS.DeleteObject(memDib);
            memDib = memDib2;
        } else {
            OS.SelectObject(memHdc, oldMemBitmap);
            OS.DeleteDC(memHdc);
        }
        OS.SelectObject(srcHdc, oldSrcBitmap);
        OS.DeleteDC(srcHdc);
        OS.ReleaseDC(0, hdc);
        return memDib;
    }

    int createMaskFromAlpha(ImageData data, int destWidth, int destHeight) {
        int srcWidth = data.width;
        int srcHeight = data.height;
        ImageData mask = ImageData.internal_new(srcWidth, srcHeight, 1, new PaletteData(new RGB[]{new RGB(0, 0, 0), new RGB(255, 255, 255)}), 2, null, 1, null, null, -1, -1, -1, 0, 0, 0, 0);
        int ap = 0;
        int y = 0;
        while (y < mask.height) {
            int x = 0;
            while (x < mask.width) {
                mask.setPixel(x, y, (data.alphaData[ap++] & 0xFF) <= 127 ? 1 : 0);
                ++x;
            }
            ++y;
        }
        int hMask = OS.CreateBitmap(srcWidth, srcHeight, 1, 1, mask.data);
        if (srcWidth != destWidth || srcHeight != destHeight) {
            int hdc = OS.GetDC(0);
            int hdc1 = OS.CreateCompatibleDC(hdc);
            OS.SelectObject(hdc1, hMask);
            int hdc2 = OS.CreateCompatibleDC(hdc);
            int hMask2 = OS.CreateBitmap(destWidth, destHeight, 1, 1, null);
            OS.SelectObject(hdc2, hMask2);
            if (!OS.IsWinCE) {
                OS.SetStretchBltMode(hdc2, 3);
            }
            OS.StretchBlt(hdc2, 0, 0, destWidth, destHeight, hdc1, 0, 0, srcWidth, srcHeight, 0xCC0020);
            OS.DeleteDC(hdc1);
            OS.DeleteDC(hdc2);
            OS.ReleaseDC(0, hdc);
            OS.DeleteObject(hMask);
            hMask = hMask2;
        }
        return hMask;
    }

    int createMask(int hBitmap, int destWidth, int destHeight, int background, int transparentPixel) {
        BITMAP bm = new BITMAP();
        OS.GetObject(hBitmap, BITMAP.sizeof, bm);
        int srcWidth = bm.bmWidth;
        int srcHeight = bm.bmHeight;
        int hMask = OS.CreateBitmap(destWidth, destHeight, 1, 1, null);
        int hDC = OS.GetDC(0);
        int hdc1 = OS.CreateCompatibleDC(hDC);
        if (background != -1) {
            OS.SelectObject(hdc1, hBitmap);
            boolean isDib = bm.bmBits != 0;
            byte[] originalColors = null;
            if (!OS.IsWinCE && transparentPixel != -1 && isDib && bm.bmBitsPixel <= 8) {
                int maxColors = 1 << bm.bmBitsPixel;
                byte[] oldColors = new byte[maxColors * 4];
                OS.GetDIBColorTable(hdc1, 0, maxColors, oldColors);
                int offset = transparentPixel * 4;
                byte[] newColors = new byte[oldColors.length];
                newColors[offset] = -1;
                newColors[offset + 1] = -1;
                newColors[offset + 2] = -1;
                OS.SetDIBColorTable(hdc1, 0, maxColors, newColors);
                originalColors = oldColors;
                OS.SetBkColor(hdc1, 0xFFFFFF);
            } else {
                OS.SetBkColor(hdc1, background);
            }
            int hdc2 = OS.CreateCompatibleDC(hDC);
            OS.SelectObject(hdc2, hMask);
            if (destWidth != srcWidth || destHeight != srcHeight) {
                if (!OS.IsWinCE) {
                    OS.SetStretchBltMode(hdc2, 3);
                }
                OS.StretchBlt(hdc2, 0, 0, destWidth, destHeight, hdc1, 0, 0, srcWidth, srcHeight, 0xCC0020);
            } else {
                OS.BitBlt(hdc2, 0, 0, destWidth, destHeight, hdc1, 0, 0, 0xCC0020);
            }
            OS.DeleteDC(hdc2);
            if (originalColors != null) {
                OS.SetDIBColorTable(hdc1, 0, 1 << bm.bmBitsPixel, originalColors);
            }
        } else {
            int hOldBitmap = OS.SelectObject(hdc1, hMask);
            OS.PatBlt(hdc1, 0, 0, destWidth, destHeight, 66);
            OS.SelectObject(hdc1, hOldBitmap);
        }
        OS.ReleaseDC(0, hDC);
        OS.DeleteDC(hdc1);
        return hMask;
    }

    public void dispose() {
        if (this.handle != 0) {
            OS.ImageList_Destroy(this.handle);
        }
        this.handle = 0;
        this.images = null;
    }

    public Image get(int index) {
        return this.images[index];
    }

    public int getStyle() {
        return this.style;
    }

    public int getHandle() {
        return this.handle;
    }

    public Point getImageSize() {
        int[] cx = new int[1];
        int[] cy = new int[1];
        OS.ImageList_GetIconSize(this.handle, cx, cy);
        return new Point(cx[0], cy[0]);
    }

    public int indexOf(Image image) {
        int count = OS.ImageList_GetImageCount(this.handle);
        int i = 0;
        while (i < count) {
            if (this.images[i] != null) {
                if (this.images[i].isDisposed()) {
                    this.images[i] = null;
                }
                if (this.images[i] != null && this.images[i].equals(image)) {
                    return i;
                }
            }
            ++i;
        }
        return -1;
    }

    public void put(int index, Image image) {
        int count = OS.ImageList_GetImageCount(this.handle);
        if (index < 0 || index >= count) {
            return;
        }
        if (image != null) {
            this.set(index, image, count);
        }
        this.images[index] = image;
    }

    public void remove(int index) {
        int count = OS.ImageList_GetImageCount(this.handle);
        if (index < 0 || index >= count) {
            return;
        }
        OS.ImageList_Remove(this.handle, index);
        System.arraycopy(this.images, index + 1, this.images, index, --count - index);
        this.images[index] = null;
    }

    public int removeRef() {
        return --this.refCount;
    }

    void set(int index, Image image, int count) {
        int hImage = image.handle;
        int[] cx = new int[1];
        int[] cy = new int[1];
        OS.ImageList_GetIconSize(this.handle, cx, cy);
        switch (image.type) {
            case 0: {
                int hBitmap = 0;
                int hMask = 0;
                ImageData data = image.getImageData();
                switch (data.getTransparencyType()) {
                    case 1: {
                        if (OS.COMCTL32_MAJOR >= 6) {
                            hBitmap = this.copyWithAlpha(hImage, -1, data.alphaData, cx[0], cy[0]);
                            break;
                        }
                        hBitmap = this.copyBitmap(hImage, cx[0], cy[0]);
                        hMask = this.createMaskFromAlpha(data, cx[0], cy[0]);
                        break;
                    }
                    case 4: {
                        int background = -1;
                        Color color = image.getBackground();
                        if (color != null) {
                            background = color.handle;
                        }
                        hBitmap = this.copyBitmap(hImage, cx[0], cy[0]);
                        hMask = this.createMask(hImage, cx[0], cy[0], background, data.transparentPixel);
                        break;
                    }
                    default: {
                        hBitmap = this.copyBitmap(hImage, cx[0], cy[0]);
                        if (index == count) break;
                        hMask = this.createMask(hImage, cx[0], cy[0], -1, -1);
                    }
                }
                if (index == count) {
                    OS.ImageList_Add(this.handle, hBitmap, hMask);
                } else {
                    OS.ImageList_Replace(this.handle, index, hBitmap, hMask);
                }
                if (hMask != 0) {
                    OS.DeleteObject(hMask);
                }
                if (hBitmap == hImage) break;
                OS.DeleteObject(hBitmap);
                break;
            }
            case 1: {
                if (OS.IsWinCE) {
                    OS.ImageList_ReplaceIcon(this.handle, index == count ? -1 : index, hImage);
                    break;
                }
                int hIcon = this.copyIcon(hImage, cx[0], cy[0]);
                OS.ImageList_ReplaceIcon(this.handle, index == count ? -1 : index, hIcon);
                OS.DestroyIcon(hIcon);
            }
        }
    }

    public int size() {
        int result = 0;
        int count = OS.ImageList_GetImageCount(this.handle);
        int i = 0;
        while (i < count) {
            if (this.images[i] != null) {
                if (this.images[i].isDisposed()) {
                    this.images[i] = null;
                }
                if (this.images[i] != null) {
                    ++result;
                }
            }
            ++i;
        }
        return result;
    }
}

