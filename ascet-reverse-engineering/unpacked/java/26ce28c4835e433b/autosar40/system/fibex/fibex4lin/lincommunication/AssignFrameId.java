/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.LinConfigurationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;

public interface AssignFrameId
extends LinConfigurationEntry {
    public LinFrameTriggering getAssignedFrameTriggering();

    public void setAssignedFrameTriggering(LinFrameTriggering var1);
}

