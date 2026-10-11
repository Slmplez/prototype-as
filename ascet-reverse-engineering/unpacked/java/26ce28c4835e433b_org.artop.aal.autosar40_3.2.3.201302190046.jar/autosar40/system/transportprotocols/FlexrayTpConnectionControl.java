/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.transportprotocols.FlexrayTpConfig;
import autosar40.system.transportprotocols.TpAckType;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface FlexrayTpConnectionControl
extends Identifiable {
    public FlexrayTpConfig getFlexrayTpConfig();

    public void setFlexrayTpConfig(FlexrayTpConfig var1);

    public TpAckType getAckType();

    public void setAckType(TpAckType var1);

    public void unsetAckType();

    public boolean isSetAckType();

    public Integer getMaxAr();

    public void setMaxAr(Integer var1);

    public void unsetMaxAr();

    public boolean isSetMaxAr();

    public Integer getMaxAs();

    public void setMaxAs(Integer var1);

    public void unsetMaxAs();

    public boolean isSetMaxAs();

    public Integer getMaxBufferSize();

    public void setMaxBufferSize(Integer var1);

    public void unsetMaxBufferSize();

    public boolean isSetMaxBufferSize();

    public Integer getMaxFcWait();

    public void setMaxFcWait(Integer var1);

    public void unsetMaxFcWait();

    public boolean isSetMaxFcWait();

    public Integer getMaxFrIf();

    public void setMaxFrIf(Integer var1);

    public void unsetMaxFrIf();

    public boolean isSetMaxFrIf();

    public Integer getMaxNumberOfNpduPerCycle();

    public void setMaxNumberOfNpduPerCycle(Integer var1);

    public void unsetMaxNumberOfNpduPerCycle();

    public boolean isSetMaxNumberOfNpduPerCycle();

    public Integer getMaxRetries();

    public void setMaxRetries(Integer var1);

    public void unsetMaxRetries();

    public boolean isSetMaxRetries();

    public Integer getSeparationCycleExponent();

    public void setSeparationCycleExponent(Integer var1);

    public void unsetSeparationCycleExponent();

    public boolean isSetSeparationCycleExponent();

    public Double getTimeBr();

    public void setTimeBr(Double var1);

    public void unsetTimeBr();

    public boolean isSetTimeBr();

    public Double getTimeBuffer();

    public void setTimeBuffer(Double var1);

    public void unsetTimeBuffer();

    public boolean isSetTimeBuffer();

    public Double getTimeFrIf();

    public void setTimeFrIf(Double var1);

    public void unsetTimeFrIf();

    public boolean isSetTimeFrIf();

    public Double getTimeoutAr();

    public void setTimeoutAr(Double var1);

    public void unsetTimeoutAr();

    public boolean isSetTimeoutAr();

    public Double getTimeoutAs();

    public void setTimeoutAs(Double var1);

    public void unsetTimeoutAs();

    public boolean isSetTimeoutAs();

    public Double getTimeoutBs();

    public void setTimeoutBs(Double var1);

    public void unsetTimeoutBs();

    public boolean isSetTimeoutBs();

    public Double getTimeoutCr();

    public void setTimeoutCr(Double var1);

    public void unsetTimeoutCr();

    public boolean isSetTimeoutCr();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getMaxArData();

    public void setMaxArData(IntegerDatatype var1);

    public IntegerDatatype getMaxAsData();

    public void setMaxAsData(IntegerDatatype var1);

    public IntegerDatatype getMaxBufferSizeData();

    public void setMaxBufferSizeData(IntegerDatatype var1);

    public IntegerDatatype getMaxFcWaitData();

    public void setMaxFcWaitData(IntegerDatatype var1);

    public IntegerDatatype getMaxFrIfData();

    public void setMaxFrIfData(IntegerDatatype var1);

    public IntegerDatatype getMaxNumberOfNpduPerCycleData();

    public void setMaxNumberOfNpduPerCycleData(IntegerDatatype var1);

    public IntegerDatatype getMaxRetriesData();

    public void setMaxRetriesData(IntegerDatatype var1);

    public IntegerDatatype getSeparationCycleExponentData();

    public void setSeparationCycleExponentData(IntegerDatatype var1);
}

