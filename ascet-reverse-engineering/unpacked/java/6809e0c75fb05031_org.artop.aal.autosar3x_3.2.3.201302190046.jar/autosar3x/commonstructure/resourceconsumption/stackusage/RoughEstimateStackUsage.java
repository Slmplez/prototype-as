/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.resourceconsumption.stackusage;

import autosar3x.commonstructure.resourceconsumption.stackusage.StackUsage;

public interface RoughEstimateStackUsage
extends StackUsage {
    public Integer getMemoryConsumption();

    public void setMemoryConsumption(Integer var1);

    public void unsetMemoryConsumption();

    public boolean isSetMemoryConsumption();
}

