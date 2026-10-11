/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.resourceconsumption.heapusage;

import autosar40.commonstructure.resourceconsumption.heapusage.HeapUsage;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface MeasuredHeapUsage
extends HeapUsage {
    public Long getAverageMemoryConsumption();

    public void setAverageMemoryConsumption(Long var1);

    public void unsetAverageMemoryConsumption();

    public boolean isSetAverageMemoryConsumption();

    public Long getMaximumMemoryConsumption();

    public void setMaximumMemoryConsumption(Long var1);

    public void unsetMaximumMemoryConsumption();

    public boolean isSetMaximumMemoryConsumption();

    public Long getMinimumMemoryConsumption();

    public void setMinimumMemoryConsumption(Long var1);

    public void unsetMinimumMemoryConsumption();

    public boolean isSetMinimumMemoryConsumption();

    public String getTestPattern();

    public void setTestPattern(String var1);

    public void unsetTestPattern();

    public boolean isSetTestPattern();

    public PositiveIntegerDatatype getAverageMemoryConsumptionData();

    public void setAverageMemoryConsumptionData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getMaximumMemoryConsumptionData();

    public void setMaximumMemoryConsumptionData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getMinimumMemoryConsumptionData();

    public void setMinimumMemoryConsumptionData(PositiveIntegerDatatype var1);
}

