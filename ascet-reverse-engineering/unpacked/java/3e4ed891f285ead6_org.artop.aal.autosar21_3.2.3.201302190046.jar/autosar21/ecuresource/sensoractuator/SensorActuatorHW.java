/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.sensoractuator;

import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.basicelements.TimeRange;

public interface SensorActuatorHW
extends HWElement {
    public Double getAccuracy();

    public void setAccuracy(Double var1);

    public void unsetAccuracy();

    public boolean isSetAccuracy();

    public TimeRange getCycleTime();

    public void setCycleTime(TimeRange var1);

    public Double getResolution();

    public void setResolution(Double var1);

    public void unsetResolution();

    public boolean isSetResolution();

    public String getType();

    public void setType(String var1);

    public void unsetType();

    public boolean isSetType();
}

