/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinScheduleTable;

public interface RelativelyScheduledTiming
extends ARObject {
    public LinFrameTriggering getLinFrameTriggering();

    public void setLinFrameTriggering(LinFrameTriggering var1);

    public Double getDelay();

    public void setDelay(Double var1);

    public void unsetDelay();

    public boolean isSetDelay();

    public Integer getPositionInTable();

    public void setPositionInTable(Integer var1);

    public void unsetPositionInTable();

    public boolean isSetPositionInTable();

    public LinScheduleTable getScheduleTable();

    public void setScheduleTable(LinScheduleTable var1);
}

