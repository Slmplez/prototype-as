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
package autosar21.ecuresource.processingunit.impl;

import autosar21.ecuresource.processingunit.InterruptConsumeHWPort;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.ecuresource.processingunit.MPU;
import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.ecuresource.processingunit.ProcessingUnitAddressingModesEnum;
import autosar21.ecuresource.processingunit.ProcessingUnitArchitectureKindEnum;
import autosar21.ecuresource.processingunit.ProcessingUnitArchitectureTypeEnum;
import autosar21.ecuresource.processingunit.ProcessingUnitSpecialOpcodesEnum;
import autosar21.ecuresource.processingunit.ProcessingunitFactory;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.ecuresource.processingunit.Register;
import autosar21.ecuresource.processingunit.RegisterTypeEnum;
import autosar21.ecuresource.processingunit.SupportedDataType;
import autosar21.ecuresource.processingunit.impl.InterruptConsumeHWPortImpl;
import autosar21.ecuresource.processingunit.impl.InterruptProduceHWPortImpl;
import autosar21.ecuresource.processingunit.impl.MPUImpl;
import autosar21.ecuresource.processingunit.impl.ProcessingUnitImpl;
import autosar21.ecuresource.processingunit.impl.RegisterImpl;
import autosar21.ecuresource.processingunit.impl.SupportedDataTypeImpl;
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
            ProcessingunitFactory theProcessingunitFactory = (ProcessingunitFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/ecur/pu");
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
                return this.createMPU();
            }
            case 3: {
                return this.createProcessingUnit();
            }
            case 4: {
                return this.createRegister();
            }
            case 5: {
                return this.createSupportedDataType();
            }
            case 6: {
                return this.createInterruptProduceHWPort();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createProcessingUnitArchitectureKindEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createProcessingUnitSpecialOpcodesEnumFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createProcessingUnitAddressingModesEnumFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createProcessingUnitArchitectureTypeEnumFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createRegisterTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertProcessingUnitArchitectureKindEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertProcessingUnitSpecialOpcodesEnumToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertProcessingUnitAddressingModesEnumToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertProcessingUnitArchitectureTypeEnumToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertRegisterTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public InterruptConsumeHWPort createInterruptConsumeHWPort() {
        InterruptConsumeHWPortImpl interruptConsumeHWPort = new InterruptConsumeHWPortImpl();
        return interruptConsumeHWPort;
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

    public InterruptProduceHWPort createInterruptProduceHWPort() {
        InterruptProduceHWPortImpl interruptProduceHWPort = new InterruptProduceHWPortImpl();
        return interruptProduceHWPort;
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

    public ProcessingUnitAddressingModesEnum createProcessingUnitAddressingModesEnumFromString(EDataType eDataType, String initialValue) {
        ProcessingUnitAddressingModesEnum result = ProcessingUnitAddressingModesEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertProcessingUnitAddressingModesEnumToString(EDataType eDataType, Object instanceValue) {
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

    public ProcessingunitPackage getProcessingunitPackage() {
        return (ProcessingunitPackage)this.getEPackage();
    }

    @Deprecated
    public static ProcessingunitPackage getPackage() {
        return ProcessingunitPackage.eINSTANCE;
    }
}

