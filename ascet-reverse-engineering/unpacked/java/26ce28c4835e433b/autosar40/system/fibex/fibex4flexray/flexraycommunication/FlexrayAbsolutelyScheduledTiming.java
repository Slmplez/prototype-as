/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.fibex.fibex4flexray.flexraycommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCycle;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface FlexrayAbsolutelyScheduledTiming
extends ARObject {
    public FlexrayFrameTriggering getFlexrayFrameTriggering();

    public void setFlexrayFrameTriggering(FlexrayFrameTriggering var1);

    public CommunicationCycle getCommunicationCycle();

    public void setCommunicationCycle(CommunicationCycle var1);

    public Long getSlotID();

    public void setSlotID(Long var1);

    public void unsetSlotID();

    public boolean isSetSlotID();

    public PositiveIntegerDatatype getSlotIDData();

    public void setSlotIDData(PositiveIntegerDatatype var1);
}

