/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.axis;

import autosar40.commonstructure.axis.SwAxisGeneric;
import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;

public interface SwGenericAxisParam
extends ARObject {
    public SwAxisGeneric getSwAxisGeneric();

    public void setSwAxisGeneric(SwAxisGeneric var1);

    public SwGenericAxisParamType getSwGenericAxisParamType();

    public void setSwGenericAxisParamType(SwGenericAxisParamType var1);

    public NumericalValueVariationPoint getVf();

    public void setVf(NumericalValueVariationPoint var1);
}

