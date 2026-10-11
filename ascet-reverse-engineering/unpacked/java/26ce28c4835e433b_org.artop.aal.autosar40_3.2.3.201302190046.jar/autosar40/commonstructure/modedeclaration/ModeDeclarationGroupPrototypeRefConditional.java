/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.modedeclaration;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface ModeDeclarationGroupPrototypeRefConditional
extends ARObject {
    public ModeDeclarationGroupPrototype getModeDeclarationGroupPrototype();

    public void setModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

