/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.axis;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGeneric;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParamType;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwGenericAxisParamValue;

public interface SwGenericAxisParam
extends ARObject {
    public SwAxisGeneric getSwAxisGeneric();

    public void setSwAxisGeneric(SwAxisGeneric var1);

    public SwGenericAxisParamType getSwGenericAxisParamType();

    public void setSwGenericAxisParamType(SwGenericAxisParamType var1);

    public SwGenericAxisParamValue getSwGenericAxisParamValue();

    public void setSwGenericAxisParamValue(SwGenericAxisParamValue var1);
}

