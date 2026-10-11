/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwBitRepresentation
extends ARObject {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public Integer getBitPosition();

    public void setBitPosition(Integer var1);

    public void unsetBitPosition();

    public boolean isSetBitPosition();

    public Integer getNumberOfBits();

    public void setNumberOfBits(Integer var1);

    public void unsetNumberOfBits();

    public boolean isSetNumberOfBits();
}

