/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4flexray;

import autosar3x.system.fibex.fibex4flexray.CommunicationCycle;

public interface CycleCounter
extends CommunicationCycle {
    public Integer getCycleCounter();

    public void setCycleCounter(Integer var1);

    public void unsetCycleCounter();

    public boolean isSetCycleCounter();
}

