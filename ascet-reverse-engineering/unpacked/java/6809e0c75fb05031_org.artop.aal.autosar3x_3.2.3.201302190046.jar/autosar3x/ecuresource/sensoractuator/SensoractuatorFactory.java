/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecuresource.sensoractuator;

import autosar3x.ecuresource.sensoractuator.ActuatorHW;
import autosar3x.ecuresource.sensoractuator.DisplayHW;
import autosar3x.ecuresource.sensoractuator.SensorHW;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar3x.ecuresource.sensoractuator.impl.SensoractuatorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SensoractuatorFactory
extends EFactory {
    public static final SensoractuatorFactory eINSTANCE = SensoractuatorFactoryImpl.init();

    public ActuatorHW createActuatorHW();

    public DisplayHW createDisplayHW();

    public SensorHW createSensorHW();

    public SensoractuatorPackage getSensoractuatorPackage();
}

