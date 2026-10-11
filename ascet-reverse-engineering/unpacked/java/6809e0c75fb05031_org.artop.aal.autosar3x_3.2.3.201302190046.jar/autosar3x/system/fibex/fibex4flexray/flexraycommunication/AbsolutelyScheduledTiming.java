/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4flexray.flexraycommunication;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4flexray.CommunicationCycle;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;

public interface AbsolutelyScheduledTiming
extends ARObject {
    public FlexrayFrameTriggering getFlexrayFrameTriggering();

    public void setFlexrayFrameTriggering(FlexrayFrameTriggering var1);

    public CommunicationCycle getCommunicationCycle();

    public void setCommunicationCycle(CommunicationCycle var1);

    public Integer getSlotID();

    public void setSlotID(Integer var1);

    public void unsetSlotID();

    public boolean isSetSlotID();
}

