/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswModeSwitchAckRequest;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface BswModeSenderPolicy
extends ARObject {
    public BswInternalBehavior getBswInternalBehavior();

    public void setBswInternalBehavior(BswInternalBehavior var1);

    public BswModeSwitchAckRequest getAckRequest();

    public void setAckRequest(BswModeSwitchAckRequest var1);

    public Boolean getEnhancedModeApi();

    public void setEnhancedModeApi(Boolean var1);

    public void unsetEnhancedModeApi();

    public boolean isSetEnhancedModeApi();

    public ModeDeclarationGroupPrototype getProvidedModeGroup();

    public void setProvidedModeGroup(ModeDeclarationGroupPrototype var1);

    public Long getQueueLength();

    public void setQueueLength(Long var1);

    public void unsetQueueLength();

    public boolean isSetQueueLength();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getQueueLengthData();

    public void setQueueLengthData(PositiveIntegerDatatype var1);
}

