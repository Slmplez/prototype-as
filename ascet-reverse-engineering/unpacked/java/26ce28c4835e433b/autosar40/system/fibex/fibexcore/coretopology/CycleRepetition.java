/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.system.fibex.fibexcore.coretopology.CommunicationCycle;
import autosar40.system.fibex.fibexcore.coretopology.CycleRepetitionType;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface CycleRepetition
extends CommunicationCycle {
    public Integer getBaseCycle();

    public void setBaseCycle(Integer var1);

    public void unsetBaseCycle();

    public boolean isSetBaseCycle();

    public CycleRepetitionType getCycleRepetition();

    public void setCycleRepetition(CycleRepetitionType var1);

    public void unsetCycleRepetition();

    public boolean isSetCycleRepetition();

    public IntegerDatatype getBaseCycleData();

    public void setBaseCycleData(IntegerDatatype var1);
}

