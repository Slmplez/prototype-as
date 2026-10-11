/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.heapusage;

import autosar21.swcomponent.resources.heapusage.HeapUsage;

public interface WorstCaseHeapUsage
extends HeapUsage {
    public Integer getMemoryConsumption();

    public void setMemoryConsumption(Integer var1);

    public void unsetMemoryConsumption();

    public boolean isSetMemoryConsumption();
}

