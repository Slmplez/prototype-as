/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communication.SignalTriggerDataEventConditionEnum;
import autosar21.system.systemsignal.ClusterSignal;

public interface SignalTrigger
extends ARObject {
    public ClusterSignal getComparedSignal();

    public void setComparedSignal(ClusterSignal var1);

    public SignalTriggerDataEventConditionEnum getDataEventCondition();

    public void setDataEventCondition(SignalTriggerDataEventConditionEnum var1);

    public void unsetDataEventCondition();

    public boolean isSetDataEventCondition();
}

