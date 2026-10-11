/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.bswmodule.bswbehavior;

import autosar3x.bswmodule.bswbehavior.BswEvent;

public interface BswCyclicEvent
extends BswEvent {
    public Double getCycleTime();

    public void setCycleTime(Double var1);

    public void unsetCycleTime();

    public boolean isSetCycleTime();
}

