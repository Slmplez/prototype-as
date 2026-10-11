/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4ttcan.ttcancommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcanTriggerType;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCycle;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface TtcanAbsolutelyScheduledTiming
extends ARObject {
    public CanFrameTriggering getCanFrameTriggering();

    public void setCanFrameTriggering(CanFrameTriggering var1);

    public CommunicationCycle getCommunicationCycle();

    public void setCommunicationCycle(CommunicationCycle var1);

    public Integer getTimeMark();

    public void setTimeMark(Integer var1);

    public void unsetTimeMark();

    public boolean isSetTimeMark();

    public TtcanTriggerType getTrigger();

    public void setTrigger(TtcanTriggerType var1);

    public void unsetTrigger();

    public boolean isSetTrigger();

    public IntegerDatatype getTimeMarkData();

    public void setTimeMarkData(IntegerDatatype var1);
}

