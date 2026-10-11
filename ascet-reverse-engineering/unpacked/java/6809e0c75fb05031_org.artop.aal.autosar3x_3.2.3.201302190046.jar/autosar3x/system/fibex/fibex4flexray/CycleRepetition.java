/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4flexray;

import autosar3x.system.fibex.fibex4flexray.CommunicationCycle;
import autosar3x.system.fibex.fibex4flexray.CycleRepetitionType;

public interface CycleRepetition
extends CommunicationCycle {
    public Integer getBaseCycle();

    public void setBaseCycle(Integer var1);

    public void unsetBaseCycle();

    public boolean isSetBaseCycle();

    public CycleRepetitionType getCycleRepetition();

    public void setCycleRepetition(CycleRepetitionType var1);

    public void unsetCycleRepetition();

    public boolean isSetCycleRepetition();
}

