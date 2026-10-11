/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.system.fibex.fibex4lin.lincommunication.RelativelyScheduledTiming;
import autosar3x.system.fibex.fibex4lin.lintopology.LinCommunicationController;

public interface AssignmentTimingType
extends RelativelyScheduledTiming {
    public LinCommunicationController getAssignedController();

    public void setAssignedController(LinCommunicationController var1);
}

