/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;

public interface FlexrayFifoRange
extends ARObject {
    public FlexrayFifoConfiguration getFlexrayFifoConfiguration();

    public void setFlexrayFifoConfiguration(FlexrayFifoConfiguration var1);

    public Integer getRangeMax();

    public void setRangeMax(Integer var1);

    public void unsetRangeMax();

    public boolean isSetRangeMax();

    public Integer getRangeMin();

    public void setRangeMin(Integer var1);

    public void unsetRangeMin();

    public boolean isSetRangeMin();
}

