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
package autosar3x.ecuresource.processingunit.impl;

import autosar3x.ecuresource.processingunit.ClockTypeEnum;
import autosar3x.ecuresource.processingunit.InterruptConsumeHWPort;
import autosar3x.ecuresource.processingunit.InterruptProduceHWPort;
import autosar3x.ecuresource.processingunit.MPU;
import autosar3x.ecuresource.processingunit.MemoryMappedHwPortTypeEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.ecuresource.processingunit.ProcessingUnitAdressingModeEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnitArchitectureKindEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnitArchitectureTypeEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnitSpecialOpcodesEnum;
import autosar3x.ecuresource.processingunit.ProcessingunitFactory;
import autosar3x.ecuresource.processingunit.ProcessingunitPackage;
import autosar3x.ecuresource.processingunit.Register;
import autosar3x.ecuresource.processingunit.RegisterTypeEnum;
import autosar3x.ecuresource.processingunit.SupportedDataType;
import autosar3x.ecuresource.processingunit.impl.InterruptConsumeHWPortImpl;
import autosar3x.ecuresource.processingunit.impl.InterruptProduceHWPortImpl;
import autosar3x.ecuresource.processingunit.impl.MPUImpl;
import autosar3x.ecuresource.processingunit.impl.ProcessingUnitImpl;
import autosar3x.ecuresource.processingunit.impl.RegisterImpl;
import autosar3x.ecuresource.processingunit.impl.SupportedDataTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ProcessingunitFactoryImpl
extends EFactoryImpl
implements ProcessingunitFactory {
    public static ProcessingunitFactory init() {
        try {
            ProcessingunitFactory theProcessingunitFactory = (ProcessingunitFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/ecur/pu");
            if (theProcessingunitFactory != null) {
                return theProcessingunitFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ProcessingunitFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createInterruptConsumeHWPort();
            }
            case 2: {
                return this.createInterruptProduceHWPort();
            }
            case 3: {
                return this.createMPU();
            }
            case 4: {
                return this.createProcessingUnit();
            }
            case 5: {
                return this.createRegister();
            }
            case 6: {
                return this.createSupportedDataType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createMemoryMappedHwPortTypeEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createProcessingUnitArchitectureKindEnumFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createProcessingUnitSpecialOpcodesEnumFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createProcessingUnitAdressingModeEnumFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createProcessingUnitArchitectureTypeEnumFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createRegisterTypeEnumFromString(eDataType, initialValue);
            }
            case 13: {
                return this.createClockTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertMemoryMappedHwPortTypeEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertProcessingUnitArchitectureKindEnumToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertProcessingUnitSpecialOpcodesEnumToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertProcessingUnitAdressingModeEnumToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertProcessingUnitArchitectureTypeEnumToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertRegisterTypeEnumToString(eDataType, instanceValue);
            }
            case 13: {
                return this.convertClockTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public InterruptConsumeHWPort createInterruptConsumeHWPort() {
        InterruptConsumeHWPortImpl interruptConsumeHWPort = new InterruptConsumeHWPortImpl();
        return interruptConsumeHWPort;
    }

    public InterruptProduceHWPort createInterruptProduceHWPort() {
        InterruptProduceHWPortImpl interruptProduceHWPort = new InterruptProduceHWPortImpl();
        return interruptProduceHWPort;
    }

    public MPU createMPU() {
        MPUImpl mpu = new MPUImpl();
        return mpu;
    }

    public ProcessingUnit createProcessingUnit() {
        ProcessingUnitImpl processingUnit = new ProcessingUnitImpl();
        return processingUnit;
    }

    public Register createRegister() {
        RegisterImpl register = new RegisterImpl();
        return register;
    }

    public SupportedDataType createSupportedDataType() {
        SupportedDataTypeImpl supportedDataType = new SupportedDataTypeImpl();
        return supportedDataType;
    }

    public MemoryMappedHwPortTypeEnum createMemoryMappedHwPortTypeEnumFromString(EDataType eDataType, String initialValue) {
        MemoryMappedHwPortTypeEnum result = MemoryMappedHwPortTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMemoryMappedHwPortTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ProcessingUnitArchitectureKindEnum createProcessingUnitArchitectureKindEnumFromString(EDataType eDataType, String initialValue) {
        ProcessingUnitArchitectureKindEnum result = ProcessingUnitArchitectureKindEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertProcessingUnitArchitectureKindEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ProcessingUnitSpecialOpcodesEnum createProcessingUnitSpecialOpcodesEnumFromString(EDataType eDataType, String initialValue) {
        ProcessingUnitSpecialOpcodesEnum result = ProcessingUnitSpecialOpcodesEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertProcessingUnitSpecialOpcodesEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ProcessingUnitAdressingModeEnum createProcessingUnitAdressingModeEnumFromString(EDataType eDataType, String initialValue) {
        ProcessingUnitAdressingModeEnum result = ProcessingUnitAdressingModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertProcessingUnitAdressingModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ProcessingUnitArchitectureTypeEnum createProcessingUnitArchitectureTypeEnumFromString(EDataType eDataType, String initialValue) {
        ProcessingUnitArchitectureTypeEnum result = ProcessingUnitArchitectureTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertProcessingUnitArchitectureTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public RegisterTypeEnum createRegisterTypeEnumFromString(EDataType eDataType, String initialValue) {
        RegisterTypeEnum result = RegisterTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertRegisterTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ClockTypeEnum createClockTypeEnumFromString(EDataType eDataType, String initialValue) {
        ClockTypeEnum result = ClockTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertClockTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ProcessingunitPackage getProcessingunitPackage() {
        return (ProcessingunitPackage)this.getEPackage();
    }

    @Deprecated
    public static ProcessingunitPackage getPackage() {
        return ProcessingunitPackage.eINSTANCE;
    }
}

