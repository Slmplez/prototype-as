/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4can.cantopology;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface CanControllerConfiguration
extends AbstractCanCommunicationControllerAttributes {
    public Integer getSyncJumpWidth();

    public void setSyncJumpWidth(Integer var1);

    public void unsetSyncJumpWidth();

    public boolean isSetSyncJumpWidth();

    public Integer getTimeSeg1();

    public void setTimeSeg1(Integer var1);

    public void unsetTimeSeg1();

    public boolean isSetTimeSeg1();

    public Integer getTimeSeg2();

    public void setTimeSeg2(Integer var1);

    public void unsetTimeSeg2();

    public boolean isSetTimeSeg2();

    public IntegerDatatype getSyncJumpWidthData();

    public void setSyncJumpWidthData(IntegerDatatype var1);

    public IntegerDatatype getTimeSeg1Data();

    public void setTimeSeg1Data(IntegerDatatype var1);

    public IntegerDatatype getTimeSeg2Data();

    public void setTimeSeg2Data(IntegerDatatype var1);
}

