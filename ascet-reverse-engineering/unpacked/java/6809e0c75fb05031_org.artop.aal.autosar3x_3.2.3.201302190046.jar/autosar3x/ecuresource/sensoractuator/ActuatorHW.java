/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.sensoractuator;

import autosar3x.ecuresource.sensoractuator.ActuatorHwDefaultPositioinTypeEnum;
import autosar3x.ecuresource.sensoractuator.ActuatorHwElectricalTypeEnum;
import autosar3x.ecuresource.sensoractuator.ActuatorHwMovementEnum;
import autosar3x.ecuresource.sensoractuator.SensorActuatorHW;

public interface ActuatorHW
extends SensorActuatorHW {
    public ActuatorHwDefaultPositioinTypeEnum getDefaultPositionType();

    public void setDefaultPositionType(ActuatorHwDefaultPositioinTypeEnum var1);

    public void unsetDefaultPositionType();

    public boolean isSetDefaultPositionType();

    public String getDefaultPositionValue();

    public void setDefaultPositionValue(String var1);

    public void unsetDefaultPositionValue();

    public boolean isSetDefaultPositionValue();

    public ActuatorHwElectricalTypeEnum getElectricalType();

    public void setElectricalType(ActuatorHwElectricalTypeEnum var1);

    public void unsetElectricalType();

    public boolean isSetElectricalType();

    public Integer getEndurance();

    public void setEndurance(Integer var1);

    public void unsetEndurance();

    public boolean isSetEndurance();

    public ActuatorHwMovementEnum getMovement();

    public void setMovement(ActuatorHwMovementEnum var1);

    public void unsetMovement();

    public boolean isSetMovement();
}

