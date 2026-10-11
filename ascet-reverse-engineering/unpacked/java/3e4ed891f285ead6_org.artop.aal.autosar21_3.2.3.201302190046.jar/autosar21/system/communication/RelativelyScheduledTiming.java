/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.system.communication.Timing;

public interface RelativelyScheduledTiming
extends Timing {
    public Integer getDelay();

    public void setDelay(Integer var1);

    public void unsetDelay();

    public boolean isSetDelay();

    public Integer getPositionInTable();

    public void setPositionInTable(Integer var1);

    public void unsetPositionInTable();

    public boolean isSetPositionInTable();

    public String getScheduleTableName();

    public void setScheduleTableName(String var1);

    public void unsetScheduleTableName();

    public boolean isSetScheduleTableName();
}

