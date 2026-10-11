/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucParameterValue;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;

public interface EcucNumericalParamValue
extends EcucParameterValue {
    public NumericalValueVariationPoint getValue();

    public void setValue(NumericalValueVariationPoint var1);
}

