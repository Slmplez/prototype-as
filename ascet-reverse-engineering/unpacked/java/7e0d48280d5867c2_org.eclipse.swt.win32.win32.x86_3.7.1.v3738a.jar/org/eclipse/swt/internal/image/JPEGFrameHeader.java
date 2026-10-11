/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

final class JPEGFrameHeader
extends JPEGVariableSizeSegment {
    int maxVFactor;
    int maxHFactor;
    public int[] componentIdentifiers;
    public int[][] componentParameters;

    public JPEGFrameHeader(byte[] reference) {
        super(reference);
    }

    public JPEGFrameHeader(LEDataInputStream byteStream) {
        super(byteStream);
        this.initializeComponentParameters();
    }

    public int getSamplePrecision() {
        return this.reference[4] & 0xFF;
    }

    public int getNumberOfLines() {
        return (this.reference[5] & 0xFF) << 8 | this.reference[6] & 0xFF;
    }

    public int getSamplesPerLine() {
        return (this.reference[7] & 0xFF) << 8 | this.reference[8] & 0xFF;
    }

    public int getNumberOfImageComponents() {
        return this.reference[9] & 0xFF;
    }

    public void setSamplePrecision(int precision) {
        this.reference[4] = (byte)(precision & 0xFF);
    }

    public void setNumberOfLines(int anInteger) {
        this.reference[5] = (byte)((anInteger & 0xFF00) >> 8);
        this.reference[6] = (byte)(anInteger & 0xFF);
    }

    public void setSamplesPerLine(int samples) {
        this.reference[7] = (byte)((samples & 0xFF00) >> 8);
        this.reference[8] = (byte)(samples & 0xFF);
    }

    public void setNumberOfImageComponents(int anInteger) {
        this.reference[9] = (byte)(anInteger & 0xFF);
    }

    public int getMaxHFactor() {
        return this.maxHFactor;
    }

    public int getMaxVFactor() {
        return this.maxVFactor;
    }

    public void setMaxHFactor(int anInteger) {
        this.maxHFactor = anInteger;
    }

    public void setMaxVFactor(int anInteger) {
        this.maxVFactor = anInteger;
    }

    void initializeComponentParameters() {
        int nf = this.getNumberOfImageComponents();
        this.componentIdentifiers = new int[nf];
        int[][] compSpecParams = new int[][]{};
        int hmax = 1;
        int vmax = 1;
        int i = 0;
        while (i < nf) {
            int ci;
            int ofs = i * 3 + 10;
            this.componentIdentifiers[i] = ci = this.reference[ofs] & 0xFF;
            int hi = (this.reference[ofs + 1] & 0xFF) >> 4;
            int vi = this.reference[ofs + 1] & 0xF;
            int tqi = this.reference[ofs + 2] & 0xFF;
            if (hi > hmax) {
                hmax = hi;
            }
            if (vi > vmax) {
                vmax = vi;
            }
            int[] compParam = new int[5];
            compParam[0] = tqi;
            compParam[1] = hi;
            compParam[2] = vi;
            if (compSpecParams.length <= ci) {
                int[][] newParams = new int[ci + 1][];
                System.arraycopy(compSpecParams, 0, newParams, 0, compSpecParams.length);
                compSpecParams = newParams;
            }
            compSpecParams[ci] = compParam;
            ++i;
        }
        int x = this.getSamplesPerLine();
        int y = this.getNumberOfLines();
        int[] multiples = new int[]{8, 16, 24, 32};
        int i2 = 0;
        while (i2 < nf) {
            int[] compParam = compSpecParams[this.componentIdentifiers[i2]];
            int hi = compParam[1];
            int vi = compParam[2];
            int compWidth = (x * hi + hmax - 1) / hmax;
            int compHeight = (y * vi + vmax - 1) / vmax;
            int dsWidth = this.roundUpToMultiple(compWidth, multiples[hi - 1]);
            int dsHeight = this.roundUpToMultiple(compHeight, multiples[vi - 1]);
            compParam[3] = dsWidth;
            compParam[4] = dsHeight;
            ++i2;
        }
        this.setMaxHFactor(hmax);
        this.setMaxVFactor(vmax);
        this.componentParameters = compSpecParams;
    }

    public void initializeContents() {
        int nf = this.getNumberOfImageComponents();
        if (nf == 0 || nf != this.componentParameters.length) {
            SWT.error(40);
        }
        int hmax = 0;
        int vmax = 0;
        int[][] compSpecParams = this.componentParameters;
        int i = 0;
        while (i < nf) {
            int ofs = i * 3 + 10;
            int[] compParam = compSpecParams[this.componentIdentifiers[i]];
            int hi = compParam[1];
            int vi = compParam[2];
            if (hi * vi > 4) {
                SWT.error(40);
            }
            this.reference[ofs] = (byte)(i + 1);
            this.reference[ofs + 1] = (byte)(hi * 16 + vi);
            this.reference[ofs + 2] = (byte)compParam[0];
            if (hi > hmax) {
                hmax = hi;
            }
            if (vi > vmax) {
                vmax = vi;
            }
            ++i;
        }
        int x = this.getSamplesPerLine();
        int y = this.getNumberOfLines();
        int[] multiples = new int[]{8, 16, 24, 32};
        int i2 = 0;
        while (i2 < nf) {
            int[] compParam = compSpecParams[this.componentIdentifiers[i2]];
            int hi = compParam[1];
            int vi = compParam[2];
            int compWidth = (x * hi + hmax - 1) / hmax;
            int compHeight = (y * vi + vmax - 1) / vmax;
            int dsWidth = this.roundUpToMultiple(compWidth, multiples[hi - 1]);
            int dsHeight = this.roundUpToMultiple(compHeight, multiples[vi - 1]);
            compParam[3] = dsWidth;
            compParam[4] = dsHeight;
            ++i2;
        }
        this.setMaxHFactor(hmax);
        this.setMaxVFactor(vmax);
    }

    int roundUpToMultiple(int anInteger, int mInteger) {
        int a = anInteger + mInteger - 1;
        return a - a % mInteger;
    }

    public boolean verify() {
        int marker = this.getSegmentMarker();
        return marker >= 65472 && marker <= 65475 || marker >= 65477 && marker <= 65479 || marker >= 65481 && marker <= 65483 || marker >= 65485 && marker <= 65487;
    }

    public boolean isProgressive() {
        int marker = this.getSegmentMarker();
        return marker == 65474 || marker == 65478 || marker == 65482 || marker == 65486;
    }

    public boolean isArithmeticCoding() {
        return this.getSegmentMarker() >= 65481;
    }
}

