/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.memory;

import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.basicelements.ErrorDetectionCorrection;

public interface ProvidedMemorySegment
extends HWElement {
    public Integer getAlignment();

    public void setAlignment(Integer var1);

    public void unsetAlignment();

    public boolean isSetAlignment();

    public ErrorDetectionCorrection getArchitecturalQuality();

    public void setArchitecturalQuality(ErrorDetectionCorrection var1);

    public Double getManufacturingQuality();

    public void setManufacturingQuality(Double var1);

    public void unsetManufacturingQuality();

    public boolean isSetManufacturingQuality();

    public Integer getSegmentSize();

    public void setSegmentSize(Integer var1);

    public void unsetSegmentSize();

    public boolean isSetSegmentSize();

    public Boolean getSeparate();

    public void setSeparate(Boolean var1);

    public void unsetSeparate();

    public boolean isSetSeparate();
}

