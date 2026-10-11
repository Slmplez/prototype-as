/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.system.fibex.fibexcore.coretopology.CommunicationCycle;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface CycleCounter
extends CommunicationCycle {
    public Integer getCycleCounter();

    public void setCycleCounter(Integer var1);

    public void unsetCycleCounter();

    public boolean isSetCycleCounter();

    public IntegerDatatype getCycleCounterData();

    public void setCycleCounterData(IntegerDatatype var1);
}

