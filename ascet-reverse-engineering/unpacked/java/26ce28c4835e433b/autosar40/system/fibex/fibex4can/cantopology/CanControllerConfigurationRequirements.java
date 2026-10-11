/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4can.cantopology;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface CanControllerConfigurationRequirements
extends AbstractCanCommunicationControllerAttributes {
    public Integer getMaxNumberOfTimeQuantaPerBit();

    public void setMaxNumberOfTimeQuantaPerBit(Integer var1);

    public void unsetMaxNumberOfTimeQuantaPerBit();

    public boolean isSetMaxNumberOfTimeQuantaPerBit();

    public Double getMaxSamplePoint();

    public void setMaxSamplePoint(Double var1);

    public void unsetMaxSamplePoint();

    public boolean isSetMaxSamplePoint();

    public Double getMaxSyncJumpWidth();

    public void setMaxSyncJumpWidth(Double var1);

    public void unsetMaxSyncJumpWidth();

    public boolean isSetMaxSyncJumpWidth();

    public Integer getMinNumberOfTimeQuantaPerBit();

    public void setMinNumberOfTimeQuantaPerBit(Integer var1);

    public void unsetMinNumberOfTimeQuantaPerBit();

    public boolean isSetMinNumberOfTimeQuantaPerBit();

    public Double getMinSamplePoint();

    public void setMinSamplePoint(Double var1);

    public void unsetMinSamplePoint();

    public boolean isSetMinSamplePoint();

    public Double getMinSyncJumpWidth();

    public void setMinSyncJumpWidth(Double var1);

    public void unsetMinSyncJumpWidth();

    public boolean isSetMinSyncJumpWidth();

    public IntegerDatatype getMaxNumberOfTimeQuantaPerBitData();

    public void setMaxNumberOfTimeQuantaPerBitData(IntegerDatatype var1);

    public IntegerDatatype getMinNumberOfTimeQuantaPerBitData();

    public void setMinNumberOfTimeQuantaPerBitData(IntegerDatatype var1);
}

