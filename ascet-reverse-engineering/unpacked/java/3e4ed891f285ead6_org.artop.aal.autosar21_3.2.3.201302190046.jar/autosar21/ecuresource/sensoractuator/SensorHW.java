/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.sensoractuator;

import autosar21.ecuresource.sensoractuator.SensorActuatorHW;
import autosar21.ecuresource.sensoractuator.SensorHWSignalQualityEnum;

public interface SensorHW
extends SensorActuatorHW {
    public SensorHWSignalQualityEnum getSignalQuality();

    public void setSignalQuality(SensorHWSignalQualityEnum var1);

    public void unsetSignalQuality();

    public boolean isSetSignalQuality();
}

