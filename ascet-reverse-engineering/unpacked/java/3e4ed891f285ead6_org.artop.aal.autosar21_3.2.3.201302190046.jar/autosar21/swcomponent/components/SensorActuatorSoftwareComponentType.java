/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType
 */
package autosar21.swcomponent.components;

import autosar21.ecuresource.sensoractuator.SensorActuatorHW;
import autosar21.swcomponent.components.AtomicSoftwareComponentType;
import gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType;

public interface SensorActuatorSoftwareComponentType
extends AtomicSoftwareComponentType,
GSensorActuatorSwComponentType {
    public SensorActuatorHW getSensorActuator();

    public void setSensorActuator(SensorActuatorHW var1);
}

