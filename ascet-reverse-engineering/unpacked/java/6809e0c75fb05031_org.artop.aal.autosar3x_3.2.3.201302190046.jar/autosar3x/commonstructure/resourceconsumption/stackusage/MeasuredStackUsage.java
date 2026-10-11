/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.resourceconsumption.stackusage;

import autosar3x.commonstructure.resourceconsumption.stackusage.StackUsage;

public interface MeasuredStackUsage
extends StackUsage {
    public Integer getAverageMemoryConsumption();

    public void setAverageMemoryConsumption(Integer var1);

    public void unsetAverageMemoryConsumption();

    public boolean isSetAverageMemoryConsumption();

    public Integer getMaximumMemoryConsumption();

    public void setMaximumMemoryConsumption(Integer var1);

    public void unsetMaximumMemoryConsumption();

    public boolean isSetMaximumMemoryConsumption();

    public Integer getMinimumMemoryConsumption();

    public void setMinimumMemoryConsumption(Integer var1);

    public void unsetMinimumMemoryConsumption();

    public boolean isSetMinimumMemoryConsumption();

    public String getTestPattern();

    public void setTestPattern(String var1);

    public void unsetTestPattern();

    public boolean isSetTestPattern();
}

