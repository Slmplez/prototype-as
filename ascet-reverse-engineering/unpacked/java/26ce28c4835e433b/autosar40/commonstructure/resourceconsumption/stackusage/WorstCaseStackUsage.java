/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.resourceconsumption.stackusage;

import autosar40.commonstructure.resourceconsumption.stackusage.StackUsage;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface WorstCaseStackUsage
extends StackUsage {
    public Long getMemoryConsumption();

    public void setMemoryConsumption(Long var1);

    public void unsetMemoryConsumption();

    public boolean isSetMemoryConsumption();

    public PositiveIntegerDatatype getMemoryConsumptionData();

    public void setMemoryConsumptionData(PositiveIntegerDatatype var1);
}

