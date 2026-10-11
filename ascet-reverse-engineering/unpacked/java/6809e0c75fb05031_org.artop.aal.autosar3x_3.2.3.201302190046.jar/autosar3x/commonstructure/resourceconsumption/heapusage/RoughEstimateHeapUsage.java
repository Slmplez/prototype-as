/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.resourceconsumption.heapusage;

import autosar3x.commonstructure.resourceconsumption.heapusage.HeapUsage;

public interface RoughEstimateHeapUsage
extends HeapUsage {
    public Integer getMemoryConsumption();

    public void setMemoryConsumption(Integer var1);

    public void unsetMemoryConsumption();

    public boolean isSetMemoryConsumption();
}

