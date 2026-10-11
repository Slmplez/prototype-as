/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.system.fibex.fibex4lin.lincommunication.AssignmentTimingType;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;

public interface AssignFrameIdTiming
extends AssignmentTimingType {
    public LinFrameTriggering getAssignedFrameTriggering();

    public void setAssignedFrameTriggering(LinFrameTriggering var1);
}

