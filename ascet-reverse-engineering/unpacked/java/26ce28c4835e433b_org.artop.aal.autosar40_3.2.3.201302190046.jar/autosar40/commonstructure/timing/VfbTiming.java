/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing;

import autosar40.commonstructure.timing.TimingExtension;
import autosar40.swcomponent.components.SwComponentType;

public interface VfbTiming
extends TimingExtension {
    public SwComponentType getComponent();

    public void setComponent(SwComponentType var1);
}

