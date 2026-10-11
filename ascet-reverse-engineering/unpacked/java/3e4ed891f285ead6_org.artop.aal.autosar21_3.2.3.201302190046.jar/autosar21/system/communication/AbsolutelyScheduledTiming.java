/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.system.communication.AbsolutelyScheduledTimingCycleRepetitionEnum;
import autosar21.system.communication.Timing;

public interface AbsolutelyScheduledTiming
extends Timing {
    public Integer getBaseCycle();

    public void setBaseCycle(Integer var1);

    public void unsetBaseCycle();

    public boolean isSetBaseCycle();

    public AbsolutelyScheduledTimingCycleRepetitionEnum getCycleRepetition();

    public void setCycleRepetition(AbsolutelyScheduledTimingCycleRepetitionEnum var1);

    public void unsetCycleRepetition();

    public boolean isSetCycleRepetition();

    public Integer getSlotID();

    public void setSlotID(Integer var1);

    public void unsetSlotID();

    public boolean isSetSlotID();
}

