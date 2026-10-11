/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing;

import autosar40.commonstructure.timing.TimingExtension;
import autosar40.system.System;

public interface SystemTiming
extends TimingExtension {
    public System getSystem();

    public void setSystem(System var1);
}

