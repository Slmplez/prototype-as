/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import org.eclipse.swt.internal.image.PngDecodingDataStream;

public class PngHuffmanTable {
    CodeLengthInfo[] codeLengthInfo;
    int[] codeValues;
    static final int MAX_CODE_LENGTH = 15;
    static final int BAD_CODE = 0xFFFFFFF;
    static final int[] incs = new int[]{1391376, 463792, 198768, 86961, 33936, 13776, 4592, 1968, 861, 336, 112, 48, 21, 7, 3, 1};

    PngHuffmanTable(int[] lengths) {
        this.initialize(lengths);
        this.generateTable(lengths);
    }

    private void initialize(int[] lengths) {
        this.codeValues = new int[lengths.length];
        int i = 0;
        while (i < this.codeValues.length) {
            this.codeValues[i] = i;
            ++i;
        }
        this.codeLengthInfo = new CodeLengthInfo[15];
        i = 0;
        while (i < 15) {
            this.codeLengthInfo[i] = new CodeLengthInfo();
            this.codeLengthInfo[i].length = i;
            this.codeLengthInfo[i].baseIndex = 0;
            this.codeLengthInfo[i].min = 0xFFFFFFF;
            this.codeLengthInfo[i].max = -1;
            ++i;
        }
    }

    /*
     * Unable to fully structure code
     */
    private void generateTable(int[] lengths) {
        k = 0;
        while (k < 16) {
            i = h = PngHuffmanTable.incs[k];
            while (i < lengths.length) {
                v = lengths[i];
                codeValuesTemp = this.codeValues[i];
                j = i;
                while (j >= h && (lengths[j - h] > v || lengths[j - h] == v && this.codeValues[j - h] > codeValuesTemp)) {
                    lengths[j] = lengths[j - h];
                    this.codeValues[j] = this.codeValues[j - h];
                    j -= h;
                }
                lengths[j] = v;
                this.codeValues[j] = codeValuesTemp;
                ++i;
            }
            ++k;
        }
        codes = new int[lengths.length];
        lastLength = 0;
        code = 0;
        i = 0;
        ** GOTO lbl31
        {
            ++lastLength;
            code <<= 1;
            do {
                if (lastLength != lengths[i]) continue block3;
                if (lastLength != 0) {
                    codes[i] = code++;
                }
                ++i;
lbl31:
                // 2 sources

            } while (i < lengths.length);
        }
        last = 0;
        i = 0;
        while (i < lengths.length) {
            if (last != lengths[i]) {
                last = lengths[i];
                this.codeLengthInfo[last - 1].baseIndex = i;
                this.codeLengthInfo[last - 1].min = codes[i];
            }
            if (last != 0) {
                this.codeLengthInfo[last - 1].max = codes[i];
            }
            ++i;
        }
    }

    int getNextValue(PngDecodingDataStream stream) throws IOException {
        int code = stream.getNextIdatBit();
        int codelength = 0;
        while (codelength < 15 && code > this.codeLengthInfo[codelength].max) {
            code = code << 1 | stream.getNextIdatBit();
            ++codelength;
        }
        if (codelength >= 15) {
            stream.error();
        }
        int offset = code - this.codeLengthInfo[codelength].min;
        int index = this.codeLengthInfo[codelength].baseIndex + offset;
        return this.codeValues[index];
    }

    static class CodeLengthInfo {
        int length;
        int max;
        int min;
        int baseIndex;

        CodeLengthInfo() {
        }
    }
}

