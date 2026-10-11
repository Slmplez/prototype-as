/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype
 */
package autosar40.swcomponent.datatype.dataprototypes;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype;

public interface ParameterDataPrototype
extends AutosarDataPrototype,
GParameterDataPrototype {
    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

