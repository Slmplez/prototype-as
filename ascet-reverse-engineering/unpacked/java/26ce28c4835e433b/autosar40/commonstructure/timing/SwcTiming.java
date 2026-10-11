/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing;

import autosar40.commonstructure.timing.TimingExtension;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;

public interface SwcTiming
extends TimingExtension {
    public SwcInternalBehavior getBehavior();

    public void setBehavior(SwcInternalBehavior var1);

    public SwComponentType getComponent();

    public void setComponent(SwComponentType var1);
}

