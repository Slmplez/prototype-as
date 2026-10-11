/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.SCSU;

public final class UnicodeCompressor
implements SCSU {
    private static boolean[] sSingleTagTable;
    private static boolean[] sUnicodeTagTable;
    private int fCurrentWindow = 0;
    private int[] fOffsets = new int[8];
    private int fMode = 0;
    private int[] fIndexCount = new int[256];
    private int[] fTimeStamps = new int[8];
    private int fTimeStamp = 0;

    static {
        boolean[] blArray = new boolean[256];
        blArray[1] = true;
        blArray[2] = true;
        blArray[3] = true;
        blArray[4] = true;
        blArray[5] = true;
        blArray[6] = true;
        blArray[7] = true;
        blArray[8] = true;
        blArray[11] = true;
        blArray[12] = true;
        blArray[14] = true;
        blArray[15] = true;
        blArray[16] = true;
        blArray[17] = true;
        blArray[18] = true;
        blArray[19] = true;
        blArray[20] = true;
        blArray[21] = true;
        blArray[22] = true;
        blArray[23] = true;
        blArray[24] = true;
        blArray[25] = true;
        blArray[26] = true;
        blArray[27] = true;
        blArray[28] = true;
        blArray[29] = true;
        blArray[30] = true;
        blArray[31] = true;
        sSingleTagTable = blArray;
        boolean[] blArray2 = new boolean[256];
        blArray2[224] = true;
        blArray2[225] = true;
        blArray2[226] = true;
        blArray2[227] = true;
        blArray2[228] = true;
        blArray2[229] = true;
        blArray2[230] = true;
        blArray2[231] = true;
        blArray2[232] = true;
        blArray2[233] = true;
        blArray2[234] = true;
        blArray2[235] = true;
        blArray2[236] = true;
        blArray2[237] = true;
        blArray2[238] = true;
        blArray2[239] = true;
        blArray2[240] = true;
        blArray2[241] = true;
        blArray2[242] = true;
        sUnicodeTagTable = blArray2;
    }

    public UnicodeCompressor() {
        this.reset();
    }

    public static byte[] compress(String buffer) {
        return UnicodeCompressor.compress(buffer.toCharArray(), 0, buffer.length());
    }

    public static byte[] compress(char[] buffer, int start, int limit) {
        UnicodeCompressor comp = new UnicodeCompressor();
        int len = Math.max(4, 3 * (limit - start) + 1);
        byte[] temp = new byte[len];
        int byteCount = comp.compress(buffer, start, limit, null, temp, 0, len);
        byte[] result = new byte[byteCount];
        System.arraycopy(temp, 0, result, 0, byteCount);
        return result;
    }

    /*
     * Unable to fully structure code
     */
    public int compress(char[] charBuffer, int charBufferStart, int charBufferLimit, int[] charsRead, byte[] byteBuffer, int byteBufferStart, int byteBufferLimit) {
        bytePos = byteBufferStart;
        ucPos = charBufferStart;
        curUC = -1;
        curIndex = -1;
        nextUC = -1;
        forwardUC = -1;
        whichWindow = 0;
        hiByte = 0;
        loByte = 0;
        if (byteBuffer.length >= 4 && byteBufferLimit - byteBufferStart >= 4) ** GOTO lbl-1000
        throw new IllegalArgumentException("byteBuffer.length < 4");
        {
            switch (this.fMode) {
                case 0: {
                    while (ucPos < charBufferLimit && bytePos < byteBufferLimit) {
                        curUC = charBuffer[ucPos++];
                        nextUC = ucPos < charBufferLimit ? charBuffer[ucPos] : -1;
                        if (curUC < 128) {
                            loByte = curUC & 255;
                            if (UnicodeCompressor.sSingleTagTable[loByte]) {
                                if (bytePos + 1 >= byteBufferLimit) {
                                    --ucPos;
                                    break block4;
                                }
                                byteBuffer[bytePos++] = 1;
                            }
                            byteBuffer[bytePos++] = (byte)loByte;
                            continue;
                        }
                        if (this.inDynamicWindow(curUC, this.fCurrentWindow)) {
                            byteBuffer[bytePos++] = (byte)(curUC - this.fOffsets[this.fCurrentWindow] + 128);
                            continue;
                        }
                        if (!UnicodeCompressor.isCompressible(curUC)) {
                            if (nextUC != -1 && UnicodeCompressor.isCompressible(nextUC)) {
                                if (bytePos + 2 >= byteBufferLimit) {
                                    --ucPos;
                                    break block4;
                                }
                                byteBuffer[bytePos++] = 14;
                                byteBuffer[bytePos++] = (byte)(curUC >>> 8);
                                byteBuffer[bytePos++] = (byte)(curUC & 255);
                                continue;
                            }
                            if (bytePos + 3 >= byteBufferLimit) {
                                --ucPos;
                                break block4;
                            }
                            byteBuffer[bytePos++] = 15;
                            hiByte = curUC >>> 8;
                            loByte = curUC & 255;
                            if (UnicodeCompressor.sUnicodeTagTable[hiByte]) {
                                byteBuffer[bytePos++] = -16;
                            }
                            byteBuffer[bytePos++] = (byte)hiByte;
                            byteBuffer[bytePos++] = (byte)loByte;
                            this.fMode = 1;
                        } else {
                            whichWindow = this.findDynamicWindow(curUC);
                            if (whichWindow != -1) {
                                forwardUC = ucPos + 1 < charBufferLimit ? charBuffer[ucPos + 1] : -1;
                                if (this.inDynamicWindow(nextUC, whichWindow) && this.inDynamicWindow(forwardUC, whichWindow)) {
                                    if (bytePos + 1 >= byteBufferLimit) {
                                        --ucPos;
                                        break block4;
                                    }
                                    byteBuffer[bytePos++] = (byte)(16 + whichWindow);
                                    byteBuffer[bytePos++] = (byte)(curUC - this.fOffsets[whichWindow] + 128);
                                    this.fTimeStamps[whichWindow] = ++this.fTimeStamp;
                                    this.fCurrentWindow = whichWindow;
                                    continue;
                                }
                                if (bytePos + 1 >= byteBufferLimit) {
                                    --ucPos;
                                    break block4;
                                }
                                byteBuffer[bytePos++] = (byte)(1 + whichWindow);
                                byteBuffer[bytePos++] = (byte)(curUC - this.fOffsets[whichWindow] + 128);
                                continue;
                            }
                            whichWindow = UnicodeCompressor.findStaticWindow(curUC);
                            if (whichWindow != -1 && !UnicodeCompressor.inStaticWindow(nextUC, whichWindow)) {
                                if (bytePos + 1 >= byteBufferLimit) {
                                    --ucPos;
                                    break block4;
                                }
                                byteBuffer[bytePos++] = (byte)(1 + whichWindow);
                                byteBuffer[bytePos++] = (byte)(curUC - UnicodeCompressor.sOffsets[whichWindow]);
                                continue;
                            }
                            v0 = curIndex = UnicodeCompressor.makeIndex(curUC);
                            this.fIndexCount[v0] = this.fIndexCount[v0] + 1;
                            forwardUC = ucPos + 1 < charBufferLimit ? charBuffer[ucPos + 1] : -1;
                            if (this.fIndexCount[curIndex] > 1 || curIndex == UnicodeCompressor.makeIndex(nextUC) && curIndex == UnicodeCompressor.makeIndex(forwardUC)) {
                                if (bytePos + 2 >= byteBufferLimit) {
                                    --ucPos;
                                    break block4;
                                }
                                whichWindow = this.getLRDefinedWindow();
                                byteBuffer[bytePos++] = (byte)(24 + whichWindow);
                                byteBuffer[bytePos++] = (byte)curIndex;
                                byteBuffer[bytePos++] = (byte)(curUC - UnicodeCompressor.sOffsetTable[curIndex] + 128);
                                this.fOffsets[whichWindow] = UnicodeCompressor.sOffsetTable[curIndex];
                                this.fCurrentWindow = whichWindow;
                                this.fTimeStamps[whichWindow] = ++this.fTimeStamp;
                                continue;
                            }
                            if (bytePos + 3 >= byteBufferLimit) {
                                --ucPos;
                                break block4;
                            }
                            byteBuffer[bytePos++] = 15;
                            hiByte = curUC >>> 8;
                            loByte = curUC & 255;
                            if (UnicodeCompressor.sUnicodeTagTable[hiByte]) {
                                byteBuffer[bytePos++] = -16;
                            }
                            byteBuffer[bytePos++] = (byte)hiByte;
                            byteBuffer[bytePos++] = (byte)loByte;
                            this.fMode = 1;
                        }
                        ** GOTO lbl185
                    }
                    ** GOTO lbl185
                }
                case 1: {
                    while (ucPos < charBufferLimit && bytePos < byteBufferLimit) {
                        curUC = charBuffer[ucPos++];
                        nextUC = ucPos < charBufferLimit ? charBuffer[ucPos] : -1;
                        if (!UnicodeCompressor.isCompressible(curUC) || nextUC != -1 && !UnicodeCompressor.isCompressible(nextUC)) {
                            if (bytePos + 2 >= byteBufferLimit) {
                                --ucPos;
                                break block4;
                            }
                            hiByte = curUC >>> 8;
                            loByte = curUC & 255;
                            if (UnicodeCompressor.sUnicodeTagTable[hiByte]) {
                                byteBuffer[bytePos++] = -16;
                            }
                            byteBuffer[bytePos++] = (byte)hiByte;
                            byteBuffer[bytePos++] = (byte)loByte;
                            continue;
                        }
                        if (curUC < 128) {
                            loByte = curUC & 255;
                            if (nextUC != -1 && nextUC < 128 && !UnicodeCompressor.sSingleTagTable[loByte]) {
                                if (bytePos + 1 >= byteBufferLimit) {
                                    --ucPos;
                                    break block4;
                                }
                                whichWindow = this.fCurrentWindow;
                                byteBuffer[bytePos++] = (byte)(224 + whichWindow);
                                byteBuffer[bytePos++] = (byte)loByte;
                                this.fTimeStamps[whichWindow] = ++this.fTimeStamp;
                                this.fMode = 0;
                                break;
                            }
                            if (bytePos + 1 >= byteBufferLimit) {
                                --ucPos;
                                break block4;
                            }
                            byteBuffer[bytePos++] = 0;
                            byteBuffer[bytePos++] = (byte)loByte;
                            continue;
                        }
                        whichWindow = this.findDynamicWindow(curUC);
                        if (whichWindow != -1) {
                            if (this.inDynamicWindow(nextUC, whichWindow)) {
                                if (bytePos + 1 >= byteBufferLimit) {
                                    --ucPos;
                                    break block4;
                                }
                                byteBuffer[bytePos++] = (byte)(224 + whichWindow);
                                byteBuffer[bytePos++] = (byte)(curUC - this.fOffsets[whichWindow] + 128);
                                this.fTimeStamps[whichWindow] = ++this.fTimeStamp;
                                this.fCurrentWindow = whichWindow;
                                this.fMode = 0;
                                break;
                            }
                            if (bytePos + 2 >= byteBufferLimit) {
                                --ucPos;
                                break block4;
                            }
                            hiByte = curUC >>> 8;
                            loByte = curUC & 255;
                            if (UnicodeCompressor.sUnicodeTagTable[hiByte]) {
                                byteBuffer[bytePos++] = -16;
                            }
                            byteBuffer[bytePos++] = (byte)hiByte;
                            byteBuffer[bytePos++] = (byte)loByte;
                            continue;
                        }
                        v1 = curIndex = UnicodeCompressor.makeIndex(curUC);
                        this.fIndexCount[v1] = this.fIndexCount[v1] + 1;
                        forwardUC = ucPos + 1 < charBufferLimit ? charBuffer[ucPos + 1] : -1;
                        if (this.fIndexCount[curIndex] > 1 || curIndex == UnicodeCompressor.makeIndex(nextUC) && curIndex == UnicodeCompressor.makeIndex(forwardUC)) {
                            if (bytePos + 2 >= byteBufferLimit) {
                                --ucPos;
                                break block4;
                            }
                            whichWindow = this.getLRDefinedWindow();
                            byteBuffer[bytePos++] = (byte)(232 + whichWindow);
                            byteBuffer[bytePos++] = (byte)curIndex;
                            byteBuffer[bytePos++] = (byte)(curUC - UnicodeCompressor.sOffsetTable[curIndex] + 128);
                            this.fOffsets[whichWindow] = UnicodeCompressor.sOffsetTable[curIndex];
                            this.fCurrentWindow = whichWindow;
                            this.fTimeStamps[whichWindow] = ++this.fTimeStamp;
                            this.fMode = 0;
                            break;
                        }
                        if (bytePos + 2 >= byteBufferLimit) {
                            --ucPos;
                            break block4;
                        }
                        hiByte = curUC >>> 8;
                        loByte = curUC & 255;
                        if (UnicodeCompressor.sUnicodeTagTable[hiByte]) {
                            byteBuffer[bytePos++] = -16;
                        }
                        byteBuffer[bytePos++] = (byte)hiByte;
                        byteBuffer[bytePos++] = (byte)loByte;
                    }
                }
lbl185:
                // 8 sources

                default: lbl-1000:
                // 2 sources

                {
                    if (ucPos < charBufferLimit && bytePos < byteBufferLimit) continue block4;
                }
            }
        }
        if (charsRead != null) {
            charsRead[0] = ucPos - charBufferStart;
        }
        return bytePos - byteBufferStart;
    }

    public void reset() {
        this.fOffsets[0] = 128;
        this.fOffsets[1] = 192;
        this.fOffsets[2] = 1024;
        this.fOffsets[3] = 1536;
        this.fOffsets[4] = 2304;
        this.fOffsets[5] = 12352;
        this.fOffsets[6] = 12448;
        this.fOffsets[7] = 65280;
        int i = 0;
        while (i < 8) {
            this.fTimeStamps[i] = 0;
            ++i;
        }
        i = 0;
        while (i <= 255) {
            this.fIndexCount[i] = 0;
            ++i;
        }
        this.fTimeStamp = 0;
        this.fCurrentWindow = 0;
        this.fMode = 0;
    }

    private static int makeIndex(int c) {
        if (c >= 192 && c < 320) {
            return 249;
        }
        if (c >= 592 && c < 720) {
            return 250;
        }
        if (c >= 880 && c < 1008) {
            return 251;
        }
        if (c >= 1328 && c < 1424) {
            return 252;
        }
        if (c >= 12352 && c < 12448) {
            return 253;
        }
        if (c >= 12448 && c < 12576) {
            return 254;
        }
        if (c >= 65376 && c < 65439) {
            return 255;
        }
        if (c >= 128 && c < 13312) {
            return c / 128 & 0xFF;
        }
        if (c >= 57344 && c <= 65535) {
            return (c - 44032) / 128 & 0xFF;
        }
        return 0;
    }

    private boolean inDynamicWindow(int c, int whichWindow) {
        return c >= this.fOffsets[whichWindow] && c < this.fOffsets[whichWindow] + 128;
    }

    private static boolean inStaticWindow(int c, int whichWindow) {
        return c >= sOffsets[whichWindow] && c < sOffsets[whichWindow] + 128;
    }

    private static boolean isCompressible(int c) {
        return c < 13312 || c >= 57344;
    }

    private int findDynamicWindow(int c) {
        int i = 7;
        while (i >= 0) {
            if (this.inDynamicWindow(c, i)) {
                int n = i;
                this.fTimeStamps[n] = this.fTimeStamps[n] + 1;
                return i;
            }
            --i;
        }
        return -1;
    }

    private static int findStaticWindow(int c) {
        int i = 7;
        while (i >= 0) {
            if (UnicodeCompressor.inStaticWindow(c, i)) {
                return i;
            }
            --i;
        }
        return -1;
    }

    private int getLRDefinedWindow() {
        int leastRU = Integer.MAX_VALUE;
        int whichWindow = -1;
        int i = 7;
        while (i >= 0) {
            if (this.fTimeStamps[i] < leastRU) {
                leastRU = this.fTimeStamps[i];
                whichWindow = i;
            }
            --i;
        }
        return whichWindow;
    }
}

