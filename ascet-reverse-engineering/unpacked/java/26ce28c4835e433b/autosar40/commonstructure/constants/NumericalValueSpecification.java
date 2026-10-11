/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.constants;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;

public interface NumericalValueSpecification
extends ValueSpecification {
    public NumericalValueVariationPoint getValue();

    public void setValue(NumericalValueVariationPoint var1);
}

