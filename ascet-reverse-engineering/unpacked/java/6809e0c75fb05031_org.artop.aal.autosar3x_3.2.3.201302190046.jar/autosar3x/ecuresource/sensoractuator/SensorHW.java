/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.sensoractuator;

import autosar3x.ecuresource.sensoractuator.SensorActuatorHW;
import autosar3x.ecuresource.sensoractuator.SensorHwSignalQualityEnum;

public interface SensorHW
extends SensorActuatorHW {
    public SensorHwSignalQualityEnum getSignalQuality();

    public void setSignalQuality(SensorHwSignalQualityEnum var1);

    public void unsetSignalQuality();

    public boolean isSetSignalQuality();
}

