/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType
 */
package autosar40.swcomponent.components;

import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.swcomponent.components.AtomicSwComponentType;
import gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType;

public interface SensorActuatorSwComponentType
extends AtomicSwComponentType,
GSensorActuatorSwComponentType {
    public HwDescriptionEntity getSensorActuator();

    public void setSensorActuator(HwDescriptionEntity var1);
}

