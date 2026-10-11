/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource.ecuelectronics;

import autosar21.ecuresource.basicelements.FrequencyRange;
import autosar21.ecuresource.ecuelectronics.ClockTypeEnum;
import autosar21.ecuresource.ecuelectronics.ECUElectronics;
import autosar21.ecuresource.ecuelectronics.Oscillator;
import autosar21.ecuresource.processingunit.ProcessingUnit;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Clock
extends ECUElectronics {
    public ProcessingUnit getProcessingUnit();

    public void setProcessingUnit(ProcessingUnit var1);

    public Boolean getAdjustable();

    public void setAdjustable(Boolean var1);

    public void unsetAdjustable();

    public boolean isSetAdjustable();

    public Double getClockJitter();

    public void setClockJitter(Double var1);

    public void unsetClockJitter();

    public boolean isSetClockJitter();

    public Double getClockStartupTime();

    public void setClockStartupTime(Double var1);

    public void unsetClockStartupTime();

    public boolean isSetClockStartupTime();

    public Double getClockTolerance();

    public void setClockTolerance(Double var1);

    public void unsetClockTolerance();

    public boolean isSetClockTolerance();

    public FrequencyRange getFrequency();

    public void setFrequency(FrequencyRange var1);

    public EList<Oscillator> getOscillators();

    public ClockTypeEnum getType();

    public void setType(ClockTypeEnum var1);

    public void unsetType();

    public boolean isSetType();
}

