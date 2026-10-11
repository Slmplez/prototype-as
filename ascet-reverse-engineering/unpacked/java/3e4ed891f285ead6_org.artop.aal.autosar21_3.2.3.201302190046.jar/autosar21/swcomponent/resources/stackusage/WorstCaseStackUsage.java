/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.stackusage;

import autosar21.swcomponent.resources.stackusage.StackUsage;
import autosar21.system.swmapping.AggregatedStackUsage;

public interface WorstCaseStackUsage
extends AggregatedStackUsage,
StackUsage {
    public Integer getMemoryConsumption();

    public void setMemoryConsumption(Integer var1);

    public void unsetMemoryConsumption();

    public boolean isSetMemoryConsumption();
}

