/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.bswmodule.bswbehavior;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;

public interface BswEvent
extends Identifiable {
    public BswBehavior getBswBehavior();

    public void setBswBehavior(BswBehavior var1);

    public BswSchedulableEntity getStartsOnEvent();

    public void setStartsOnEvent(BswSchedulableEntity var1);
}

