/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GParamConfMultiplicity
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import gautosar.gecucparameterdef.GParamConfMultiplicity;

public interface EcucDefinitionElement
extends Identifiable,
GParamConfMultiplicity {
    public EcucConditionSpecification getEcucCond();

    public void setEcucCond(EcucConditionSpecification var1);

    public PositiveIntegerValueVariationPoint getLowerMultiplicity();

    public void setLowerMultiplicity(PositiveIntegerValueVariationPoint var1);

    public PositiveIntegerValueVariationPoint getUpperMultiplicity();

    public void setUpperMultiplicity(PositiveIntegerValueVariationPoint var1);

    public BooleanValueVariationPoint getUpperMultiplicityInfinite();

    public void setUpperMultiplicityInfinite(BooleanValueVariationPoint var1);
}

