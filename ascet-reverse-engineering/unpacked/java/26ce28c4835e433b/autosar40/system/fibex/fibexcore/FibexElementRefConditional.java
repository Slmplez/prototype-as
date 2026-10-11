/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.System;
import autosar40.system.fibex.fibexcore.FibexElement;

public interface FibexElementRefConditional
extends ARObject {
    public System getSystem();

    public void setSystem(System var1);

    public FibexElement getFibexElement();

    public void setFibexElement(FibexElement var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

