/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.SWT;
import org.eclipse.swt.dnd.DragSourceEffect;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.BITMAP;
import org.eclipse.swt.internal.win32.BITMAPINFOHEADER;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SHDRAGIMAGE;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;

public class TreeDragSourceEffect
extends DragSourceEffect {
    Image dragSourceImage = null;

    public TreeDragSourceEffect(Tree tree) {
        super(tree);
    }

    public void dragFinished(DragSourceEvent event) {
        if (this.dragSourceImage != null) {
            this.dragSourceImage.dispose();
        }
        this.dragSourceImage = null;
    }

    public void dragStart(DragSourceEvent event) {
        event.image = this.getDragSourceImage(event);
    }

    Image getDragSourceImage(DragSourceEvent event) {
        if (this.dragSourceImage != null) {
            this.dragSourceImage.dispose();
        }
        this.dragSourceImage = null;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
            SHDRAGIMAGE shdi = new SHDRAGIMAGE();
            int DI_GETDRAGIMAGE = OS.RegisterWindowMessage(new TCHAR(0, "ShellGetDragImage", true));
            if (OS.SendMessage(this.control.handle, DI_GETDRAGIMAGE, 0, shdi) != 0) {
                event.offsetX = (this.control.getStyle() & 0x8000000) != 0 ? shdi.sizeDragImage.cx - shdi.ptOffset.x : shdi.ptOffset.x;
                event.offsetY = shdi.ptOffset.y;
                int hImage = shdi.hbmpDragImage;
                if (hImage != 0) {
                    BITMAP bm = new BITMAP();
                    OS.GetObject(hImage, BITMAP.sizeof, bm);
                    int srcWidth = bm.bmWidth;
                    int srcHeight = bm.bmHeight;
                    int hdc = OS.GetDC(0);
                    int srcHdc = OS.CreateCompatibleDC(hdc);
                    int oldSrcBitmap = OS.SelectObject(srcHdc, hImage);
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
                    PaletteData palette = new PaletteData(65280, 0xFF0000, -16777216);
                    ImageData data = new ImageData(srcWidth, srcHeight, bm.bmBitsPixel, palette, bm.bmWidthBytes, srcData);
                    if (shdi.crColorKey == -1) {
                        byte[] alphaData = new byte[srcWidth * srcHeight];
                        int spinc = dibBM.bmWidthBytes - srcWidth * 4;
                        int ap = 0;
                        int sp = 3;
                        int y = 0;
                        while (y < srcHeight) {
                            int x = 0;
                            while (x < srcWidth) {
                                alphaData[ap++] = srcData[sp];
                                sp += 4;
                                ++x;
                            }
                            sp += spinc;
                            ++y;
                        }
                        data.alphaData = alphaData;
                    } else {
                        data.transparentPixel = shdi.crColorKey << 8;
                    }
                    this.dragSourceImage = new Image((Device)this.control.getDisplay(), data);
                    OS.SelectObject(memHdc, oldMemBitmap);
                    OS.DeleteDC(memHdc);
                    OS.DeleteObject(memDib);
                    OS.SelectObject(srcHdc, oldSrcBitmap);
                    OS.DeleteDC(srcHdc);
                    OS.ReleaseDC(0, hdc);
                    OS.DeleteObject(hImage);
                    return this.dragSourceImage;
                }
            }
            return null;
        }
        Tree tree = (Tree)this.control;
        if (tree.isListening(40) || tree.isListening(42)) {
            return null;
        }
        TreeItem[] selection = tree.getSelection();
        if (selection.length == 0) {
            return null;
        }
        int treeImageList = OS.SendMessage(tree.handle, 4360, 0, 0);
        if (treeImageList != 0) {
            int count = Math.min(selection.length, 10);
            Rectangle bounds = selection[0].getBounds(0);
            int i = 1;
            while (i < count) {
                bounds = bounds.union(selection[i].getBounds(0));
                ++i;
            }
            int hDC = OS.GetDC(tree.handle);
            int hDC1 = OS.CreateCompatibleDC(hDC);
            int bitmap = OS.CreateCompatibleBitmap(hDC, bounds.width, bounds.height);
            int hOldBitmap = OS.SelectObject(hDC1, bitmap);
            RECT rect = new RECT();
            rect.right = bounds.width;
            rect.bottom = bounds.height;
            int hBrush = OS.GetStockObject(0);
            OS.FillRect(hDC1, rect, hBrush);
            int i2 = 0;
            while (i2 < count) {
                TreeItem selected = selection[i2];
                Rectangle cell = selected.getBounds(0);
                int imageList = OS.SendMessage(tree.handle, 4370, 0, selected.handle);
                OS.ImageList_Draw(imageList, 0, hDC1, cell.x - bounds.x, cell.y - bounds.y, 4);
                OS.ImageList_Destroy(imageList);
                ++i2;
            }
            OS.SelectObject(hDC1, hOldBitmap);
            OS.DeleteDC(hDC1);
            OS.ReleaseDC(tree.handle, hDC);
            Display display = tree.getDisplay();
            this.dragSourceImage = Image.win32_new(display, 0, bitmap);
            return this.dragSourceImage;
        }
        return null;
    }
}

