/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.CurveKindT;
import com.etas.amd620.core.ComponentData.DimensionalDataT;
import com.etas.amd620.core.ComponentData.DistributionInfoT;
import com.etas.amd620.core.ComponentData.ExtrapolationType;

public interface OneDType
extends DimensionalDataT {
    public ArrayT getXAxis();

    public void setXAxis(ArrayT var1);

    public DistributionInfoT getXDistribution();

    public void setXDistribution(DistributionInfoT var1);

    public ArrayT getValues();

    public void setValues(ArrayT var1);

    public ExtrapolationType getExtrapolation();

    public void setExtrapolation(ExtrapolationType var1);

    public void unsetExtrapolation();

    public boolean isSetExtrapolation();

    public String getInterpolation();

    public void setInterpolation(String var1);

    public CurveKindT getType();

    public void setType(CurveKindT var1);

    public void unsetType();

    public boolean isSetType();
}

