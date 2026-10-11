/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.ecuelectronics.Oscillator;
import autosar3x.ecuresource.peripherals.Peripheral;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GeneralPurposeTimer
extends Peripheral {
    public Oscillator getClockSource();

    public void setClockSource(Oscillator var1);

    public Boolean getPhaseDetection();

    public void setPhaseDetection(Boolean var1);

    public void unsetPhaseDetection();

    public boolean isSetPhaseDetection();

    public Integer getResolution();

    public void setResolution(Integer var1);

    public void unsetResolution();

    public boolean isSetResolution();

    public EList<Integer> getThresholdValues();

    public void unsetThresholdValues();

    public boolean isSetThresholdValues();
}

