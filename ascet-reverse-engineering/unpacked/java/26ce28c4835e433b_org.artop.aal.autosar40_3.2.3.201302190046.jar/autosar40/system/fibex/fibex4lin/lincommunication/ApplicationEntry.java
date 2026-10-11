/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lincommunication.ScheduleTableEntry;

public interface ApplicationEntry
extends ScheduleTableEntry {
    public LinFrameTriggering getFrameTriggering();

    public void setFrameTriggering(LinFrameTriggering var1);
}

