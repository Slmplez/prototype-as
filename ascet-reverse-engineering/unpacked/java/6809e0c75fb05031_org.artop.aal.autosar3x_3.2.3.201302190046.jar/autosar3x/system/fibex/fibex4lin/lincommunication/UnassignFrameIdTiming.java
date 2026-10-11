/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.system.fibex.fibex4lin.lincommunication.AssignmentTimingType;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;

public interface UnassignFrameIdTiming
extends AssignmentTimingType {
    public LinFrameTriggering getUnassignedFrameTriggering();

    public void setUnassignedFrameTriggering(LinFrameTriggering var1);
}

