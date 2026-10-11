/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.SWT;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.IDataObject;
import org.eclipse.swt.internal.ole.win32.STGMEDIUM;
import org.eclipse.swt.internal.win32.BITMAPINFOHEADER;
import org.eclipse.swt.internal.win32.DIBSECTION;
import org.eclipse.swt.internal.win32.OS;

public class ImageTransfer
extends ByteArrayTransfer {
    private static ImageTransfer _instance = new ImageTransfer();
    private static final String CF_DIB = "CF_DIB";
    private static final int CF_DIBID = 8;

    private ImageTransfer() {
    }

    public static ImageTransfer getInstance() {
        return _instance;
    }

    public void javaToNative(Object object, TransferData transferData) {
        ImageData imgData;
        if (!this.checkImage(object) || !this.isSupportedType(transferData)) {
            DND.error(2003);
        }
        if ((imgData = (ImageData)object) == null) {
            SWT.error(4);
        }
        int imageSize = imgData.data.length;
        int imageHeight = imgData.height;
        int bytesPerLine = imgData.bytesPerLine;
        BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
        bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
        bmiHeader.biSizeImage = imageSize;
        bmiHeader.biWidth = imgData.width;
        bmiHeader.biHeight = imageHeight;
        bmiHeader.biPlanes = 1;
        bmiHeader.biBitCount = (short)imgData.depth;
        bmiHeader.biCompression = 0;
        int colorSize = 0;
        if (bmiHeader.biBitCount <= 8) {
            colorSize += (1 << bmiHeader.biBitCount) * 4;
        }
        byte[] bmi = new byte[BITMAPINFOHEADER.sizeof + colorSize];
        OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
        RGB[] rgbs = imgData.palette.getRGBs();
        if (rgbs != null && colorSize > 0) {
            int offset = BITMAPINFOHEADER.sizeof;
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
        int newPtr = OS.GlobalAlloc(64, BITMAPINFOHEADER.sizeof + colorSize + imageSize);
        OS.MoveMemory(newPtr, bmi, bmi.length);
        int pBitDest = newPtr + BITMAPINFOHEADER.sizeof + colorSize;
        if (imageHeight <= 0) {
            OS.MoveMemory(pBitDest, imgData.data, imageSize);
        } else {
            int offset = 0;
            pBitDest += bytesPerLine * (imageHeight - 1);
            byte[] scanline = new byte[bytesPerLine];
            int i = 0;
            while (i < imageHeight) {
                System.arraycopy(imgData.data, offset, scanline, 0, bytesPerLine);
                OS.MoveMemory(pBitDest, scanline, bytesPerLine);
                offset += bytesPerLine;
                pBitDest -= bytesPerLine;
                ++i;
            }
        }
        transferData.stgmedium = new STGMEDIUM();
        transferData.stgmedium.tymed = 1;
        transferData.stgmedium.unionField = newPtr;
        transferData.stgmedium.pUnkForRelease = 0;
        transferData.result = 0;
    }

    public Object nativeToJava(TransferData transferData) {
        if (!this.isSupportedType(transferData) || transferData.pIDataObject == 0) {
            return null;
        }
        IDataObject dataObject = new IDataObject(transferData.pIDataObject);
        dataObject.AddRef();
        FORMATETC formatetc = new FORMATETC();
        formatetc.cfFormat = 8;
        formatetc.ptd = 0;
        formatetc.dwAspect = 1;
        formatetc.lindex = -1;
        formatetc.tymed = 1;
        STGMEDIUM stgmedium = new STGMEDIUM();
        stgmedium.tymed = 1;
        transferData.result = this.getData(dataObject, formatetc, stgmedium);
        if (transferData.result != 0) {
            return null;
        }
        int hMem = stgmedium.unionField;
        dataObject.Release();
        try {
            ImageData imageData;
            int ptr = OS.GlobalLock(hMem);
            if (ptr == 0) {
                return null;
            }
            try {
                BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
                OS.MoveMemory(bmiHeader, ptr, BITMAPINFOHEADER.sizeof);
                int[] pBits = new int[1];
                int memDib = OS.CreateDIBSection(0, ptr, 0, pBits, 0, 0);
                if (memDib == 0) {
                    SWT.error(2);
                }
                int bits = ptr + bmiHeader.biSize;
                if (bmiHeader.biBitCount <= 8) {
                    bits += (bmiHeader.biClrUsed == 0 ? 1 << bmiHeader.biBitCount : bmiHeader.biClrUsed) * 4;
                } else if (bmiHeader.biCompression == 3) {
                    bits += 12;
                }
                if (bmiHeader.biHeight < 0) {
                    OS.MoveMemory(pBits[0], bits, bmiHeader.biSizeImage);
                } else {
                    DIBSECTION dib = new DIBSECTION();
                    OS.GetObject(memDib, DIBSECTION.sizeof, dib);
                    int biHeight = dib.biHeight;
                    int scanline = dib.biSizeImage / biHeight;
                    int pDestBits = pBits[0];
                    int pSourceBits = bits + scanline * (biHeight - 1);
                    int i = 0;
                    while (i < biHeight) {
                        OS.MoveMemory(pDestBits, pSourceBits, scanline);
                        pDestBits += scanline;
                        pSourceBits -= scanline;
                        ++i;
                    }
                }
                Image image = Image.win32_new(null, 0, memDib);
                ImageData data = image.getImageData();
                OS.DeleteObject(memDib);
                image.dispose();
                imageData = data;
            }
            catch (Throwable throwable) {
                OS.GlobalUnlock(hMem);
                throw throwable;
            }
            OS.GlobalUnlock(hMem);
            return imageData;
        }
        finally {
            OS.GlobalFree(hMem);
        }
    }

    protected int[] getTypeIds() {
        return new int[]{8};
    }

    protected String[] getTypeNames() {
        return new String[]{CF_DIB};
    }

    boolean checkImage(Object object) {
        return object != null && object instanceof ImageData;
    }

    protected boolean validate(Object object) {
        return this.checkImage(object);
    }
}

