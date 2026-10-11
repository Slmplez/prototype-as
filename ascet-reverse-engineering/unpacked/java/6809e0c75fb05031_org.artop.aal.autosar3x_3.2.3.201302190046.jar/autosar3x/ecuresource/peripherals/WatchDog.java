/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.ecuelectronics.Oscillator;
import autosar3x.ecuresource.peripherals.Peripheral;
import autosar3x.ecuresource.peripherals.WatchDogModeEnum;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface WatchDog
extends Peripheral {
    public Oscillator getClockSource();

    public void setClockSource(Oscillator var1);

    public WatchDogModeEnum getMode();

    public void setMode(WatchDogModeEnum var1);

    public void unsetMode();

    public boolean isSetMode();

    public EList<Integer> getThresholdValues();

    public void unsetThresholdValues();

    public boolean isSetThresholdValues();
}

