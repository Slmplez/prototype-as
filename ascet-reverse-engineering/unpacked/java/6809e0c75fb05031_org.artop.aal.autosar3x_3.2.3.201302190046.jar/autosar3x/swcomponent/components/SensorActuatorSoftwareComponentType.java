/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType
 */
package autosar3x.swcomponent.components;

import autosar3x.ecuresource.sensoractuator.SensorActuatorHW;
import autosar3x.swcomponent.components.AtomicSoftwareComponentType;
import gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType;

public interface SensorActuatorSoftwareComponentType
extends AtomicSoftwareComponentType,
GSensorActuatorSwComponentType {
    public SensorActuatorHW getSensorActuator();

    public void setSensorActuator(SensorActuatorHW var1);
}

