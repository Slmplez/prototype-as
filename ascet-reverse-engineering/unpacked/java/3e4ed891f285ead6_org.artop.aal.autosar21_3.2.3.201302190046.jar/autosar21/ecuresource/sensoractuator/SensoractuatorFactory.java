/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecuresource.sensoractuator;

import autosar21.ecuresource.sensoractuator.ActuatorHW;
import autosar21.ecuresource.sensoractuator.DisplayHW;
import autosar21.ecuresource.sensoractuator.SensorHW;
import autosar21.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar21.ecuresource.sensoractuator.impl.SensoractuatorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SensoractuatorFactory
extends EFactory {
    public static final SensoractuatorFactory eINSTANCE = SensoractuatorFactoryImpl.init();

    public ActuatorHW createActuatorHW();

    public DisplayHW createDisplayHW();

    public SensorHW createSensorHW();

    public SensoractuatorPackage getSensoractuatorPackage();
}

