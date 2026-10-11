/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

final class JPEGScanHeader
extends JPEGVariableSizeSegment {
    public int[][] componentParameters;

    public JPEGScanHeader(byte[] reference) {
        super(reference);
    }

    public JPEGScanHeader(LEDataInputStream byteStream) {
        super(byteStream);
        this.initializeComponentParameters();
    }

    public int getApproxBitPositionHigh() {
        return this.reference[2 * this.getNumberOfImageComponents() + 7] >> 4;
    }

    public int getApproxBitPositionLow() {
        return this.reference[2 * this.getNumberOfImageComponents() + 7] & 0xF;
    }

    public int getEndOfSpectralSelection() {
        return this.reference[2 * this.getNumberOfImageComponents() + 6];
    }

    public int getNumberOfImageComponents() {
        return this.reference[4];
    }

    public int getStartOfSpectralSelection() {
        return this.reference[2 * this.getNumberOfImageComponents() + 5];
    }

    void initializeComponentParameters() {
        int compCount = this.getNumberOfImageComponents();
        this.componentParameters = new int[0][];
        int i = 0;
        while (i < compCount) {
            int ofs = 5 + i * 2;
            int cid = this.reference[ofs] & 0xFF;
            int dc = (this.reference[ofs + 1] & 0xFF) >> 4;
            int ac = this.reference[ofs + 1] & 0xF;
            if (this.componentParameters.length <= cid) {
                int[][] newParams = new int[cid + 1][];
                System.arraycopy(this.componentParameters, 0, newParams, 0, this.componentParameters.length);
                this.componentParameters = newParams;
            }
            this.componentParameters[cid] = new int[]{dc, ac};
            ++i;
        }
    }

    public void initializeContents() {
        int compCount = this.getNumberOfImageComponents();
        int[][] compSpecParams = this.componentParameters;
        if (compCount == 0 || compCount != compSpecParams.length) {
            SWT.error(40);
        }
        int i = 0;
        while (i < compCount) {
            int ofs = i * 2 + 5;
            int[] compParams = compSpecParams[i];
            this.reference[ofs] = (byte)(i + 1);
            this.reference[ofs + 1] = (byte)(compParams[0] * 16 + compParams[1]);
            ++i;
        }
    }

    public void setEndOfSpectralSelection(int anInteger) {
        this.reference[2 * this.getNumberOfImageComponents() + 6] = (byte)anInteger;
    }

    public void setNumberOfImageComponents(int anInteger) {
        this.reference[4] = (byte)(anInteger & 0xFF);
    }

    public void setStartOfSpectralSelection(int anInteger) {
        this.reference[2 * this.getNumberOfImageComponents() + 5] = (byte)anInteger;
    }

    public int signature() {
        return 65498;
    }

    public boolean verifyProgressiveScan() {
        int start = this.getStartOfSpectralSelection();
        int end = this.getEndOfSpectralSelection();
        int low = this.getApproxBitPositionLow();
        int high = this.getApproxBitPositionHigh();
        int count = this.getNumberOfImageComponents();
        if ((start == 0 && end == 0 || start <= end && end <= 63) && low <= 13 && high <= 13 && (high == 0 || high == low + 1)) {
            return start == 0 || start > 0 && count == 1;
        }
        return false;
    }

    public boolean isACProgressiveScan() {
        return this.getStartOfSpectralSelection() != 0 && this.getEndOfSpectralSelection() != 0;
    }

    public boolean isDCProgressiveScan() {
        return this.getStartOfSpectralSelection() == 0 && this.getEndOfSpectralSelection() == 0;
    }

    public boolean isFirstScan() {
        return this.getApproxBitPositionHigh() == 0;
    }
}

