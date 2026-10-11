/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.axis;

import autosar3x.commonstructure.axis.SwAxisGeneric;
import autosar3x.commonstructure.axis.SwGenericAxisParamType;
import autosar3x.commonstructure.datadefproperties.SwGenericAxisParamValue;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwGenericAxisParam
extends ARObject {
    public SwAxisGeneric getSwAxisGeneric();

    public void setSwAxisGeneric(SwAxisGeneric var1);

    public SwGenericAxisParamType getSwGenericAxisParamType();

    public void setSwGenericAxisParamType(SwGenericAxisParamType var1);

    public SwGenericAxisParamValue getSwGenericAxisParamValue();

    public void setSwGenericAxisParamValue(SwGenericAxisParamValue var1);
}

