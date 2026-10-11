/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;

public interface ParameterAccess
extends Identifiable,
GParameterAccess {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public AutosarParameterRef getAccessedParameter();

    public void setAccessedParameter(AutosarParameterRef var1);

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

