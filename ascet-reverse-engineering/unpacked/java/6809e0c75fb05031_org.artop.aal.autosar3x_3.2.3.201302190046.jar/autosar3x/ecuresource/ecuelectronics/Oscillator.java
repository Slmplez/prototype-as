/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.basicelements.FrequencyRange;
import autosar3x.ecuresource.ecuelectronics.ECUElectronics;
import autosar3x.ecuresource.peripherals.OscillatorModeEnum;

public interface Oscillator
extends ECUElectronics {
    public Oscillator getOscillator();

    public void setOscillator(Oscillator var1);

    public Boolean getAdjustible();

    public void setAdjustible(Boolean var1);

    public void unsetAdjustible();

    public boolean isSetAdjustible();

    public Oscillator getBackupOscillator();

    public void setBackupOscillator(Oscillator var1);

    public FrequencyRange getOscillatorFrequencyRange();

    public void setOscillatorFrequencyRange(FrequencyRange var1);

    public Double getOscillatorJitter();

    public void setOscillatorJitter(Double var1);

    public void unsetOscillatorJitter();

    public boolean isSetOscillatorJitter();

    public OscillatorModeEnum getOscillatorMode();

    public void setOscillatorMode(OscillatorModeEnum var1);

    public void unsetOscillatorMode();

    public boolean isSetOscillatorMode();

    public Double getOscillatorStartupTime();

    public void setOscillatorStartupTime(Double var1);

    public void unsetOscillatorStartupTime();

    public boolean isSetOscillatorStartupTime();

    public Double getOscillatorTolerance();

    public void setOscillatorTolerance(Double var1);

    public void unsetOscillatorTolerance();

    public boolean isSetOscillatorTolerance();
}

