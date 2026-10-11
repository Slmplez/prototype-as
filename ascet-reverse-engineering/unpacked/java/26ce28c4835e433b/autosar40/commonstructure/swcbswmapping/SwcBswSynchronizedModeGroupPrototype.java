/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.swcbswmapping;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.PModeGroupInAtomicSwcInstanceRef;

public interface SwcBswSynchronizedModeGroupPrototype
extends ARObject {
    public SwcBswMapping getSwcBswMapping();

    public void setSwcBswMapping(SwcBswMapping var1);

    public ModeDeclarationGroupPrototype getBswModeGroup();

    public void setBswModeGroup(ModeDeclarationGroupPrototype var1);

    public PModeGroupInAtomicSwcInstanceRef getSwcModeGroup();

    public void setSwcModeGroup(PModeGroupInAtomicSwcInstanceRef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

