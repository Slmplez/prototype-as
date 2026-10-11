/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanClusterContent;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface TtcanClusterContent
extends AbstractCanClusterContent {
    public Integer getBasicCycleLength();

    public void setBasicCycleLength(Integer var1);

    public void unsetBasicCycleLength();

    public boolean isSetBasicCycleLength();

    public Double getNtu();

    public void setNtu(Double var1);

    public void unsetNtu();

    public boolean isSetNtu();

    public Boolean getOperationMode();

    public void setOperationMode(Boolean var1);

    public void unsetOperationMode();

    public boolean isSetOperationMode();

    public IntegerDatatype getBasicCycleLengthData();

    public void setBasicCycleLengthData(IntegerDatatype var1);
}

