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
package autosar3x.ecuresource.sensoractuator.impl;

import autosar3x.ecuresource.sensoractuator.ActuatorHW;
import autosar3x.ecuresource.sensoractuator.ActuatorHwDefaultPositioinTypeEnum;
import autosar3x.ecuresource.sensoractuator.ActuatorHwElectricalTypeEnum;
import autosar3x.ecuresource.sensoractuator.ActuatorHwMovementEnum;
import autosar3x.ecuresource.sensoractuator.DisplayHW;
import autosar3x.ecuresource.sensoractuator.DisplayHwColourEnum;
import autosar3x.ecuresource.sensoractuator.DisplayHwTypeOfCharactersEnum;
import autosar3x.ecuresource.sensoractuator.SensorActuatorHW;
import autosar3x.ecuresource.sensoractuator.SensorHW;
import autosar3x.ecuresource.sensoractuator.SensorHwSignalQualityEnum;
import autosar3x.ecuresource.sensoractuator.SensoractuatorFactory;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar3x.ecuresource.sensoractuator.impl.ActuatorHWImpl;
import autosar3x.ecuresource.sensoractuator.impl.DisplayHWImpl;
import autosar3x.ecuresource.sensoractuator.impl.SensorActuatorHWImpl;
import autosar3x.ecuresource.sensoractuator.impl.SensorHWImpl;
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
            SensoractuatorFactory theSensoractuatorFactory = (SensoractuatorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/ecur/sa");
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
                return this.createSensorActuatorHW();
            }
            case 2: {
                return this.createDisplayHW();
            }
            case 3: {
                return this.createSensorHW();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.createActuatorHwElectricalTypeEnumFromString(eDataType, initialValue);
            }
            case 5: {
                return this.createActuatorHwMovementEnumFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createActuatorHwDefaultPositioinTypeEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createDisplayHwColourEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createDisplayHwTypeOfCharactersEnumFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createSensorHwSignalQualityEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.convertActuatorHwElectricalTypeEnumToString(eDataType, instanceValue);
            }
            case 5: {
                return this.convertActuatorHwMovementEnumToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertActuatorHwDefaultPositioinTypeEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertDisplayHwColourEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertDisplayHwTypeOfCharactersEnumToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertSensorHwSignalQualityEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ActuatorHW createActuatorHW() {
        ActuatorHWImpl actuatorHW = new ActuatorHWImpl();
        return actuatorHW;
    }

    public SensorActuatorHW createSensorActuatorHW() {
        SensorActuatorHWImpl sensorActuatorHW = new SensorActuatorHWImpl();
        return sensorActuatorHW;
    }

    public DisplayHW createDisplayHW() {
        DisplayHWImpl displayHW = new DisplayHWImpl();
        return displayHW;
    }

    public SensorHW createSensorHW() {
        SensorHWImpl sensorHW = new SensorHWImpl();
        return sensorHW;
    }

    public ActuatorHwElectricalTypeEnum createActuatorHwElectricalTypeEnumFromString(EDataType eDataType, String initialValue) {
        ActuatorHwElectricalTypeEnum result = ActuatorHwElectricalTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertActuatorHwElectricalTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ActuatorHwMovementEnum createActuatorHwMovementEnumFromString(EDataType eDataType, String initialValue) {
        ActuatorHwMovementEnum result = ActuatorHwMovementEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertActuatorHwMovementEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ActuatorHwDefaultPositioinTypeEnum createActuatorHwDefaultPositioinTypeEnumFromString(EDataType eDataType, String initialValue) {
        ActuatorHwDefaultPositioinTypeEnum result = ActuatorHwDefaultPositioinTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertActuatorHwDefaultPositioinTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DisplayHwColourEnum createDisplayHwColourEnumFromString(EDataType eDataType, String initialValue) {
        DisplayHwColourEnum result = DisplayHwColourEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDisplayHwColourEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DisplayHwTypeOfCharactersEnum createDisplayHwTypeOfCharactersEnumFromString(EDataType eDataType, String initialValue) {
        DisplayHwTypeOfCharactersEnum result = DisplayHwTypeOfCharactersEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDisplayHwTypeOfCharactersEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SensorHwSignalQualityEnum createSensorHwSignalQualityEnumFromString(EDataType eDataType, String initialValue) {
        SensorHwSignalQualityEnum result = SensorHwSignalQualityEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSensorHwSignalQualityEnumToString(EDataType eDataType, Object instanceValue) {
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

