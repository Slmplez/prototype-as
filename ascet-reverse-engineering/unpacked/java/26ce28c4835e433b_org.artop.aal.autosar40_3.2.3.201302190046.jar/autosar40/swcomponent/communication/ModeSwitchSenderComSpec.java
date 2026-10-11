/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.swcomponent.communication;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.swcomponent.communication.ModeSwitchedAckRequest;
import autosar40.swcomponent.communication.PPortComSpec;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface ModeSwitchSenderComSpec
extends PPortComSpec {
    public Boolean getEnhancedModeApi();

    public void setEnhancedModeApi(Boolean var1);

    public void unsetEnhancedModeApi();

    public boolean isSetEnhancedModeApi();

    public ModeDeclarationGroupPrototype getModeGroup();

    public void setModeGroup(ModeDeclarationGroupPrototype var1);

    public ModeSwitchedAckRequest getModeSwitchedAck();

    public void setModeSwitchedAck(ModeSwitchedAckRequest var1);

    public Long getQueueLength();

    public void setQueueLength(Long var1);

    public void unsetQueueLength();

    public boolean isSetQueueLength();

    public PositiveIntegerDatatype getQueueLengthData();

    public void setQueueLengthData(PositiveIntegerDatatype var1);
}

