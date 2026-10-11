/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface BswModeReceiverPolicy
extends ARObject {
    public BswInternalBehavior getBswInternalBehavior();

    public void setBswInternalBehavior(BswInternalBehavior var1);

    public Boolean getEnhancedModeApi();

    public void setEnhancedModeApi(Boolean var1);

    public void unsetEnhancedModeApi();

    public boolean isSetEnhancedModeApi();

    public ModeDeclarationGroupPrototype getRequiredModeGroup();

    public void setRequiredModeGroup(ModeDeclarationGroupPrototype var1);

    public Boolean getSupportsAsynchronousModeSwitch();

    public void setSupportsAsynchronousModeSwitch(Boolean var1);

    public void unsetSupportsAsynchronousModeSwitch();

    public boolean isSetSupportsAsynchronousModeSwitch();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

