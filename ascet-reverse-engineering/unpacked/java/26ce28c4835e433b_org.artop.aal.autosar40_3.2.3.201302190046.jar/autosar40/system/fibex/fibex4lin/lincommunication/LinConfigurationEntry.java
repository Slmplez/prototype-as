/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.ScheduleTableEntry;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlave;

public interface LinConfigurationEntry
extends ScheduleTableEntry {
    public LinSlave getAssignedController();

    public void setAssignedController(LinSlave var1);
}

