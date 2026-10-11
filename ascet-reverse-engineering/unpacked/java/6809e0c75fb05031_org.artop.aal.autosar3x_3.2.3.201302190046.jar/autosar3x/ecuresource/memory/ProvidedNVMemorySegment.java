/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.memory;

import autosar3x.ecuresource.memory.ProvidedMemorySegment;

public interface ProvidedNVMemorySegment
extends ProvidedMemorySegment {
    public Integer getDataEndurance();

    public void setDataEndurance(Integer var1);

    public void unsetDataEndurance();

    public boolean isSetDataEndurance();

    public Double getDataRetention();

    public void setDataRetention(Double var1);

    public void unsetDataRetention();

    public boolean isSetDataRetention();

    public Boolean getMarginReadAvailable();

    public void setMarginReadAvailable(Boolean var1);

    public void unsetMarginReadAvailable();

    public boolean isSetMarginReadAvailable();

    public Integer getSegmentSizeErase();

    public void setSegmentSizeErase(Integer var1);

    public void unsetSegmentSizeErase();

    public boolean isSetSegmentSizeErase();

    public Integer getSegmentSizeWrite();

    public void setSegmentSizeWrite(Integer var1);

    public void unsetSegmentSizeWrite();

    public boolean isSetSegmentSizeWrite();
}

