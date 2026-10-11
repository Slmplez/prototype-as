/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource.processingunit;

import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.basicelements.BootTime;
import autosar21.ecuresource.ecuelectronics.Clock;
import autosar21.ecuresource.processingunit.MPU;
import autosar21.ecuresource.processingunit.ProcessingUnitAddressingModesEnum;
import autosar21.ecuresource.processingunit.ProcessingUnitArchitectureKindEnum;
import autosar21.ecuresource.processingunit.ProcessingUnitArchitectureTypeEnum;
import autosar21.ecuresource.processingunit.ProcessingUnitSpecialOpcodesEnum;
import autosar21.ecuresource.processingunit.Register;
import autosar21.ecuresource.processingunit.SupportedDataType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ProcessingUnit
extends HWElement {
    public EList<ProcessingUnitAddressingModesEnum> getAddressingModes();

    public void unsetAddressingModes();

    public boolean isSetAddressingModes();

    public ProcessingUnitArchitectureKindEnum getArchitectureKind();

    public void setArchitectureKind(ProcessingUnitArchitectureKindEnum var1);

    public void unsetArchitectureKind();

    public boolean isSetArchitectureKind();

    public String getArchitectureName();

    public void setArchitectureName(String var1);

    public void unsetArchitectureName();

    public boolean isSetArchitectureName();

    public ProcessingUnitArchitectureTypeEnum getArchitectureType();

    public void setArchitectureType(ProcessingUnitArchitectureTypeEnum var1);

    public void unsetArchitectureType();

    public boolean isSetArchitectureType();

    public BootTime getBootTime();

    public void setBootTime(BootTime var1);

    public Integer getDmaChannelCount();

    public void setDmaChannelCount(Integer var1);

    public void unsetDmaChannelCount();

    public boolean isSetDmaChannelCount();

    public String getImplementationTechnology();

    public void setImplementationTechnology(String var1);

    public void unsetImplementationTechnology();

    public boolean isSetImplementationTechnology();

    public Integer getMaxInterruptNestingLevels();

    public void setMaxInterruptNestingLevels(Integer var1);

    public void unsetMaxInterruptNestingLevels();

    public boolean isSetMaxInterruptNestingLevels();

    public MPU getMpu();

    public void setMpu(MPU var1);

    public Integer getNaturalDataSize();

    public void setNaturalDataSize(Integer var1);

    public void unsetNaturalDataSize();

    public boolean isSetNaturalDataSize();

    public String getOpcodeSize();

    public void setOpcodeSize(String var1);

    public void unsetOpcodeSize();

    public boolean isSetOpcodeSize();

    public Clock getPuClock();

    public void setPuClock(Clock var1);

    public EList<Register> getRegisterModels();

    public EList<ProcessingUnitSpecialOpcodesEnum> getSpecialOpcodes();

    public void unsetSpecialOpcodes();

    public boolean isSetSpecialOpcodes();

    public EList<SupportedDataType> getSupportedDataTypes();
}

