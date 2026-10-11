/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource.processingunit;

import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.basicelements.BootTime;
import autosar3x.ecuresource.ecuelectronics.Clock;
import autosar3x.ecuresource.processingunit.MPU;
import autosar3x.ecuresource.processingunit.ProcessingUnitAdressingModeEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnitArchitectureKindEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnitArchitectureTypeEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnitSpecialOpcodesEnum;
import autosar3x.ecuresource.processingunit.Register;
import autosar3x.ecuresource.processingunit.SupportedDataType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ProcessingUnit
extends HWElement {
    public EList<ProcessingUnitAdressingModeEnum> getAddressingModes();

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

