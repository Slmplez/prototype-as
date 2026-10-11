/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.ecuresource.sensoractuator.impl;

import autosar21.ecuresource.sensoractuator.ActuatorHW;
import autosar21.ecuresource.sensoractuator.ActuatorHWDefaultPositionTypeEnum;
import autosar21.ecuresource.sensoractuator.ActuatorHWElectricalTypeEnum;
import autosar21.ecuresource.sensoractuator.ActuatorHWMovementEnum;
import autosar21.ecuresource.sensoractuator.DisplayHW;
import autosar21.ecuresource.sensoractuator.DisplayHWColourEnum;
import autosar21.ecuresource.sensoractuator.DisplayHWTypeOfCharactersEnum;
import autosar21.ecuresource.sensoractuator.SensorActuatorHW;
import autosar21.ecuresource.sensoractuator.SensorHW;
import autosar21.ecuresource.sensoractuator.SensorHWSignalQualityEnum;
import autosar21.ecuresource.sensoractuator.SensoractuatorFactory;
import autosar21.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar21.ecuresource.sensoractuator.impl.ActuatorHWImpl;
import autosar21.ecuresource.sensoractuator.impl.DisplayHWImpl;
import autosar21.ecuresource.sensoractuator.impl.SensorActuatorHWImpl;
import autosar21.ecuresource.sensoractuator.impl.SensorHWImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SensoractuatorFactoryImpl
extends EFactoryImpl
implements SensoractuatorFactory {
    public static SensoractuatorFactory init() {
        try {
            SensoractuatorFactory theSensoractuatorFactory = (SensoractuatorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/ecur/sa");
            if (theSensoractuatorFactory != null) {
                return theSensoractuatorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SensoractuatorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createActuatorHW();
            }
            case 1: {
                return this.createDisplayHW();
            }
            case 2: {
                return this.createSensorHW();
            }
            case 3: {
                return this.createSensorActuatorHW();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.createActuatorHWElectricalTypeEnumFromString(eDataType, initialValue);
            }
            case 5: {
                return this.createActuatorHWMovementEnumFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createActuatorHWDefaultPositionTypeEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createDisplayHWColourEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createDisplayHWTypeOfCharactersEnumFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createSensorHWSignalQualityEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.convertActuatorHWElectricalTypeEnumToString(eDataType, instanceValue);
            }
            case 5: {
                return this.convertActuatorHWMovementEnumToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertActuatorHWDefaultPositionTypeEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertDisplayHWColourEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertDisplayHWTypeOfCharactersEnumToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertSensorHWSignalQualityEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ActuatorHW createActuatorHW() {
        ActuatorHWImpl actuatorHW = new ActuatorHWImpl();
        return actuatorHW;
    }

    public DisplayHW createDisplayHW() {
        DisplayHWImpl displayHW = new DisplayHWImpl();
        return displayHW;
    }

    public SensorHW createSensorHW() {
        SensorHWImpl sensorHW = new SensorHWImpl();
        return sensorHW;
    }

    public SensorActuatorHW createSensorActuatorHW() {
        SensorActuatorHWImpl sensorActuatorHW = new SensorActuatorHWImpl();
        return sensorActuatorHW;
    }

    public ActuatorHWElectricalTypeEnum createActuatorHWElectricalTypeEnumFromString(EDataType eDataType, String initialValue) {
        ActuatorHWElectricalTypeEnum result = ActuatorHWElectricalTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertActuatorHWElectricalTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ActuatorHWMovementEnum createActuatorHWMovementEnumFromString(EDataType eDataType, String initialValue) {
        ActuatorHWMovementEnum result = ActuatorHWMovementEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertActuatorHWMovementEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ActuatorHWDefaultPositionTypeEnum createActuatorHWDefaultPositionTypeEnumFromString(EDataType eDataType, String initialValue) {
        ActuatorHWDefaultPositionTypeEnum result = ActuatorHWDefaultPositionTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertActuatorHWDefaultPositionTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DisplayHWColourEnum createDisplayHWColourEnumFromString(EDataType eDataType, String initialValue) {
        DisplayHWColourEnum result = DisplayHWColourEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDisplayHWColourEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DisplayHWTypeOfCharactersEnum createDisplayHWTypeOfCharactersEnumFromString(EDataType eDataType, String initialValue) {
        DisplayHWTypeOfCharactersEnum result = DisplayHWTypeOfCharactersEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDisplayHWTypeOfCharactersEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SensorHWSignalQualityEnum createSensorHWSignalQualityEnumFromString(EDataType eDataType, String initialValue) {
        SensorHWSignalQualityEnum result = SensorHWSignalQualityEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSensorHWSignalQualityEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SensoractuatorPackage getSensoractuatorPackage() {
        return (SensoractuatorPackage)this.getEPackage();
    }

    @Deprecated
    public static SensoractuatorPackage getPackage() {
        return SensoractuatorPackage.eINSTANCE;
    }
}

