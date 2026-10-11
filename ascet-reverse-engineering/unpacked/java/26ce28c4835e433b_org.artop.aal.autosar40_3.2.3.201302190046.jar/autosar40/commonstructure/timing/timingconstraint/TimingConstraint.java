/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingconstraint;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface TimingConstraint
extends Identifiable,
Traceable {
    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

