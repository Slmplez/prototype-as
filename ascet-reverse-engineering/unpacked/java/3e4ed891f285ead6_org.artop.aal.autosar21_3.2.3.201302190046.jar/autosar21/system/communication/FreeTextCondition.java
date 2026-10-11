/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communication.Timing;

public interface FreeTextCondition
extends ARObject {
    public Timing getTiming();

    public void setTiming(Timing var1);

    public String getCondition();

    public void setCondition(String var1);

    public void unsetCondition();

    public boolean isSetCondition();
}

