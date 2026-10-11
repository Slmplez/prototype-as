/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.win32.BITMAP;
import org.eclipse.swt.internal.win32.ICONINFO;
import org.eclipse.swt.internal.win32.OS;

public final class Cursor
extends Resource {
    public int handle;
    boolean isIcon;
    static final byte[] HAND_SOURCE;
    static final byte[] HAND_MASK;

    static {
        byte[] byArray = new byte[128];
        byArray[0] = -7;
        byArray[1] = -1;
        byArray[2] = -1;
        byArray[3] = -1;
        byArray[4] = -16;
        byArray[5] = -1;
        byArray[6] = -1;
        byArray[7] = -1;
        byArray[8] = -16;
        byArray[9] = -1;
        byArray[10] = -1;
        byArray[11] = -1;
        byArray[12] = -16;
        byArray[13] = -1;
        byArray[14] = -1;
        byArray[15] = -1;
        byArray[16] = -16;
        byArray[17] = 63;
        byArray[18] = -1;
        byArray[19] = -1;
        byArray[20] = -16;
        byArray[21] = 7;
        byArray[22] = -1;
        byArray[23] = -1;
        byArray[24] = -16;
        byArray[25] = 3;
        byArray[26] = -1;
        byArray[27] = -1;
        byArray[28] = -16;
        byArray[30] = -1;
        byArray[31] = -1;
        byArray[32] = 16;
        byArray[34] = 127;
        byArray[35] = -1;
        byArray[38] = 127;
        byArray[39] = -1;
        byArray[40] = -128;
        byArray[42] = 127;
        byArray[43] = -1;
        byArray[44] = -64;
        byArray[46] = 127;
        byArray[47] = -1;
        byArray[48] = -32;
        byArray[50] = 127;
        byArray[51] = -1;
        byArray[52] = -16;
        byArray[54] = 127;
        byArray[55] = -1;
        byArray[56] = -8;
        byArray[58] = -1;
        byArray[59] = -1;
        byArray[60] = -4;
        byArray[61] = 1;
        byArray[62] = -1;
        byArray[63] = -1;
        byArray[64] = -1;
        byArray[65] = -1;
        byArray[66] = -1;
        byArray[67] = -1;
        byArray[68] = -1;
        byArray[69] = -1;
        byArray[70] = -1;
        byArray[71] = -1;
        byArray[72] = -1;
        byArray[73] = -1;
        byArray[74] = -1;
        byArray[75] = -1;
        byArray[76] = -1;
        byArray[77] = -1;
        byArray[78] = -1;
        byArray[79] = -1;
        byArray[80] = -1;
        byArray[81] = -1;
        byArray[82] = -1;
        byArray[83] = -1;
        byArray[84] = -1;
        byArray[85] = -1;
        byArray[86] = -1;
        byArray[87] = -1;
        byArray[88] = -1;
        byArray[89] = -1;
        byArray[90] = -1;
        byArray[91] = -1;
        byArray[92] = -1;
        byArray[93] = -1;
        byArray[94] = -1;
        byArray[95] = -1;
        byArray[96] = -1;
        byArray[97] = -1;
        byArray[98] = -1;
        byArray[99] = -1;
        byArray[100] = -1;
        byArray[101] = -1;
        byArray[102] = -1;
        byArray[103] = -1;
        byArray[104] = -1;
        byArray[105] = -1;
        byArray[106] = -1;
        byArray[107] = -1;
        byArray[108] = -1;
        byArray[109] = -1;
        byArray[110] = -1;
        byArray[111] = -1;
        byArray[112] = -1;
        byArray[113] = -1;
        byArray[114] = -1;
        byArray[115] = -1;
        byArray[116] = -1;
        byArray[117] = -1;
        byArray[118] = -1;
        byArray[119] = -1;
        byArray[120] = -1;
        byArray[121] = -1;
        byArray[122] = -1;
        byArray[123] = -1;
        byArray[124] = -1;
        byArray[125] = -1;
        byArray[126] = -1;
        byArray[127] = -1;
        HAND_SOURCE = byArray;
        byte[] byArray2 = new byte[128];
        byArray2[4] = 6;
        byArray2[8] = 6;
        byArray2[12] = 6;
        byArray2[16] = 6;
        byArray2[20] = 6;
        byArray2[21] = -64;
        byArray2[24] = 6;
        byArray2[25] = -40;
        byArray2[28] = 6;
        byArray2[29] = -40;
        byArray2[32] = 7;
        byArray2[33] = -37;
        byArray2[36] = 103;
        byArray2[37] = -5;
        byArray2[40] = 63;
        byArray2[41] = -1;
        byArray2[44] = 31;
        byArray2[45] = -1;
        byArray2[48] = 15;
        byArray2[49] = -1;
        byArray2[52] = 7;
        byArray2[53] = -1;
        byArray2[56] = 3;
        byArray2[57] = -2;
        HAND_MASK = byArray2;
    }

    Cursor(Device device) {
        super(device);
    }

    public Cursor(Device device, int style) {
        super(device);
        int lpCursorName = 0;
        switch (style) {
            case 21: {
                lpCursorName = 32649;
                break;
            }
            case 0: {
                lpCursorName = 32512;
                break;
            }
            case 1: {
                lpCursorName = 32514;
                break;
            }
            case 2: {
                lpCursorName = 32515;
                break;
            }
            case 3: {
                lpCursorName = 32650;
                break;
            }
            case 4: {
                lpCursorName = 32651;
                break;
            }
            case 5: {
                lpCursorName = 32646;
                break;
            }
            case 6: {
                lpCursorName = 32643;
                break;
            }
            case 7: {
                lpCursorName = 32645;
                break;
            }
            case 8: {
                lpCursorName = 32642;
                break;
            }
            case 9: {
                lpCursorName = 32644;
                break;
            }
            case 10: {
                lpCursorName = 32645;
                break;
            }
            case 11: {
                lpCursorName = 32645;
                break;
            }
            case 12: {
                lpCursorName = 32644;
                break;
            }
            case 13: {
                lpCursorName = 32644;
                break;
            }
            case 14: {
                lpCursorName = 32643;
                break;
            }
            case 15: {
                lpCursorName = 32642;
                break;
            }
            case 16: {
                lpCursorName = 32643;
                break;
            }
            case 17: {
                lpCursorName = 32642;
                break;
            }
            case 18: {
                lpCursorName = 32516;
                break;
            }
            case 19: {
                lpCursorName = 32513;
                break;
            }
            case 20: {
                lpCursorName = 32648;
                break;
            }
            default: {
                SWT.error(5);
            }
        }
        this.handle = OS.LoadCursor(0, lpCursorName);
        if (this.handle == 0 && style == 21) {
            int width = OS.GetSystemMetrics(13);
            int height = OS.GetSystemMetrics(14);
            if (width == 32 && height == 32) {
                int hInst = OS.GetModuleHandle(null);
                if (OS.IsWinCE) {
                    SWT.error(20);
                }
                this.handle = OS.CreateCursor(hInst, 5, 0, 32, 32, HAND_SOURCE, HAND_MASK);
            }
        }
        if (this.handle == 0) {
            SWT.error(2);
        }
        this.init();
    }

    public Cursor(Device device, ImageData source, ImageData mask, int hotspotX, int hotspotY) {
        super(device);
        if (source == null) {
            SWT.error(4);
        }
        if (mask == null) {
            if (source.getTransparencyType() != 2) {
                SWT.error(4);
            }
            mask = source.getTransparencyMask();
        }
        if (mask.width != source.width || mask.height != source.height) {
            SWT.error(5);
        }
        if (hotspotX >= source.width || hotspotX < 0 || hotspotY >= source.height || hotspotY < 0) {
            SWT.error(5);
        }
        mask = ImageData.convertMask(mask);
        source = ImageData.convertMask(source);
        byte[] sourceData = ImageData.convertPad(source.data, source.width, source.height, source.depth, source.scanlinePad, 2);
        byte[] maskData = ImageData.convertPad(mask.data, mask.width, mask.height, mask.depth, mask.scanlinePad, 2);
        int hInst = OS.GetModuleHandle(null);
        if (OS.IsWinCE) {
            SWT.error(20);
        }
        this.handle = OS.CreateCursor(hInst, hotspotX, hotspotY, source.width, source.height, sourceData, maskData);
        if (this.handle == 0) {
            SWT.error(2);
        }
        this.init();
    }

    public Cursor(Device device, ImageData source, int hotspotX, int hotspotY) {
        super(device);
        if (source == null) {
            SWT.error(4);
        }
        if (hotspotX >= source.width || hotspotX < 0 || hotspotY >= source.height || hotspotY < 0) {
            SWT.error(5);
        }
        int hBitmap = 0;
        int hMask = 0;
        if (source.maskData == null && source.transparentPixel == -1 && (source.alpha != -1 || source.alphaData != null)) {
            PaletteData palette = source.palette;
            PaletteData newPalette = new PaletteData(65280, 0xFF0000, -16777216);
            ImageData img = new ImageData(source.width, source.height, 32, newPalette);
            if (palette.isDirect) {
                ImageData.blit(1, source.data, source.depth, source.bytesPerLine, source.getByteOrder(), 0, 0, source.width, source.height, palette.redMask, palette.greenMask, palette.blueMask, 255, null, 0, 0, 0, img.data, img.depth, img.bytesPerLine, img.getByteOrder(), 0, 0, img.width, img.height, newPalette.redMask, newPalette.greenMask, newPalette.blueMask, false, false);
            } else {
                RGB[] rgbs = palette.getRGBs();
                int length = rgbs.length;
                byte[] srcReds = new byte[length];
                byte[] srcGreens = new byte[length];
                byte[] srcBlues = new byte[length];
                int i = 0;
                while (i < rgbs.length) {
                    RGB rgb = rgbs[i];
                    if (rgb != null) {
                        srcReds[i] = (byte)rgb.red;
                        srcGreens[i] = (byte)rgb.green;
                        srcBlues[i] = (byte)rgb.blue;
                    }
                    ++i;
                }
                ImageData.blit(1, source.data, source.depth, source.bytesPerLine, source.getByteOrder(), 0, 0, source.width, source.height, srcReds, srcGreens, srcBlues, 255, null, 0, 0, 0, img.data, img.depth, img.bytesPerLine, img.getByteOrder(), 0, 0, img.width, img.height, newPalette.redMask, newPalette.greenMask, newPalette.blueMask, false, false);
            }
            hBitmap = Image.createDIB(source.width, source.height, 32);
            if (hBitmap == 0) {
                SWT.error(2);
            }
            BITMAP dibBM = new BITMAP();
            OS.GetObject(hBitmap, BITMAP.sizeof, dibBM);
            byte[] srcData = img.data;
            if (source.alpha != -1) {
                int i = 3;
                while (i < srcData.length) {
                    srcData[i] = (byte)source.alpha;
                    i += 4;
                }
            } else if (source.alphaData != null) {
                int sp = 3;
                int ap = 0;
                while (sp < srcData.length) {
                    srcData[sp] = source.alphaData[ap];
                    sp += 4;
                    ++ap;
                }
            }
            OS.MoveMemory(dibBM.bmBits, srcData, srcData.length);
            hMask = OS.CreateBitmap(source.width, source.height, 1, 1, new byte[((source.width + 7) / 8 + 3) / 4 * 4 * source.height]);
            if (hMask == 0) {
                SWT.error(2);
            }
        } else {
            ImageData mask = source.getTransparencyMask();
            int[] result = Image.init(this.device, null, source, mask);
            hBitmap = result[0];
            hMask = result[1];
        }
        ICONINFO info = new ICONINFO();
        info.fIcon = false;
        info.hbmColor = hBitmap;
        info.hbmMask = hMask;
        info.xHotspot = hotspotX;
        info.yHotspot = hotspotY;
        this.handle = OS.CreateIconIndirect(info);
        OS.DeleteObject(hBitmap);
        OS.DeleteObject(hMask);
        if (this.handle == 0) {
            SWT.error(2);
        }
        this.isIcon = true;
        this.init();
    }

    void destroy() {
        if (this.isIcon) {
            OS.DestroyIcon(this.handle);
        } else if (!OS.IsWinCE) {
            OS.DestroyCursor(this.handle);
        }
        this.handle = 0;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Cursor)) {
            return false;
        }
        Cursor cursor = (Cursor)object;
        return this.device == cursor.device && this.handle == cursor.handle;
    }

    public int hashCode() {
        return this.handle;
    }

    public boolean isDisposed() {
        return this.handle == 0;
    }

    public String toString() {
        if (this.isDisposed()) {
            return "Cursor {*DISPOSED*}";
        }
        return "Cursor {" + this.handle + "}";
    }

    public static Cursor win32_new(Device device, int handle) {
        Cursor cursor = new Cursor(device);
        cursor.handle = handle;
        return cursor;
    }
}

