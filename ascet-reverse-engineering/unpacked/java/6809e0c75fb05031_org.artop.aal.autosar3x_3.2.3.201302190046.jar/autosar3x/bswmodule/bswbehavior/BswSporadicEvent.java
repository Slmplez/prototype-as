/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.bswmodule.bswbehavior;

import autosar3x.bswmodule.bswbehavior.BswEvent;

public interface BswSporadicEvent
extends BswEvent {
    public Double getDelayTime();

    public void setDelayTime(Double var1);

    public void unsetDelayTime();

    public boolean isSetDelayTime();
}

