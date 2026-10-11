/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.internal.image.JPEGAppn;
import org.eclipse.swt.internal.image.JPEGArithmeticConditioningTable;
import org.eclipse.swt.internal.image.JPEGComment;
import org.eclipse.swt.internal.image.JPEGDecoder;
import org.eclipse.swt.internal.image.JPEGEndOfImage;
import org.eclipse.swt.internal.image.JPEGFrameHeader;
import org.eclipse.swt.internal.image.JPEGHuffmanTable;
import org.eclipse.swt.internal.image.JPEGQuantizationTable;
import org.eclipse.swt.internal.image.JPEGRestartInterval;
import org.eclipse.swt.internal.image.JPEGScanHeader;
import org.eclipse.swt.internal.image.JPEGSegment;
import org.eclipse.swt.internal.image.JPEGStartOfImage;
import org.eclipse.swt.internal.image.LEDataInputStream;

public final class JPEGFileFormat
extends FileFormat {
    int restartInterval;
    JPEGFrameHeader frameHeader;
    int imageWidth;
    int imageHeight;
    int interleavedMcuCols;
    int interleavedMcuRows;
    int maxV;
    int maxH;
    boolean progressive;
    int samplePrecision;
    int nComponents;
    int[][] frameComponents;
    int[] componentIds;
    byte[][] imageComponents;
    int[] dataUnit;
    int[][][] dataUnits;
    int[] precedingDCs;
    JPEGScanHeader scanHeader;
    byte[] dataBuffer;
    int currentBitCount;
    int bufferCurrentPosition;
    int restartsToGo;
    int nextRestartNumber;
    JPEGHuffmanTable[] acHuffmanTables;
    JPEGHuffmanTable[] dcHuffmanTables;
    int[][] quantizationTables;
    int currentByte;
    int encoderQFactor = 75;
    int eobrun = 0;
    public static final int DCTSIZE = 8;
    public static final int DCTSIZESQR = 64;
    public static final int FIX_0_899976223 = 7373;
    public static final int FIX_1_961570560 = 16069;
    public static final int FIX_2_053119869 = 16819;
    public static final int FIX_0_298631336 = 2446;
    public static final int FIX_1_847759065 = 15137;
    public static final int FIX_1_175875602 = 9633;
    public static final int FIX_3_072711026 = 25172;
    public static final int FIX_0_765366865 = 6270;
    public static final int FIX_2_562915447 = 20995;
    public static final int FIX_0_541196100 = 4433;
    public static final int FIX_0_390180644 = 3196;
    public static final int FIX_1_501321110 = 12299;
    public static final int APP0 = 65504;
    public static final int APP15 = 65519;
    public static final int COM = 65534;
    public static final int DAC = 65484;
    public static final int DHP = 65502;
    public static final int DHT = 65476;
    public static final int DNL = 65500;
    public static final int DRI = 65501;
    public static final int DQT = 65499;
    public static final int EOI = 65497;
    public static final int EXP = 65503;
    public static final int JPG = 65480;
    public static final int JPG0 = 65520;
    public static final int JPG13 = 65533;
    public static final int RST0 = 65488;
    public static final int RST1 = 65489;
    public static final int RST2 = 65490;
    public static final int RST3 = 65491;
    public static final int RST4 = 65492;
    public static final int RST5 = 65493;
    public static final int RST6 = 65494;
    public static final int RST7 = 65495;
    public static final int SOF0 = 65472;
    public static final int SOF1 = 65473;
    public static final int SOF2 = 65474;
    public static final int SOF3 = 65475;
    public static final int SOF5 = 65477;
    public static final int SOF6 = 65478;
    public static final int SOF7 = 65479;
    public static final int SOF9 = 65481;
    public static final int SOF10 = 65482;
    public static final int SOF11 = 65483;
    public static final int SOF13 = 65485;
    public static final int SOF14 = 65486;
    public static final int SOF15 = 65487;
    public static final int SOI = 65496;
    public static final int SOS = 65498;
    public static final int TEM = 65281;
    public static final int TQI = 0;
    public static final int HI = 1;
    public static final int VI = 2;
    public static final int CW = 3;
    public static final int CH = 4;
    public static final int DC = 0;
    public static final int AC = 1;
    public static final int ID_Y = 0;
    public static final int ID_CB = 1;
    public static final int ID_CR = 2;
    public static final RGB[] RGB16 = new RGB[]{new RGB(0, 0, 0), new RGB(128, 0, 0), new RGB(0, 128, 0), new RGB(128, 128, 0), new RGB(0, 0, 128), new RGB(128, 0, 128), new RGB(0, 128, 128), new RGB(192, 192, 192), new RGB(128, 128, 128), new RGB(255, 0, 0), new RGB(0, 255, 0), new RGB(255, 255, 0), new RGB(0, 0, 255), new RGB(255, 0, 255), new RGB(0, 255, 255), new RGB(255, 255, 255)};
    public static final int[] ExtendTest;
    public static final int[] ExtendOffset;
    public static final int[] ZigZag8x8;
    public static final int[] CrRTable;
    public static final int[] CbBTable;
    public static final int[] CrGTable;
    public static final int[] CbGTable;
    public static final int[] RYTable;
    public static final int[] GYTable;
    public static final int[] BYTable;
    public static final int[] RCbTable;
    public static final int[] GCbTable;
    public static final int[] BCbTable;
    public static final int[] RCrTable;
    public static final int[] GCrTable;
    public static final int[] BCrTable;
    public static final int[] NBitsTable;

    static {
        int[] nArray = new int[20];
        nArray[1] = 1;
        nArray[2] = 2;
        nArray[3] = 4;
        nArray[4] = 8;
        nArray[5] = 16;
        nArray[6] = 32;
        nArray[7] = 64;
        nArray[8] = 128;
        nArray[9] = 256;
        nArray[10] = 512;
        nArray[11] = 1024;
        nArray[12] = 2048;
        nArray[13] = 4096;
        nArray[14] = 8192;
        nArray[15] = 16384;
        nArray[16] = 32768;
        nArray[17] = 65536;
        nArray[18] = 131072;
        nArray[19] = 262144;
        ExtendTest = nArray;
        int[] nArray2 = new int[19];
        nArray2[1] = -1;
        nArray2[2] = -3;
        nArray2[3] = -7;
        nArray2[4] = -15;
        nArray2[5] = -31;
        nArray2[6] = -63;
        nArray2[7] = -127;
        nArray2[8] = -255;
        nArray2[9] = -511;
        nArray2[10] = -1023;
        nArray2[11] = -2047;
        nArray2[12] = -4095;
        nArray2[13] = -8191;
        nArray2[14] = -16383;
        nArray2[15] = -32767;
        nArray2[16] = -65535;
        nArray2[17] = -131071;
        nArray2[18] = -262143;
        ExtendOffset = nArray2;
        int[] nArray3 = new int[64];
        nArray3[1] = 1;
        nArray3[2] = 8;
        nArray3[3] = 16;
        nArray3[4] = 9;
        nArray3[5] = 2;
        nArray3[6] = 3;
        nArray3[7] = 10;
        nArray3[8] = 17;
        nArray3[9] = 24;
        nArray3[10] = 32;
        nArray3[11] = 25;
        nArray3[12] = 18;
        nArray3[13] = 11;
        nArray3[14] = 4;
        nArray3[15] = 5;
        nArray3[16] = 12;
        nArray3[17] = 19;
        nArray3[18] = 26;
        nArray3[19] = 33;
        nArray3[20] = 40;
        nArray3[21] = 48;
        nArray3[22] = 41;
        nArray3[23] = 34;
        nArray3[24] = 27;
        nArray3[25] = 20;
        nArray3[26] = 13;
        nArray3[27] = 6;
        nArray3[28] = 7;
        nArray3[29] = 14;
        nArray3[30] = 21;
        nArray3[31] = 28;
        nArray3[32] = 35;
        nArray3[33] = 42;
        nArray3[34] = 49;
        nArray3[35] = 56;
        nArray3[36] = 57;
        nArray3[37] = 50;
        nArray3[38] = 43;
        nArray3[39] = 36;
        nArray3[40] = 29;
        nArray3[41] = 22;
        nArray3[42] = 15;
        nArray3[43] = 23;
        nArray3[44] = 30;
        nArray3[45] = 37;
        nArray3[46] = 44;
        nArray3[47] = 51;
        nArray3[48] = 58;
        nArray3[49] = 59;
        nArray3[50] = 52;
        nArray3[51] = 45;
        nArray3[52] = 38;
        nArray3[53] = 31;
        nArray3[54] = 39;
        nArray3[55] = 46;
        nArray3[56] = 53;
        nArray3[57] = 60;
        nArray3[58] = 61;
        nArray3[59] = 54;
        nArray3[60] = 47;
        nArray3[61] = 55;
        nArray3[62] = 62;
        nArray3[63] = 63;
        ZigZag8x8 = nArray3;
        int[] rYTable = new int[256];
        int[] gYTable = new int[256];
        int[] bYTable = new int[256];
        int[] rCbTable = new int[256];
        int[] gCbTable = new int[256];
        int[] bCbTable = new int[256];
        int[] gCrTable = new int[256];
        int[] bCrTable = new int[256];
        int i = 0;
        while (i < 256) {
            rYTable[i] = i * 19595;
            gYTable[i] = i * 38470;
            bYTable[i] = i * 7471 + 32768;
            rCbTable[i] = i * -11059;
            gCbTable[i] = i * -21709;
            bCbTable[i] = i * 32768 + 0x800000;
            gCrTable[i] = i * -27439;
            bCrTable[i] = i * -5329;
            ++i;
        }
        RYTable = rYTable;
        GYTable = gYTable;
        BYTable = bYTable;
        RCbTable = rCbTable;
        GCbTable = gCbTable;
        BCbTable = bCbTable;
        RCrTable = bCbTable;
        GCrTable = gCrTable;
        BCrTable = bCrTable;
        int[] crRTable = new int[256];
        int[] cbBTable = new int[256];
        int[] crGTable = new int[256];
        int[] cbGTable = new int[256];
        int i2 = 0;
        while (i2 < 256) {
            int x2 = 2 * i2 - 255;
            crRTable[i2] = 45941 * x2 + 32768 >> 16;
            cbBTable[i2] = 58065 * x2 + 32768 >> 16;
            crGTable[i2] = -23401 * x2;
            cbGTable[i2] = -11277 * x2 + 32768;
            ++i2;
        }
        CrRTable = crRTable;
        CbBTable = cbBTable;
        CrGTable = crGTable;
        CbGTable = cbGTable;
        int nBits = 1;
        int power2 = 2;
        int[] nBitsTable = new int[2048];
        nBitsTable[0] = 0;
        int i3 = 1;
        while (i3 < nBitsTable.length) {
            if (i3 >= power2) {
                power2 *= 2;
            }
            nBitsTable[i3] = ++nBits;
            ++i3;
        }
        NBitsTable = nBitsTable;
    }

    void compress(ImageData image, byte[] dataYComp, byte[] dataCbComp, byte[] dataCrComp) {
        int ih;
        int srcIndex;
        int iv;
        int sum;
        int xPos;
        int destRowIndex;
        int[] frameComponent;
        int srcWidth = image.width;
        int srcHeight = image.height;
        int vhFactor = this.maxV * this.maxH;
        this.imageComponents = new byte[this.nComponents][];
        int i = 0;
        while (i < this.nComponents) {
            frameComponent = this.frameComponents[this.componentIds[i]];
            this.imageComponents[i] = new byte[frameComponent[3] * frameComponent[4]];
            ++i;
        }
        frameComponent = this.frameComponents[this.componentIds[0]];
        int yPos = 0;
        while (yPos < srcHeight) {
            int srcOfs = yPos * srcWidth;
            int dstOfs = yPos * frameComponent[3];
            System.arraycopy(dataYComp, srcOfs, this.imageComponents[0], dstOfs, srcWidth);
            ++yPos;
        }
        frameComponent = this.frameComponents[this.componentIds[1]];
        yPos = 0;
        while (yPos < srcHeight / this.maxV) {
            destRowIndex = yPos * frameComponent[3];
            xPos = 0;
            while (xPos < srcWidth / this.maxH) {
                sum = 0;
                iv = 0;
                while (iv < this.maxV) {
                    srcIndex = (yPos * this.maxV + iv) * srcWidth + xPos * this.maxH;
                    ih = 0;
                    while (ih < this.maxH) {
                        sum += dataCbComp[srcIndex + ih] & 0xFF;
                        ++ih;
                    }
                    ++iv;
                }
                this.imageComponents[1][destRowIndex + xPos] = (byte)(sum / vhFactor);
                ++xPos;
            }
            ++yPos;
        }
        frameComponent = this.frameComponents[this.componentIds[2]];
        yPos = 0;
        while (yPos < srcHeight / this.maxV) {
            destRowIndex = yPos * frameComponent[3];
            xPos = 0;
            while (xPos < srcWidth / this.maxH) {
                sum = 0;
                iv = 0;
                while (iv < this.maxV) {
                    srcIndex = (yPos * this.maxV + iv) * srcWidth + xPos * this.maxH;
                    ih = 0;
                    while (ih < this.maxH) {
                        sum += dataCrComp[srcIndex + ih] & 0xFF;
                        ++ih;
                    }
                    ++iv;
                }
                this.imageComponents[2][destRowIndex + xPos] = (byte)(sum / vhFactor);
                ++xPos;
            }
            ++yPos;
        }
        int iComp = 0;
        while (iComp < this.nComponents) {
            int dstOfs;
            int yPos2;
            byte[] imageComponent = this.imageComponents[iComp];
            frameComponent = this.frameComponents[this.componentIds[iComp]];
            int hFactor = frameComponent[1];
            int vFactor = frameComponent[2];
            int componentWidth = frameComponent[3];
            int componentHeight = frameComponent[4];
            int compressedWidth = srcWidth / (this.maxH / hFactor);
            int compressedHeight = srcHeight / (this.maxV / vFactor);
            if (compressedWidth < componentWidth) {
                int delta = componentWidth - compressedWidth;
                yPos2 = 0;
                while (yPos2 < compressedHeight) {
                    dstOfs = (yPos2 + 1) * componentWidth - delta;
                    int dataValue = imageComponent[dstOfs > 0 ? dstOfs - 1 : 0] & 0xFF;
                    int i2 = 0;
                    while (i2 < delta) {
                        imageComponent[dstOfs + i2] = (byte)dataValue;
                        ++i2;
                    }
                    ++yPos2;
                }
            }
            if (compressedHeight < componentHeight) {
                int srcOfs = compressedHeight > 0 ? (compressedHeight - 1) * componentWidth : 1;
                yPos2 = compressedHeight > 0 ? compressedHeight : 1;
                while (yPos2 <= componentHeight) {
                    dstOfs = (yPos2 - 1) * componentWidth;
                    System.arraycopy(imageComponent, srcOfs, imageComponent, dstOfs, componentWidth);
                    ++yPos2;
                }
            }
            ++iComp;
        }
    }

    void convert4BitRGBToYCbCr(ImageData image) {
        RGB[] rgbs = image.getRGBs();
        int paletteSize = rgbs.length;
        byte[] yComp = new byte[paletteSize];
        byte[] cbComp = new byte[paletteSize];
        byte[] crComp = new byte[paletteSize];
        int srcWidth = image.width;
        int srcHeight = image.height;
        int i = 0;
        while (i < paletteSize) {
            RGB color = rgbs[i];
            int r = color.red;
            int g = color.green;
            int b = color.blue;
            int n = RYTable[r] + GYTable[g] + BYTable[b];
            yComp[i] = (byte)(n >> 16);
            if (n < 0 && (n & 0xFFFF) != 0) {
                int n2 = i;
                yComp[n2] = (byte)(yComp[n2] - 1);
            }
            n = RCbTable[r] + GCbTable[g] + BCbTable[b];
            cbComp[i] = (byte)(n >> 16);
            if (n < 0 && (n & 0xFFFF) != 0) {
                int n3 = i;
                cbComp[n3] = (byte)(cbComp[n3] - 1);
            }
            n = RCrTable[r] + GCrTable[g] + BCrTable[b];
            crComp[i] = (byte)(n >> 16);
            if (n < 0 && (n & 0xFFFF) != 0) {
                int n4 = i;
                crComp[n4] = (byte)(crComp[n4] - 1);
            }
            ++i;
        }
        int bSize = srcWidth * srcHeight;
        byte[] dataYComp = new byte[bSize];
        byte[] dataCbComp = new byte[bSize];
        byte[] dataCrComp = new byte[bSize];
        byte[] origData = image.data;
        int bytesPerLine = image.bytesPerLine;
        int maxScanlineByte = srcWidth >> 1;
        int yPos = 0;
        while (yPos < srcHeight) {
            int xPos = 0;
            while (xPos < maxScanlineByte) {
                int srcIndex = yPos * bytesPerLine + xPos;
                int dstIndex = yPos * srcWidth + xPos * 2;
                int value2 = origData[srcIndex] & 0xFF;
                int value1 = value2 >> 4;
                dataYComp[dstIndex] = yComp[value1];
                dataCbComp[dstIndex] = cbComp[value1];
                dataCrComp[dstIndex] = crComp[value1];
                dataYComp[dstIndex + 1] = yComp[value2 &= 0xF];
                dataCbComp[dstIndex + 1] = cbComp[value2];
                dataCrComp[dstIndex + 1] = crComp[value2];
                ++xPos;
            }
            ++yPos;
        }
        this.compress(image, dataYComp, dataCbComp, dataCrComp);
    }

    void convert8BitRGBToYCbCr(ImageData image) {
        RGB[] rgbs = image.getRGBs();
        int paletteSize = rgbs.length;
        byte[] yComp = new byte[paletteSize];
        byte[] cbComp = new byte[paletteSize];
        byte[] crComp = new byte[paletteSize];
        int srcWidth = image.width;
        int srcHeight = image.height;
        int i = 0;
        while (i < paletteSize) {
            RGB color = rgbs[i];
            int r = color.red;
            int g = color.green;
            int b = color.blue;
            int n = RYTable[r] + GYTable[g] + BYTable[b];
            yComp[i] = (byte)(n >> 16);
            if (n < 0 && (n & 0xFFFF) != 0) {
                int n2 = i;
                yComp[n2] = (byte)(yComp[n2] - 1);
            }
            n = RCbTable[r] + GCbTable[g] + BCbTable[b];
            cbComp[i] = (byte)(n >> 16);
            if (n < 0 && (n & 0xFFFF) != 0) {
                int n3 = i;
                cbComp[n3] = (byte)(cbComp[n3] - 1);
            }
            n = RCrTable[r] + GCrTable[g] + BCrTable[b];
            crComp[i] = (byte)(n >> 16);
            if (n < 0 && (n & 0xFFFF) != 0) {
                int n4 = i;
                crComp[n4] = (byte)(crComp[n4] - 1);
            }
            ++i;
        }
        int dstWidth = image.width;
        int dstHeight = srcHeight;
        int stride = srcWidth + 3 >> 2 << 2;
        int bSize = dstWidth * dstHeight;
        byte[] dataYComp = new byte[bSize];
        byte[] dataCbComp = new byte[bSize];
        byte[] dataCrComp = new byte[bSize];
        byte[] origData = image.data;
        int yPos = 0;
        while (yPos < srcHeight) {
            int srcRowIndex = yPos * stride;
            int dstRowIndex = yPos * dstWidth;
            int xPos = 0;
            while (xPos < srcWidth) {
                int value = origData[srcRowIndex + xPos] & 0xFF;
                int dstIndex = dstRowIndex + xPos;
                dataYComp[dstIndex] = yComp[value];
                dataCbComp[dstIndex] = cbComp[value];
                dataCrComp[dstIndex] = crComp[value];
                ++xPos;
            }
            ++yPos;
        }
        this.compress(image, dataYComp, dataCbComp, dataCrComp);
    }

    byte[] convertCMYKToRGB() {
        return new byte[0];
    }

    void convertImageToYCbCr(ImageData image) {
        switch (image.depth) {
            case 4: {
                this.convert4BitRGBToYCbCr(image);
                return;
            }
            case 8: {
                this.convert8BitRGBToYCbCr(image);
                return;
            }
            case 16: 
            case 24: 
            case 32: {
                this.convertMultiRGBToYCbCr(image);
                return;
            }
        }
        SWT.error(38);
    }

    void convertMultiRGBToYCbCr(ImageData image) {
        int srcWidth = image.width;
        int srcHeight = image.height;
        int bSize = srcWidth * srcHeight;
        byte[] dataYComp = new byte[bSize];
        byte[] dataCbComp = new byte[bSize];
        byte[] dataCrComp = new byte[bSize];
        PaletteData palette = image.palette;
        int[] buffer = new int[srcWidth];
        if (palette.isDirect) {
            int redMask = palette.redMask;
            int greenMask = palette.greenMask;
            int blueMask = palette.blueMask;
            int redShift = palette.redShift;
            int greenShift = palette.greenShift;
            int blueShift = palette.blueShift;
            int yPos = 0;
            while (yPos < srcHeight) {
                image.getPixels(0, yPos, srcWidth, buffer, 0);
                int dstRowIndex = yPos * srcWidth;
                int xPos = 0;
                while (xPos < srcWidth) {
                    int pixel = buffer[xPos];
                    int dstDataIndex = dstRowIndex + xPos;
                    int r = pixel & redMask;
                    r = redShift < 0 ? r >>> -redShift : r << redShift;
                    int g = pixel & greenMask;
                    g = greenShift < 0 ? g >>> -greenShift : g << greenShift;
                    int b = pixel & blueMask;
                    b = blueShift < 0 ? b >>> -blueShift : b << blueShift;
                    dataYComp[dstDataIndex] = (byte)(RYTable[r] + GYTable[g] + BYTable[b] >> 16);
                    dataCbComp[dstDataIndex] = (byte)(RCbTable[r] + GCbTable[g] + BCbTable[b] >> 16);
                    dataCrComp[dstDataIndex] = (byte)(RCrTable[r] + GCrTable[g] + BCrTable[b] >> 16);
                    ++xPos;
                }
                ++yPos;
            }
        } else {
            int yPos = 0;
            while (yPos < srcHeight) {
                image.getPixels(0, yPos, srcWidth, buffer, 0);
                int dstRowIndex = yPos * srcWidth;
                int xPos = 0;
                while (xPos < srcWidth) {
                    int pixel = buffer[xPos];
                    int dstDataIndex = dstRowIndex + xPos;
                    RGB rgb = palette.getRGB(pixel);
                    int r = rgb.red;
                    int g = rgb.green;
                    int b = rgb.blue;
                    dataYComp[dstDataIndex] = (byte)(RYTable[r] + GYTable[g] + BYTable[b] >> 16);
                    dataCbComp[dstDataIndex] = (byte)(RCbTable[r] + GCbTable[g] + BCbTable[b] >> 16);
                    dataCrComp[dstDataIndex] = (byte)(RCrTable[r] + GCrTable[g] + BCrTable[b] >> 16);
                    ++xPos;
                }
                ++yPos;
            }
        }
        this.compress(image, dataYComp, dataCbComp, dataCrComp);
    }

    byte[] convertYToRGB() {
        int compWidth = this.frameComponents[this.componentIds[0]][3];
        int bytesPerLine = ((this.imageWidth * 8 + 7) / 8 + 3) / 4 * 4;
        byte[] data = new byte[bytesPerLine * this.imageHeight];
        byte[] yComp = this.imageComponents[0];
        int destIndex = 0;
        int i = 0;
        while (i < this.imageHeight) {
            int srcIndex = i * compWidth;
            int j = 0;
            while (j < bytesPerLine) {
                int y = yComp[srcIndex] & 0xFF;
                if (y < 0) {
                    y = 0;
                } else if (y > 255) {
                    y = 255;
                }
                if (j >= this.imageWidth) {
                    y = 0;
                }
                data[destIndex] = (byte)y;
                ++srcIndex;
                ++destIndex;
                ++j;
            }
            ++i;
        }
        return data;
    }

    byte[] convertYCbCrToRGB() {
        int bSize = this.imageWidth * this.imageHeight * this.nComponents;
        byte[] rgbData = new byte[bSize];
        int destIndex = 0;
        this.expandImageComponents();
        byte[] yComp = this.imageComponents[0];
        byte[] cbComp = this.imageComponents[1];
        byte[] crComp = this.imageComponents[2];
        int compWidth = this.frameComponents[this.componentIds[0]][3];
        int v = 0;
        while (v < this.imageHeight) {
            int srcIndex = v * compWidth;
            int i = 0;
            while (i < this.imageWidth) {
                int y = yComp[srcIndex] & 0xFF;
                int cb = cbComp[srcIndex] & 0xFF;
                int cr = crComp[srcIndex] & 0xFF;
                int r = y + CrRTable[cr];
                int g = y + (CbGTable[cb] + CrGTable[cr] >> 16);
                int b = y + CbBTable[cb];
                if (r < 0) {
                    r = 0;
                } else if (r > 255) {
                    r = 255;
                }
                if (g < 0) {
                    g = 0;
                } else if (g > 255) {
                    g = 255;
                }
                if (b < 0) {
                    b = 0;
                } else if (b > 255) {
                    b = 255;
                }
                rgbData[destIndex] = (byte)b;
                rgbData[destIndex + 1] = (byte)g;
                rgbData[destIndex + 2] = (byte)r;
                destIndex += 3;
                ++srcIndex;
                ++i;
            }
            ++v;
        }
        return rgbData;
    }

    void decodeACCoefficients(int[] dataUnit, int iComp) {
        int[] sParams = this.scanHeader.componentParameters[this.componentIds[iComp]];
        JPEGHuffmanTable acTable = this.acHuffmanTables[sParams[1]];
        int k = 1;
        while (k < 64) {
            int rs = this.decodeUsingTable(acTable);
            int r = rs >> 4;
            int s = rs & 0xF;
            if (s == 0) {
                if (r != 15) break;
                k += 16;
                continue;
            }
            int bits = this.receive(s);
            dataUnit[JPEGFileFormat.ZigZag8x8[k += r]] = this.extendBy(bits, s);
            ++k;
        }
    }

    void decodeACFirstCoefficients(int[] dataUnit, int iComp, int start, int end, int approxBit) {
        if (this.eobrun > 0) {
            --this.eobrun;
            return;
        }
        int[] sParams = this.scanHeader.componentParameters[this.componentIds[iComp]];
        JPEGHuffmanTable acTable = this.acHuffmanTables[sParams[1]];
        int k = start;
        while (k <= end) {
            int rs = this.decodeUsingTable(acTable);
            int r = rs >> 4;
            int s = rs & 0xF;
            if (s == 0) {
                if (r == 15) {
                    k += 16;
                    continue;
                }
                this.eobrun = (1 << r) + this.receive(r) - 1;
                break;
            }
            int bits = this.receive(s);
            dataUnit[JPEGFileFormat.ZigZag8x8[k += r]] = this.extendBy(bits, s) << approxBit;
            ++k;
        }
    }

    void decodeACRefineCoefficients(int[] dataUnit, int iComp, int start, int end, int approxBit) {
        int[] sParams = this.scanHeader.componentParameters[this.componentIds[iComp]];
        JPEGHuffmanTable acTable = this.acHuffmanTables[sParams[1]];
        int k = start;
        while (k <= end) {
            if (this.eobrun > 0) {
                while (k <= end) {
                    int zzIndex = ZigZag8x8[k];
                    if (dataUnit[zzIndex] != 0) {
                        dataUnit[zzIndex] = this.refineAC(dataUnit[zzIndex], approxBit);
                    }
                    ++k;
                }
                --this.eobrun;
                continue;
            }
            int rs = this.decodeUsingTable(acTable);
            int r = rs >> 4;
            int s = rs & 0xF;
            if (s == 0) {
                if (r == 15) {
                    int zeros = 0;
                    while (zeros < 16 && k <= end) {
                        int zzIndex = ZigZag8x8[k];
                        if (dataUnit[zzIndex] != 0) {
                            dataUnit[zzIndex] = this.refineAC(dataUnit[zzIndex], approxBit);
                        } else {
                            ++zeros;
                        }
                        ++k;
                    }
                    continue;
                }
                this.eobrun = (1 << r) + this.receive(r);
                continue;
            }
            int bit = this.receive(s);
            int zeros = 0;
            int zzIndex = ZigZag8x8[k];
            while ((zeros < r || dataUnit[zzIndex] != 0) && k <= end) {
                if (dataUnit[zzIndex] != 0) {
                    dataUnit[zzIndex] = this.refineAC(dataUnit[zzIndex], approxBit);
                } else {
                    ++zeros;
                }
                zzIndex = ZigZag8x8[++k];
            }
            dataUnit[zzIndex] = bit != 0 ? 1 << approxBit : -1 << approxBit;
            ++k;
        }
    }

    int refineAC(int ac, int approxBit) {
        int bit;
        if (ac > 0) {
            int bit2 = this.nextBit();
            if (bit2 != 0) {
                ac += 1 << approxBit;
            }
        } else if (ac < 0 && (bit = this.nextBit()) != 0) {
            ac += -1 << approxBit;
        }
        return ac;
    }

    void decodeDCCoefficient(int[] dataUnit, int iComp, boolean first, int approxBit) {
        int[] sParams = this.scanHeader.componentParameters[this.componentIds[iComp]];
        JPEGHuffmanTable dcTable = this.dcHuffmanTables[sParams[0]];
        int lastDC = 0;
        if (this.progressive && !first) {
            int bit = this.nextBit();
            lastDC = dataUnit[0] + (bit << approxBit);
        } else {
            lastDC = this.precedingDCs[iComp];
            int nBits = this.decodeUsingTable(dcTable);
            if (nBits != 0) {
                int bits = this.receive(nBits);
                int diff = this.extendBy(bits, nBits);
                this.precedingDCs[iComp] = lastDC += diff;
            }
            if (this.progressive) {
                lastDC <<= approxBit;
            }
        }
        dataUnit[0] = lastDC;
    }

    void dequantize(int[] dataUnit, int iComp) {
        int[] qTable = this.quantizationTables[this.frameComponents[this.componentIds[iComp]][0]];
        int i = 0;
        while (i < dataUnit.length) {
            int zzIndex = ZigZag8x8[i];
            dataUnit[zzIndex] = dataUnit[zzIndex] * qTable[i];
            ++i;
        }
    }

    byte[] decodeImageComponents() {
        if (this.nComponents == 3) {
            return this.convertYCbCrToRGB();
        }
        if (this.nComponents == 4) {
            return this.convertCMYKToRGB();
        }
        return this.convertYToRGB();
    }

    void decodeMCUAtXAndY(int xmcu, int ymcu, int nComponentsInScan, boolean first, int start, int end, int approxBit) {
        int iComp = 0;
        while (iComp < nComponentsInScan) {
            int scanComponent = iComp;
            while (this.scanHeader.componentParameters[this.componentIds[scanComponent]] == null) {
                ++scanComponent;
            }
            int[] frameComponent = this.frameComponents[this.componentIds[scanComponent]];
            int hi = frameComponent[1];
            int vi = frameComponent[2];
            if (nComponentsInScan == 1) {
                hi = 1;
                vi = 1;
            }
            int compWidth = frameComponent[3];
            int ivi = 0;
            while (ivi < vi) {
                int ihi = 0;
                while (ihi < hi) {
                    if (this.progressive) {
                        int index = (ymcu * vi + ivi) * compWidth + xmcu * hi + ihi;
                        this.dataUnit = this.dataUnits[scanComponent][index];
                        if (this.dataUnit == null) {
                            this.dataUnit = new int[64];
                            this.dataUnits[scanComponent][index] = this.dataUnit;
                        }
                    } else {
                        int i = 0;
                        while (i < this.dataUnit.length) {
                            this.dataUnit[i] = 0;
                            ++i;
                        }
                    }
                    if (!this.progressive || this.scanHeader.isDCProgressiveScan()) {
                        this.decodeDCCoefficient(this.dataUnit, scanComponent, first, approxBit);
                    }
                    if (!this.progressive) {
                        this.decodeACCoefficients(this.dataUnit, scanComponent);
                    } else {
                        if (this.scanHeader.isACProgressiveScan()) {
                            if (first) {
                                this.decodeACFirstCoefficients(this.dataUnit, scanComponent, start, end, approxBit);
                            } else {
                                this.decodeACRefineCoefficients(this.dataUnit, scanComponent, start, end, approxBit);
                            }
                        }
                        if (this.loader.hasListeners()) {
                            int[] temp = this.dataUnit;
                            this.dataUnit = new int[64];
                            System.arraycopy(temp, 0, this.dataUnit, 0, 64);
                        }
                    }
                    if (!this.progressive || this.progressive && this.loader.hasListeners()) {
                        this.dequantize(this.dataUnit, scanComponent);
                        this.inverseDCT(this.dataUnit);
                        this.storeData(this.dataUnit, scanComponent, xmcu, ymcu, hi, ihi, vi, ivi);
                    }
                    ++ihi;
                }
                ++ivi;
            }
            ++iComp;
        }
    }

    void decodeScan() {
        if (this.progressive && !this.scanHeader.verifyProgressiveScan()) {
            SWT.error(40);
        }
        int nComponentsInScan = this.scanHeader.getNumberOfImageComponents();
        int mcuRowsInScan = this.interleavedMcuRows;
        int mcusPerRow = this.interleavedMcuCols;
        if (nComponentsInScan == 1) {
            int scanComponent = 0;
            while (this.scanHeader.componentParameters[this.componentIds[scanComponent]] == null) {
                ++scanComponent;
            }
            int[] frameComponent = this.frameComponents[this.componentIds[scanComponent]];
            int hi = frameComponent[1];
            int vi = frameComponent[2];
            int mcuWidth = 8 * this.maxH / hi;
            int mcuHeight = 8 * this.maxV / vi;
            mcusPerRow = (this.imageWidth + mcuWidth - 1) / mcuWidth;
            mcuRowsInScan = (this.imageHeight + mcuHeight - 1) / mcuHeight;
        }
        boolean first = this.scanHeader.isFirstScan();
        int start = this.scanHeader.getStartOfSpectralSelection();
        int end = this.scanHeader.getEndOfSpectralSelection();
        int approxBit = this.scanHeader.getApproxBitPositionLow();
        this.restartsToGo = this.restartInterval;
        this.nextRestartNumber = 0;
        int ymcu = 0;
        while (ymcu < mcuRowsInScan) {
            int xmcu = 0;
            while (xmcu < mcusPerRow) {
                if (this.restartInterval != 0) {
                    if (this.restartsToGo == 0) {
                        this.processRestartInterval();
                    }
                    --this.restartsToGo;
                }
                this.decodeMCUAtXAndY(xmcu, ymcu, nComponentsInScan, first, start, end, approxBit);
                ++xmcu;
            }
            ++ymcu;
        }
    }

    int decodeUsingTable(JPEGHuffmanTable huffmanTable) {
        int i = 0;
        int[] maxCodes = huffmanTable.getDhMaxCodes();
        int[] minCodes = huffmanTable.getDhMinCodes();
        int[] valPtrs = huffmanTable.getDhValPtrs();
        int[] huffVals = huffmanTable.getDhValues();
        int code = this.nextBit();
        while (code > maxCodes[i]) {
            code = code * 2 + this.nextBit();
            ++i;
        }
        int j = valPtrs[i] + code - minCodes[i];
        return huffVals[j];
    }

    void emit(int huffCode, int nBits) {
        if (nBits == 0) {
            SWT.error(40);
        }
        int[] power2m1 = new int[]{1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, Short.MAX_VALUE, 65535, 131125};
        int code = (huffCode & power2m1[nBits - 1]) << 24 - nBits - this.currentBitCount;
        byte[] codeBuffer = new byte[]{(byte)(code & 0xFF), (byte)(code >> 8 & 0xFF), (byte)(code >> 16 & 0xFF), (byte)(code >> 24 & 0xFF)};
        int abs = nBits - (8 - this.currentBitCount);
        if (abs < 0) {
            abs = -abs;
        }
        if (abs >> 3 > 0) {
            this.currentByte += codeBuffer[2];
            this.emitByte((byte)this.currentByte);
            this.emitByte(codeBuffer[1]);
            this.currentByte = codeBuffer[0];
            this.currentBitCount += nBits - 16;
        } else {
            this.currentBitCount += nBits;
            if (this.currentBitCount >= 8) {
                this.currentByte += codeBuffer[2];
                this.emitByte((byte)this.currentByte);
                this.currentByte = codeBuffer[1];
                this.currentBitCount -= 8;
            } else {
                this.currentByte += codeBuffer[2];
            }
        }
    }

    void emitByte(byte byteValue) {
        if (this.bufferCurrentPosition >= 512) {
            this.resetOutputBuffer();
        }
        this.dataBuffer[this.bufferCurrentPosition] = byteValue;
        ++this.bufferCurrentPosition;
        if (byteValue == -1) {
            this.emitByte((byte)0);
        }
    }

    /*
     * Unable to fully structure code
     */
    void encodeACCoefficients(int[] dataUnit, int iComp) {
        sParams = this.scanHeader.componentParameters[iComp];
        acTable = this.acHuffmanTables[sParams[1]];
        ehCodes = acTable.ehCodes;
        ehSizes = acTable.ehCodeLengths;
        r = 0;
        k = 1;
        while (k < 64) {
            if ((acValue = dataUnit[JPEGFileFormat.ZigZag8x8[++k - 1]]) != 0) ** GOTO lbl16
            if (k == 64) {
                this.emit(ehCodes[0], ehSizes[0] & 255);
                continue;
            }
            ++r;
            continue;
lbl-1000:
            // 1 sources

            {
                this.emit(ehCodes[240], ehSizes[240] & 255);
                r -= 16;
lbl16:
                // 2 sources

                ** while (r > 15)
            }
lbl17:
            // 1 sources

            if (acValue < 0) {
                absACValue = acValue;
                if (absACValue < 0) {
                    absACValue = -absACValue;
                }
                nBits = JPEGFileFormat.NBitsTable[absACValue];
                rs = r * 16 + nBits;
                this.emit(ehCodes[rs], ehSizes[rs] & 255);
                this.emit(0xFFFFFF - absACValue, nBits);
            } else {
                nBits = JPEGFileFormat.NBitsTable[acValue];
                rs = r * 16 + nBits;
                this.emit(ehCodes[rs], ehSizes[rs] & 255);
                this.emit(acValue, nBits);
            }
            r = 0;
        }
    }

    void encodeDCCoefficients(int[] dataUnit, int iComp) {
        int[] sParams = this.scanHeader.componentParameters[iComp];
        JPEGHuffmanTable dcTable = this.dcHuffmanTables[sParams[0]];
        int lastDC = this.precedingDCs[iComp];
        int dcValue = dataUnit[0];
        int diff = dcValue - lastDC;
        this.precedingDCs[iComp] = dcValue;
        if (diff < 0) {
            int absDiff = 0 - diff;
            int nBits = NBitsTable[absDiff];
            this.emit(dcTable.ehCodes[nBits], dcTable.ehCodeLengths[nBits]);
            this.emit(0xFFFFFF - absDiff, nBits);
        } else {
            int nBits = NBitsTable[diff];
            this.emit(dcTable.ehCodes[nBits], dcTable.ehCodeLengths[nBits]);
            if (nBits != 0) {
                this.emit(diff, nBits);
            }
        }
    }

    void encodeMCUAtXAndY(int xmcu, int ymcu) {
        int nComponentsInScan = this.scanHeader.getNumberOfImageComponents();
        this.dataUnit = new int[64];
        int iComp = 0;
        while (iComp < nComponentsInScan) {
            int[] frameComponent = this.frameComponents[this.componentIds[iComp]];
            int hi = frameComponent[1];
            int vi = frameComponent[2];
            int ivi = 0;
            while (ivi < vi) {
                int ihi = 0;
                while (ihi < hi) {
                    this.extractData(this.dataUnit, iComp, xmcu, ymcu, ihi, ivi);
                    this.forwardDCT(this.dataUnit);
                    this.quantizeData(this.dataUnit, iComp);
                    this.encodeDCCoefficients(this.dataUnit, iComp);
                    this.encodeACCoefficients(this.dataUnit, iComp);
                    ++ihi;
                }
                ++ivi;
            }
            ++iComp;
        }
    }

    void encodeScan() {
        int ymcu = 0;
        while (ymcu < this.interleavedMcuRows) {
            int xmcu = 0;
            while (xmcu < this.interleavedMcuCols) {
                this.encodeMCUAtXAndY(xmcu, ymcu);
                ++xmcu;
            }
            ++ymcu;
        }
        if (this.currentBitCount != 0) {
            this.emitByte((byte)this.currentByte);
        }
        this.resetOutputBuffer();
    }

    void expandImageComponents() {
        int iComp = 0;
        while (iComp < this.nComponents) {
            int[] frameComponent = this.frameComponents[this.componentIds[iComp]];
            int hi = frameComponent[1];
            int upH = this.maxH / hi;
            int vi = frameComponent[2];
            int upV = this.maxV / vi;
            if (upH * upV > 1) {
                byte[] component = this.imageComponents[iComp];
                int compWidth = frameComponent[3];
                int compHeight = frameComponent[4];
                int upCompWidth = compWidth * upH;
                int upCompHeight = compHeight * upV;
                ImageData src = new ImageData(compWidth, compHeight, 8, new PaletteData(RGB16), 4, component);
                ImageData dest = src.scaledTo(upCompWidth, upCompHeight);
                this.imageComponents[iComp] = dest.data;
            }
            ++iComp;
        }
    }

    int extendBy(int diff, int t) {
        if (diff < ExtendTest[t]) {
            return diff + ExtendOffset[t];
        }
        return diff;
    }

    void extractData(int[] dataUnit, int iComp, int xmcu, int ymcu, int ihi, int ivi) {
        byte[] compImage = this.imageComponents[iComp];
        int[] frameComponent = this.frameComponents[this.componentIds[iComp]];
        int hi = frameComponent[1];
        int vi = frameComponent[2];
        int compWidth = frameComponent[3];
        int srcIndex = (ymcu * vi + ivi) * compWidth * 8 + (xmcu * hi + ihi) * 8;
        int destIndex = 0;
        int i = 0;
        while (i < 8) {
            int col = 0;
            while (col < 8) {
                dataUnit[destIndex] = (compImage[srcIndex + col] & 0xFF) - 128;
                ++destIndex;
                ++col;
            }
            srcIndex += compWidth;
            ++i;
        }
    }

    void forwardDCT(int[] dataUnit) {
        int row = 0;
        while (row < 8) {
            int rIndex = row * 8;
            int tmp0 = dataUnit[rIndex] + dataUnit[rIndex + 7];
            int tmp7 = dataUnit[rIndex] - dataUnit[rIndex + 7];
            int tmp1 = dataUnit[rIndex + 1] + dataUnit[rIndex + 6];
            int tmp6 = dataUnit[rIndex + 1] - dataUnit[rIndex + 6];
            int tmp2 = dataUnit[rIndex + 2] + dataUnit[rIndex + 5];
            int tmp5 = dataUnit[rIndex + 2] - dataUnit[rIndex + 5];
            int tmp3 = dataUnit[rIndex + 3] + dataUnit[rIndex + 4];
            int tmp4 = dataUnit[rIndex + 3] - dataUnit[rIndex + 4];
            int tmp10 = tmp0 + tmp3;
            int tmp13 = tmp0 - tmp3;
            int tmp11 = tmp1 + tmp2;
            int tmp12 = tmp1 - tmp2;
            dataUnit[rIndex] = (tmp10 + tmp11) * 4;
            dataUnit[rIndex + 4] = (tmp10 - tmp11) * 4;
            int z1 = (tmp12 + tmp13) * 4433;
            int n = z1 + tmp13 * 6270 + 1024;
            dataUnit[rIndex + 2] = n >> 11;
            if (n < 0 && (n & 0x7FF) != 0) {
                int n2 = rIndex + 2;
                dataUnit[n2] = dataUnit[n2] - 1;
            }
            n = z1 + tmp12 * -15137 + 1024;
            dataUnit[rIndex + 6] = n >> 11;
            if (n < 0 && (n & 0x7FF) != 0) {
                int n3 = rIndex + 6;
                dataUnit[n3] = dataUnit[n3] - 1;
            }
            z1 = tmp4 + tmp7;
            int z2 = tmp5 + tmp6;
            int z3 = tmp4 + tmp6;
            int z4 = tmp5 + tmp7;
            int z5 = (z3 + z4) * 9633;
            tmp4 *= 2446;
            tmp5 *= 16819;
            tmp6 *= 25172;
            tmp7 *= 12299;
            z2 *= -20995;
            z3 *= -16069;
            z4 *= -3196;
            z4 += z5;
            n = tmp4 + (z1 *= -7373) + (z3 += z5) + 1024;
            dataUnit[rIndex + 7] = n >> 11;
            if (n < 0 && (n & 0x7FF) != 0) {
                int n4 = rIndex + 7;
                dataUnit[n4] = dataUnit[n4] - 1;
            }
            n = tmp5 + z2 + z4 + 1024;
            dataUnit[rIndex + 5] = n >> 11;
            if (n < 0 && (n & 0x7FF) != 0) {
                int n5 = rIndex + 5;
                dataUnit[n5] = dataUnit[n5] - 1;
            }
            n = tmp6 + z2 + z3 + 1024;
            dataUnit[rIndex + 3] = n >> 11;
            if (n < 0 && (n & 0x7FF) != 0) {
                int n6 = rIndex + 3;
                dataUnit[n6] = dataUnit[n6] - 1;
            }
            n = tmp7 + z1 + z4 + 1024;
            dataUnit[rIndex + 1] = n >> 11;
            if (n < 0 && (n & 0x7FF) != 0) {
                int n7 = rIndex + 1;
                dataUnit[n7] = dataUnit[n7] - 1;
            }
            ++row;
        }
        int col = 0;
        while (col < 8) {
            int c0 = col;
            int c1 = col + 8;
            int c2 = col + 16;
            int c3 = col + 24;
            int c4 = col + 32;
            int c5 = col + 40;
            int c6 = col + 48;
            int c7 = col + 56;
            int tmp0 = dataUnit[c0] + dataUnit[c7];
            int tmp7 = dataUnit[c0] - dataUnit[c7];
            int tmp1 = dataUnit[c1] + dataUnit[c6];
            int tmp6 = dataUnit[c1] - dataUnit[c6];
            int tmp2 = dataUnit[c2] + dataUnit[c5];
            int tmp5 = dataUnit[c2] - dataUnit[c5];
            int tmp3 = dataUnit[c3] + dataUnit[c4];
            int tmp4 = dataUnit[c3] - dataUnit[c4];
            int tmp10 = tmp0 + tmp3;
            int tmp13 = tmp0 - tmp3;
            int tmp11 = tmp1 + tmp2;
            int tmp12 = tmp1 - tmp2;
            int n = tmp10 + tmp11 + 16;
            dataUnit[c0] = n >> 5;
            if (n < 0 && (n & 0x1F) != 0) {
                int n8 = c0;
                dataUnit[n8] = dataUnit[n8] - 1;
            }
            n = tmp10 - tmp11 + 16;
            dataUnit[c4] = n >> 5;
            if (n < 0 && (n & 0x1F) != 0) {
                int n9 = c4;
                dataUnit[n9] = dataUnit[n9] - 1;
            }
            int z1 = (tmp12 + tmp13) * 4433;
            n = z1 + tmp13 * 6270 + 131072;
            dataUnit[c2] = n >> 18;
            if (n < 0 && (n & 0x3FFFF) != 0) {
                int n10 = c2;
                dataUnit[n10] = dataUnit[n10] - 1;
            }
            n = z1 + tmp12 * -15137 + 131072;
            dataUnit[c6] = n >> 18;
            if (n < 0 && (n & 0x3FFFF) != 0) {
                int n11 = c6;
                dataUnit[n11] = dataUnit[n11] - 1;
            }
            z1 = tmp4 + tmp7;
            int z2 = tmp5 + tmp6;
            int z3 = tmp4 + tmp6;
            int z4 = tmp5 + tmp7;
            int z5 = (z3 + z4) * 9633;
            tmp4 *= 2446;
            tmp5 *= 16819;
            tmp6 *= 25172;
            tmp7 *= 12299;
            z2 *= -20995;
            z3 *= -16069;
            z4 *= -3196;
            z4 += z5;
            n = tmp4 + (z1 *= -7373) + (z3 += z5) + 131072;
            dataUnit[c7] = n >> 18;
            if (n < 0 && (n & 0x3FFFF) != 0) {
                int n12 = c7;
                dataUnit[n12] = dataUnit[n12] - 1;
            }
            n = tmp5 + z2 + z4 + 131072;
            dataUnit[c5] = n >> 18;
            if (n < 0 && (n & 0x3FFFF) != 0) {
                int n13 = c5;
                dataUnit[n13] = dataUnit[n13] - 1;
            }
            n = tmp6 + z2 + z3 + 131072;
            dataUnit[c3] = n >> 18;
            if (n < 0 && (n & 0x3FFFF) != 0) {
                int n14 = c3;
                dataUnit[n14] = dataUnit[n14] - 1;
            }
            n = tmp7 + z1 + z4 + 131072;
            dataUnit[c1] = n >> 18;
            if (n < 0 && (n & 0x3FFFF) != 0) {
                int n15 = c1;
                dataUnit[n15] = dataUnit[n15] - 1;
            }
            ++col;
        }
    }

    void getAPP0() {
        JPEGAppn appn = new JPEGAppn(this.inputStream);
        if (!appn.verify()) {
            SWT.error(40);
        }
    }

    void getCOM() {
        new JPEGComment(this.inputStream);
    }

    void getDAC() {
        new JPEGArithmeticConditioningTable(this.inputStream);
    }

    void getDHT() {
        JPEGHuffmanTable dht = new JPEGHuffmanTable(this.inputStream);
        if (!dht.verify()) {
            SWT.error(40);
        }
        if (this.acHuffmanTables == null) {
            this.acHuffmanTables = new JPEGHuffmanTable[4];
        }
        if (this.dcHuffmanTables == null) {
            this.dcHuffmanTables = new JPEGHuffmanTable[4];
        }
        JPEGHuffmanTable[] dhtTables = dht.getAllTables();
        int i = 0;
        while (i < dhtTables.length) {
            JPEGHuffmanTable dhtTable = dhtTables[i];
            if (dhtTable.getTableClass() == 0) {
                this.dcHuffmanTables[dhtTable.getTableIdentifier()] = dhtTable;
            } else {
                this.acHuffmanTables[dhtTable.getTableIdentifier()] = dhtTable;
            }
            ++i;
        }
    }

    void getDNL() {
        new JPEGRestartInterval(this.inputStream);
    }

    void getDQT() {
        JPEGQuantizationTable dqt = new JPEGQuantizationTable(this.inputStream);
        Object currentTables = this.quantizationTables;
        if (currentTables == null) {
            currentTables = new int[4][];
        }
        int[] dqtTablesKeys = dqt.getQuantizationTablesKeys();
        int[][] dqtTablesValues = dqt.getQuantizationTablesValues();
        int i = 0;
        while (i < dqtTablesKeys.length) {
            int index = dqtTablesKeys[i];
            currentTables[index] = dqtTablesValues[i];
            ++i;
        }
        this.quantizationTables = currentTables;
    }

    void getDRI() {
        JPEGRestartInterval dri = new JPEGRestartInterval(this.inputStream);
        if (!dri.verify()) {
            SWT.error(40);
        }
        this.restartInterval = dri.getRestartInterval();
    }

    void inverseDCT(int[] dataUnit) {
        int row = 0;
        while (row < 8) {
            int rIndex = row * 8;
            if (this.isZeroInRow(dataUnit, rIndex)) {
                int dcVal = dataUnit[rIndex] << 2;
                int i = rIndex + 7;
                while (i >= rIndex) {
                    dataUnit[i] = dcVal;
                    --i;
                }
            } else {
                int z2 = dataUnit[rIndex + 2];
                int z3 = dataUnit[rIndex + 6];
                int z1 = (z2 + z3) * 4433;
                int tmp2 = z1 + z3 * -15137;
                int tmp3 = z1 + z2 * 6270;
                int tmp0 = dataUnit[rIndex] + dataUnit[rIndex + 4] << 13;
                int tmp1 = dataUnit[rIndex] - dataUnit[rIndex + 4] << 13;
                int tmp10 = tmp0 + tmp3;
                int tmp13 = tmp0 - tmp3;
                int tmp11 = tmp1 + tmp2;
                int tmp12 = tmp1 - tmp2;
                tmp0 = dataUnit[rIndex + 7];
                tmp1 = dataUnit[rIndex + 5];
                tmp2 = dataUnit[rIndex + 3];
                tmp3 = dataUnit[rIndex + 1];
                z1 = tmp0 + tmp3;
                z2 = tmp1 + tmp2;
                z3 = tmp0 + tmp2;
                int z4 = tmp1 + tmp3;
                int z5 = (z3 + z4) * 9633;
                tmp0 *= 2446;
                tmp1 *= 16819;
                tmp2 *= 25172;
                tmp3 *= 12299;
                z3 *= -16069;
                z4 *= -3196;
                tmp0 += (z1 *= -7373) + (z3 += z5);
                dataUnit[rIndex] = tmp10 + (tmp3 += z1 + z4) + 1024 >> 11;
                dataUnit[rIndex + 7] = tmp10 - tmp3 + 1024 >> 11;
                dataUnit[rIndex + 1] = tmp11 + (tmp2 += z2 + z3) + 1024 >> 11;
                dataUnit[rIndex + 6] = tmp11 - tmp2 + 1024 >> 11;
                dataUnit[rIndex + 2] = tmp12 + (tmp1 += (z2 *= -20995) + (z4 += z5)) + 1024 >> 11;
                dataUnit[rIndex + 5] = tmp12 - tmp1 + 1024 >> 11;
                dataUnit[rIndex + 3] = tmp13 + tmp0 + 1024 >> 11;
                dataUnit[rIndex + 4] = tmp13 - tmp0 + 1024 >> 11;
            }
            ++row;
        }
        int col = 0;
        while (col < 8) {
            int c0 = col;
            int c1 = col + 8;
            int c2 = col + 16;
            int c3 = col + 24;
            int c4 = col + 32;
            int c5 = col + 40;
            int c6 = col + 48;
            int c7 = col + 56;
            if (this.isZeroInColumn(dataUnit, col)) {
                int dcVal;
                dataUnit[c0] = dcVal = dataUnit[c0] + 16 >> 5;
                dataUnit[c1] = dcVal;
                dataUnit[c2] = dcVal;
                dataUnit[c3] = dcVal;
                dataUnit[c4] = dcVal;
                dataUnit[c5] = dcVal;
                dataUnit[c6] = dcVal;
                dataUnit[c7] = dcVal;
            } else {
                int z0 = dataUnit[c0];
                int z2 = dataUnit[c2];
                int z3 = dataUnit[c6];
                int z4 = dataUnit[c4];
                int z1 = (z2 + z3) * 4433;
                int tmp2 = z1 + z3 * -15137;
                int tmp3 = z1 + z2 * 6270;
                int tmp0 = z0 + z4 << 13;
                int tmp1 = z0 - z4 << 13;
                int tmp10 = tmp0 + tmp3;
                int tmp13 = tmp0 - tmp3;
                int tmp11 = tmp1 + tmp2;
                int tmp12 = tmp1 - tmp2;
                tmp0 = dataUnit[c7];
                tmp1 = dataUnit[c5];
                tmp2 = dataUnit[c3];
                tmp3 = dataUnit[c1];
                z1 = tmp0 + tmp3;
                z2 = tmp1 + tmp2;
                z3 = tmp0 + tmp2;
                z4 = tmp1 + tmp3;
                z0 = (z3 + z4) * 9633;
                tmp0 *= 2446;
                tmp1 *= 16819;
                tmp2 *= 25172;
                tmp3 *= 12299;
                z3 *= -16069;
                z4 *= -3196;
                tmp0 += (z1 *= -7373) + (z3 += z0);
                dataUnit[c0] = tmp10 + (tmp3 += z1 + z4) + 131072 >> 18;
                dataUnit[c7] = tmp10 - tmp3 + 131072 >> 18;
                dataUnit[c1] = tmp11 + (tmp2 += z2 + z3) + 131072 >> 18;
                dataUnit[c6] = tmp11 - tmp2 + 131072 >> 18;
                dataUnit[c2] = tmp12 + (tmp1 += (z2 *= -20995) + (z4 += z0)) + 131072 >> 18;
                dataUnit[c5] = tmp12 - tmp1 + 131072 >> 18;
                dataUnit[c3] = tmp13 + tmp0 + 131072 >> 18;
                dataUnit[c4] = tmp13 - tmp0 + 131072 >> 18;
            }
            ++col;
        }
    }

    boolean isFileFormat(LEDataInputStream stream) {
        try {
            JPEGStartOfImage soi = new JPEGStartOfImage(stream);
            stream.unread(soi.reference);
            return soi.verify();
        }
        catch (Exception exception) {
            return false;
        }
    }

    boolean isZeroInColumn(int[] dataUnit, int col) {
        return dataUnit[col + 8] == 0 && dataUnit[col + 16] == 0 && dataUnit[col + 24] == 0 && dataUnit[col + 32] == 0 && dataUnit[col + 40] == 0 && dataUnit[col + 48] == 0 && dataUnit[col + 56] == 0;
    }

    boolean isZeroInRow(int[] dataUnit, int rIndex) {
        return dataUnit[rIndex + 1] == 0 && dataUnit[rIndex + 2] == 0 && dataUnit[rIndex + 3] == 0 && dataUnit[rIndex + 4] == 0 && dataUnit[rIndex + 5] == 0 && dataUnit[rIndex + 6] == 0 && dataUnit[rIndex + 7] == 0;
    }

    ImageData[] loadFromByteStream() {
        if (System.getProperty("org.eclipse.swt.internal.image.JPEGFileFormat_3.2") == null) {
            return JPEGDecoder.loadFromByteStream(this.inputStream, this.loader);
        }
        JPEGStartOfImage soi = new JPEGStartOfImage(this.inputStream);
        if (!soi.verify()) {
            SWT.error(40);
        }
        this.restartInterval = 0;
        this.processTables();
        this.frameHeader = new JPEGFrameHeader(this.inputStream);
        if (!this.frameHeader.verify()) {
            SWT.error(40);
        }
        this.imageWidth = this.frameHeader.getSamplesPerLine();
        this.imageHeight = this.frameHeader.getNumberOfLines();
        this.maxH = this.frameHeader.getMaxHFactor();
        this.maxV = this.frameHeader.getMaxVFactor();
        int mcuWidth = this.maxH * 8;
        int mcuHeight = this.maxV * 8;
        this.interleavedMcuCols = (this.imageWidth + mcuWidth - 1) / mcuWidth;
        this.interleavedMcuRows = (this.imageHeight + mcuHeight - 1) / mcuHeight;
        this.progressive = this.frameHeader.isProgressive();
        this.samplePrecision = this.frameHeader.getSamplePrecision();
        this.nComponents = this.frameHeader.getNumberOfImageComponents();
        this.frameComponents = this.frameHeader.componentParameters;
        this.componentIds = this.frameHeader.componentIdentifiers;
        this.imageComponents = new byte[this.nComponents][];
        if (this.progressive) {
            this.dataUnits = new int[this.nComponents][][];
        } else {
            this.dataUnit = new int[64];
        }
        int i = 0;
        while (i < this.nComponents) {
            int[] frameComponent = this.frameComponents[this.componentIds[i]];
            int bufferSize = frameComponent[3] * frameComponent[4];
            this.imageComponents[i] = new byte[bufferSize];
            if (this.progressive) {
                this.dataUnits[i] = new int[bufferSize][];
            }
            ++i;
        }
        this.processTables();
        this.scanHeader = new JPEGScanHeader(this.inputStream);
        if (!this.scanHeader.verify()) {
            SWT.error(40);
        }
        int progressiveScanCount = 0;
        boolean done = false;
        while (!done) {
            JPEGSegment jpegSegment;
            int delta;
            this.resetInputBuffer();
            this.precedingDCs = new int[4];
            this.decodeScan();
            if (this.progressive && this.loader.hasListeners()) {
                ImageData imageData = this.createImageData();
                this.loader.notifyListeners(new ImageLoaderEvent(this.loader, imageData, progressiveScanCount, false));
                ++progressiveScanCount;
            }
            if ((delta = 512 - this.bufferCurrentPosition - 1) > 0) {
                byte[] unreadBuffer = new byte[delta];
                System.arraycopy(this.dataBuffer, this.bufferCurrentPosition + 1, unreadBuffer, 0, delta);
                try {
                    this.inputStream.unread(unreadBuffer);
                }
                catch (IOException e) {
                    SWT.error(39, e);
                }
            }
            if ((jpegSegment = this.processTables()) == null || jpegSegment.getSegmentMarker() == 65497) {
                done = true;
                continue;
            }
            this.scanHeader = new JPEGScanHeader(this.inputStream);
            if (this.scanHeader.verify()) continue;
            SWT.error(40);
        }
        if (this.progressive) {
            int ymcu = 0;
            while (ymcu < this.interleavedMcuRows) {
                int xmcu = 0;
                while (xmcu < this.interleavedMcuCols) {
                    int iComp = 0;
                    while (iComp < this.nComponents) {
                        int[] frameComponent = this.frameComponents[this.componentIds[iComp]];
                        int hi = frameComponent[1];
                        int vi = frameComponent[2];
                        int compWidth = frameComponent[3];
                        int ivi = 0;
                        while (ivi < vi) {
                            int ihi = 0;
                            while (ihi < hi) {
                                int index = (ymcu * vi + ivi) * compWidth + xmcu * hi + ihi;
                                this.dataUnit = this.dataUnits[iComp][index];
                                this.dequantize(this.dataUnit, iComp);
                                this.inverseDCT(this.dataUnit);
                                this.storeData(this.dataUnit, iComp, xmcu, ymcu, hi, ihi, vi, ivi);
                                ++ihi;
                            }
                            ++ivi;
                        }
                        ++iComp;
                    }
                    ++xmcu;
                }
                ++ymcu;
            }
            this.dataUnits = null;
        }
        ImageData imageData = this.createImageData();
        if (this.progressive && this.loader.hasListeners()) {
            this.loader.notifyListeners(new ImageLoaderEvent(this.loader, imageData, progressiveScanCount, true));
        }
        return new ImageData[]{imageData};
    }

    ImageData createImageData() {
        return ImageData.internal_new(this.imageWidth, this.imageHeight, this.nComponents * this.samplePrecision, this.setUpPalette(), this.nComponents == 1 ? 4 : 1, this.decodeImageComponents(), 0, null, null, -1, -1, 4, 0, 0, 0, 0);
    }

    int nextBit() {
        byte nextByte;
        if (this.currentBitCount != 0) {
            --this.currentBitCount;
            this.currentByte *= 2;
            if (this.currentByte > 255) {
                this.currentByte -= 256;
                return 1;
            }
            return 0;
        }
        ++this.bufferCurrentPosition;
        if (this.bufferCurrentPosition >= 512) {
            this.resetInputBuffer();
            this.bufferCurrentPosition = 0;
        }
        this.currentByte = this.dataBuffer[this.bufferCurrentPosition] & 0xFF;
        this.currentBitCount = 8;
        if (this.bufferCurrentPosition == 511) {
            this.resetInputBuffer();
            this.currentBitCount = 8;
            nextByte = this.dataBuffer[0];
        } else {
            nextByte = this.dataBuffer[this.bufferCurrentPosition + 1];
        }
        if (this.currentByte == 255) {
            if (nextByte == 0) {
                ++this.bufferCurrentPosition;
                --this.currentBitCount;
                this.currentByte *= 2;
                if (this.currentByte > 255) {
                    this.currentByte -= 256;
                    return 1;
                }
                return 0;
            }
            if ((nextByte & 0xFF) + 65280 == 65500) {
                this.getDNL();
                return 0;
            }
            SWT.error(40);
            return 0;
        }
        --this.currentBitCount;
        this.currentByte *= 2;
        if (this.currentByte > 255) {
            this.currentByte -= 256;
            return 1;
        }
        return 0;
    }

    void processRestartInterval() {
        do {
            ++this.bufferCurrentPosition;
            if (this.bufferCurrentPosition > 511) {
                this.resetInputBuffer();
                this.bufferCurrentPosition = 0;
            }
            this.currentByte = this.dataBuffer[this.bufferCurrentPosition] & 0xFF;
        } while (this.currentByte != 255);
        while (this.currentByte == 255) {
            ++this.bufferCurrentPosition;
            if (this.bufferCurrentPosition > 511) {
                this.resetInputBuffer();
                this.bufferCurrentPosition = 0;
            }
            this.currentByte = this.dataBuffer[this.bufferCurrentPosition] & 0xFF;
        }
        if (this.currentByte != (65488 + this.nextRestartNumber & 0xFF)) {
            SWT.error(40);
        }
        ++this.bufferCurrentPosition;
        if (this.bufferCurrentPosition > 511) {
            this.resetInputBuffer();
            this.bufferCurrentPosition = 0;
        }
        this.currentByte = this.dataBuffer[this.bufferCurrentPosition] & 0xFF;
        this.currentBitCount = 8;
        this.restartsToGo = this.restartInterval;
        this.nextRestartNumber = this.nextRestartNumber + 1 & 7;
        this.precedingDCs = new int[4];
        this.eobrun = 0;
    }

    JPEGSegment processTables() {
        JPEGSegment jpegSegment;
        block10: while ((jpegSegment = JPEGFileFormat.seekUnspecifiedMarker(this.inputStream)) != null) {
            JPEGFrameHeader sof = new JPEGFrameHeader(jpegSegment.reference);
            if (sof.verify()) {
                return jpegSegment;
            }
            int marker = jpegSegment.getSegmentMarker();
            switch (marker) {
                case 65496: {
                    SWT.error(40);
                }
                case 65497: 
                case 65498: {
                    return jpegSegment;
                }
                case 65499: {
                    this.getDQT();
                    continue block10;
                }
                case 65476: {
                    this.getDHT();
                    continue block10;
                }
                case 65484: {
                    this.getDAC();
                    continue block10;
                }
                case 65501: {
                    this.getDRI();
                    continue block10;
                }
                case 65504: {
                    this.getAPP0();
                    continue block10;
                }
                case 65534: {
                    this.getCOM();
                    continue block10;
                }
            }
            JPEGFileFormat.skipSegmentFrom(this.inputStream);
        }
        return null;
    }

    void quantizeData(int[] dataUnit, int iComp) {
        int[] qTable = this.quantizationTables[this.frameComponents[this.componentIds[iComp]][0]];
        int i = 0;
        while (i < dataUnit.length) {
            int zzIndex = ZigZag8x8[i];
            int data = dataUnit[zzIndex];
            int absData = data < 0 ? 0 - data : data;
            int qValue = qTable[i];
            int q2 = qValue >> 1;
            if ((absData += q2) < qValue) {
                dataUnit[zzIndex] = 0;
            } else {
                absData /= qValue;
                dataUnit[zzIndex] = data >= 0 ? absData : 0 - absData;
            }
            ++i;
        }
    }

    int receive(int nBits) {
        int v = 0;
        int i = 0;
        while (i < nBits) {
            v = v * 2 + this.nextBit();
            ++i;
        }
        return v;
    }

    void resetInputBuffer() {
        if (this.dataBuffer == null) {
            this.dataBuffer = new byte[512];
        }
        try {
            this.inputStream.read(this.dataBuffer);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        this.currentBitCount = 0;
        this.bufferCurrentPosition = -1;
    }

    void resetOutputBuffer() {
        if (this.dataBuffer == null) {
            this.dataBuffer = new byte[512];
        } else {
            try {
                this.outputStream.write(this.dataBuffer, 0, this.bufferCurrentPosition);
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
        }
        this.bufferCurrentPosition = 0;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static JPEGSegment seekUnspecifiedMarker(LEDataInputStream byteStream) {
        byte[] byteArray = new byte[2];
        try {
            while (true) {
                if (byteStream.read(byteArray, 0, 1) != 1) {
                    return null;
                }
                if (byteArray[0] != -1) continue;
                if (byteStream.read(byteArray, 1, 1) != 1) {
                    return null;
                }
                if (byteArray[1] != -1 && byteArray[1] != 0) break;
            }
            byteStream.unread(byteArray);
            return new JPEGSegment(byteArray);
        }
        catch (IOException e) {
            SWT.error(39, e);
            return null;
        }
    }

    PaletteData setUpPalette() {
        if (this.nComponents == 1) {
            RGB[] entries = new RGB[256];
            int i = 0;
            while (i < 256) {
                entries[i] = new RGB(i, i, i);
                ++i;
            }
            return new PaletteData(entries);
        }
        return new PaletteData(255, 65280, 0xFF0000);
    }

    static void skipSegmentFrom(LEDataInputStream byteStream) {
        try {
            byte[] byteArray = new byte[4];
            JPEGSegment jpegSegment = new JPEGSegment(byteArray);
            if (byteStream.read(byteArray) != byteArray.length) {
                SWT.error(40);
            }
            if (byteArray[0] != -1 || byteArray[1] == 0 || byteArray[1] == -1) {
                SWT.error(40);
            }
            int delta = jpegSegment.getSegmentLength() - 2;
            byteStream.skip(delta);
        }
        catch (Exception e) {
            SWT.error(39, e);
        }
    }

    void storeData(int[] dataUnit, int iComp, int xmcu, int ymcu, int hi, int ihi, int vi, int ivi) {
        byte[] compImage = this.imageComponents[iComp];
        int[] frameComponent = this.frameComponents[this.componentIds[iComp]];
        int compWidth = frameComponent[3];
        int destIndex = (ymcu * vi + ivi) * compWidth * 8 + (xmcu * hi + ihi) * 8;
        int srcIndex = 0;
        int i = 0;
        while (i < 8) {
            int col = 0;
            while (col < 8) {
                int x = dataUnit[srcIndex] + 128;
                if (x < 0) {
                    x = 0;
                } else if (x > 255) {
                    x = 255;
                }
                compImage[destIndex + col] = (byte)x;
                ++srcIndex;
                ++col;
            }
            destIndex += compWidth;
            ++i;
        }
    }

    void unloadIntoByteStream(ImageLoader loader) {
        int precision;
        int scanLength;
        int[][] scanParams;
        int[][] frameParams;
        int frameLength;
        ImageData image = loader.data[0];
        if (!new JPEGStartOfImage().writeToStream(this.outputStream)) {
            SWT.error(39);
        }
        byte[] byArray = new byte[18];
        byArray[0] = -1;
        byArray[1] = -32;
        byArray[3] = 16;
        byArray[4] = 74;
        byArray[5] = 70;
        byArray[6] = 73;
        byArray[7] = 70;
        byArray[9] = 1;
        byArray[10] = 1;
        byArray[13] = 1;
        byArray[15] = 1;
        JPEGAppn appn = new JPEGAppn(byArray);
        if (!appn.writeToStream(this.outputStream)) {
            SWT.error(39);
        }
        this.quantizationTables = new int[4][];
        JPEGQuantizationTable chromDQT = JPEGQuantizationTable.defaultChrominanceTable();
        chromDQT.scaleBy(this.encoderQFactor);
        int[] jpegDQTKeys = chromDQT.getQuantizationTablesKeys();
        int[][] jpegDQTValues = chromDQT.getQuantizationTablesValues();
        int i = 0;
        while (i < jpegDQTKeys.length) {
            this.quantizationTables[jpegDQTKeys[i]] = jpegDQTValues[i];
            ++i;
        }
        JPEGQuantizationTable lumDQT = JPEGQuantizationTable.defaultLuminanceTable();
        lumDQT.scaleBy(this.encoderQFactor);
        jpegDQTKeys = lumDQT.getQuantizationTablesKeys();
        jpegDQTValues = lumDQT.getQuantizationTablesValues();
        int i2 = 0;
        while (i2 < jpegDQTKeys.length) {
            this.quantizationTables[jpegDQTKeys[i2]] = jpegDQTValues[i2];
            ++i2;
        }
        if (!lumDQT.writeToStream(this.outputStream)) {
            SWT.error(39);
        }
        if (!chromDQT.writeToStream(this.outputStream)) {
            SWT.error(39);
        }
        if (image.depth == 1) {
            frameLength = 11;
            frameParams = new int[1][];
            int[] nArray = new int[5];
            nArray[0] = 1;
            nArray[1] = 1;
            nArray[2] = 1;
            frameParams[0] = nArray;
            scanParams = new int[][]{new int[2]};
            scanLength = 8;
            this.nComponents = 1;
            precision = 1;
        } else {
            frameLength = 17;
            frameParams = new int[3][];
            int[] nArray = new int[5];
            nArray[1] = 2;
            nArray[2] = 2;
            frameParams[0] = nArray;
            int[] nArray2 = new int[5];
            nArray2[0] = 1;
            nArray2[1] = 1;
            nArray2[2] = 1;
            frameParams[1] = nArray2;
            int[] nArray3 = new int[5];
            nArray3[0] = 1;
            nArray3[1] = 1;
            nArray3[2] = 1;
            frameParams[2] = nArray3;
            scanParams = new int[][]{new int[2], {1, 1}, {1, 1}};
            scanLength = 12;
            this.nComponents = 3;
            precision = 8;
        }
        this.imageWidth = image.width;
        this.imageHeight = image.height;
        this.frameHeader = new JPEGFrameHeader(new byte[19]);
        this.frameHeader.setSegmentMarker(65472);
        this.frameHeader.setSegmentLength(frameLength);
        this.frameHeader.setSamplePrecision(precision);
        this.frameHeader.setSamplesPerLine(this.imageWidth);
        this.frameHeader.setNumberOfLines(this.imageHeight);
        this.frameHeader.setNumberOfImageComponents(this.nComponents);
        this.frameHeader.componentParameters = frameParams;
        int[] nArray = new int[3];
        nArray[1] = 1;
        nArray[2] = 2;
        this.frameHeader.componentIdentifiers = nArray;
        this.frameHeader.initializeContents();
        if (!this.frameHeader.writeToStream(this.outputStream)) {
            SWT.error(39);
        }
        this.frameComponents = frameParams;
        this.componentIds = this.frameHeader.componentIdentifiers;
        this.maxH = this.frameHeader.getMaxHFactor();
        this.maxV = this.frameHeader.getMaxVFactor();
        int mcuWidth = this.maxH * 8;
        int mcuHeight = this.maxV * 8;
        this.interleavedMcuCols = (this.imageWidth + mcuWidth - 1) / mcuWidth;
        this.interleavedMcuRows = (this.imageHeight + mcuHeight - 1) / mcuHeight;
        this.acHuffmanTables = new JPEGHuffmanTable[4];
        this.dcHuffmanTables = new JPEGHuffmanTable[4];
        JPEGHuffmanTable[] dhtTables = new JPEGHuffmanTable[]{JPEGHuffmanTable.getDefaultDCLuminanceTable(), JPEGHuffmanTable.getDefaultDCChrominanceTable(), JPEGHuffmanTable.getDefaultACLuminanceTable(), JPEGHuffmanTable.getDefaultACChrominanceTable()};
        int i3 = 0;
        while (i3 < dhtTables.length) {
            JPEGHuffmanTable dhtTable = dhtTables[i3];
            if (!dhtTable.writeToStream(this.outputStream)) {
                SWT.error(39);
            }
            JPEGHuffmanTable[] allTables = dhtTable.getAllTables();
            int j = 0;
            while (j < allTables.length) {
                JPEGHuffmanTable huffmanTable = allTables[j];
                if (huffmanTable.getTableClass() == 0) {
                    this.dcHuffmanTables[huffmanTable.getTableIdentifier()] = huffmanTable;
                } else {
                    this.acHuffmanTables[huffmanTable.getTableIdentifier()] = huffmanTable;
                }
                ++j;
            }
            ++i3;
        }
        this.precedingDCs = new int[4];
        this.scanHeader = new JPEGScanHeader(new byte[14]);
        this.scanHeader.setSegmentMarker(65498);
        this.scanHeader.setSegmentLength(scanLength);
        this.scanHeader.setNumberOfImageComponents(this.nComponents);
        this.scanHeader.setStartOfSpectralSelection(0);
        this.scanHeader.setEndOfSpectralSelection(63);
        this.scanHeader.componentParameters = scanParams;
        this.scanHeader.initializeContents();
        if (!this.scanHeader.writeToStream(this.outputStream)) {
            SWT.error(39);
        }
        this.convertImageToYCbCr(image);
        this.resetOutputBuffer();
        this.currentByte = 0;
        this.currentBitCount = 0;
        this.encodeScan();
        if (!new JPEGEndOfImage().writeToStream(this.outputStream)) {
            SWT.error(39);
        }
    }
}

