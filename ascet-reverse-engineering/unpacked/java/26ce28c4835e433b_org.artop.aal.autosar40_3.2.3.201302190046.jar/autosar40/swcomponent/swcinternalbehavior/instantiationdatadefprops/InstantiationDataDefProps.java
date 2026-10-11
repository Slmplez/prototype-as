/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;

public interface InstantiationDataDefProps
extends ARObject {
    public AutosarParameterRef getParameterInstance();

    public void setParameterInstance(AutosarParameterRef var1);

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public AutosarVariableRef getVariableInstance();

    public void setVariableInstance(AutosarVariableRef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

