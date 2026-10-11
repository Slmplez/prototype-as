/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.SendCondition;
import autosar21.system.communication.Timing;

public interface EventControlledTiming
extends Timing {
    public ActiveCondition getActiveCondition();

    public void setActiveCondition(ActiveCondition var1);

    public Double getDebounceTime();

    public void setDebounceTime(Double var1);

    public void unsetDebounceTime();

    public boolean isSetDebounceTime();

    public Integer getNumberOfRepeats();

    public void setNumberOfRepeats(Integer var1);

    public void unsetNumberOfRepeats();

    public boolean isSetNumberOfRepeats();

    public Double getRepeatCycleTime();

    public void setRepeatCycleTime(Double var1);

    public void unsetRepeatCycleTime();

    public boolean isSetRepeatCycleTime();

    public SendCondition getSendCondition();

    public void setSendCondition(SendCondition var1);
}

