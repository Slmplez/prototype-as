/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswEvent;

public interface BswTimingEvent
extends BswEvent {
    public Double getPeriod();

    public void setPeriod(Double var1);

    public void unsetPeriod();

    public boolean isSetPeriod();
}

