/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.basicelements;

import autosar21.genericstructure.infrastructure.ARObject;

public interface ErrorDetectionCorrection
extends ARObject {
    public Integer getCorrectedBits();

    public void setCorrectedBits(Integer var1);

    public void unsetCorrectedBits();

    public boolean isSetCorrectedBits();

    public Integer getDetectedBits();

    public void setDetectedBits(Integer var1);

    public void unsetDetectedBits();

    public boolean isSetDetectedBits();

    public Integer getExtraBits();

    public void setExtraBits(Integer var1);

    public void unsetExtraBits();

    public boolean isSetExtraBits();
}

