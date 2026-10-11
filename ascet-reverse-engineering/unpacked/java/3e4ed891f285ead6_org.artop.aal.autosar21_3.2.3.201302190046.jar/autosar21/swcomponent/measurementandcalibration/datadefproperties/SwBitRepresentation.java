/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;

public interface SwBitRepresentation
extends ARObject {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public String getBitPosition();

    public void setBitPosition(String var1);

    public void unsetBitPosition();

    public boolean isSetBitPosition();

    public String getNumberOfBits();

    public void setNumberOfBits(String var1);

    public void unsetNumberOfBits();

    public boolean isSetNumberOfBits();
}

