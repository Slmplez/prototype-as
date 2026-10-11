/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.commonstructure.timing.TimingExtension;

public interface BswModuleTiming
extends TimingExtension {
    public BswInternalBehavior getBehavior();

    public void setBehavior(BswInternalBehavior var1);
}

