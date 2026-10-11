/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.StartCondition;
import autosar21.system.communication.StopCondition;
import autosar21.system.communication.Timing;

public interface CyclicTiming
extends Timing {
    public ActiveCondition getActiveCondition();

    public void setActiveCondition(ActiveCondition var1);

    public Double getCycleTime();

    public void setCycleTime(Double var1);

    public void unsetCycleTime();

    public boolean isSetCycleTime();

    public StartCondition getStartCondition();

    public void setStartCondition(StartCondition var1);

    public Double getStartingTime();

    public void setStartingTime(Double var1);

    public void unsetStartingTime();

    public boolean isSetStartingTime();

    public StopCondition getStopCondition();

    public void setStopCondition(StopCondition var1);
}

