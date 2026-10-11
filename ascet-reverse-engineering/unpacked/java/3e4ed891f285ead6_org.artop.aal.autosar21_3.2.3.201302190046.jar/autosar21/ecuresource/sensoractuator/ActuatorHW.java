/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.sensoractuator;

import autosar21.ecuresource.sensoractuator.ActuatorHWDefaultPositionTypeEnum;
import autosar21.ecuresource.sensoractuator.ActuatorHWElectricalTypeEnum;
import autosar21.ecuresource.sensoractuator.ActuatorHWMovementEnum;
import autosar21.ecuresource.sensoractuator.SensorActuatorHW;

public interface ActuatorHW
extends SensorActuatorHW {
    public ActuatorHWDefaultPositionTypeEnum getDefaultPositionType();

    public void setDefaultPositionType(ActuatorHWDefaultPositionTypeEnum var1);

    public void unsetDefaultPositionType();

    public boolean isSetDefaultPositionType();

    public String getDefaultPositionValue();

    public void setDefaultPositionValue(String var1);

    public void unsetDefaultPositionValue();

    public boolean isSetDefaultPositionValue();

    public ActuatorHWElectricalTypeEnum getElectricalType();

    public void setElectricalType(ActuatorHWElectricalTypeEnum var1);

    public void unsetElectricalType();

    public boolean isSetElectricalType();

    public Integer getEndurance();

    public void setEndurance(Integer var1);

    public void unsetEndurance();

    public boolean isSetEndurance();

    public ActuatorHWMovementEnum getMovement();

    public void setMovement(ActuatorHWMovementEnum var1);

    public void unsetMovement();

    public boolean isSetMovement();
}

