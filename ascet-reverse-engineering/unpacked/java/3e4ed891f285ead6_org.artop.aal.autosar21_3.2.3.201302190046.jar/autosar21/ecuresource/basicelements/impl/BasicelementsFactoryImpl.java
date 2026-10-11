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
package autosar21.ecuresource.basicelements.impl;

import autosar21.ecuresource.basicelements.BasicelementsFactory;
import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.basicelements.BootTime;
import autosar21.ecuresource.basicelements.ElectricalRange;
import autosar21.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar21.ecuresource.basicelements.FrequencyRange;
import autosar21.ecuresource.basicelements.MemoryAccess;
import autosar21.ecuresource.basicelements.MemoryAccessAccessTypeEnum;
import autosar21.ecuresource.basicelements.SupportsSafety;
import autosar21.ecuresource.basicelements.SupportsSecurity;
import autosar21.ecuresource.basicelements.Temperature;
import autosar21.ecuresource.basicelements.TimeRange;
import autosar21.ecuresource.basicelements.impl.BootTimeImpl;
import autosar21.ecuresource.basicelements.impl.ElectricalRangeImpl;
import autosar21.ecuresource.basicelements.impl.ErrorDetectionCorrectionImpl;
import autosar21.ecuresource.basicelements.impl.FrequencyRangeImpl;
import autosar21.ecuresource.basicelements.impl.MemoryAccessImpl;
import autosar21.ecuresource.basicelements.impl.SupportsSafetyImpl;
import autosar21.ecuresource.basicelements.impl.SupportsSecurityImpl;
import autosar21.ecuresource.basicelements.impl.TemperatureImpl;
import autosar21.ecuresource.basicelements.impl.TimeRangeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BasicelementsFactoryImpl
extends EFactoryImpl
implements BasicelementsFactory {
    public static BasicelementsFactory init() {
        try {
            BasicelementsFactory theBasicelementsFactory = (BasicelementsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/ecur/be");
            if (theBasicelementsFactory != null) {
                return theBasicelementsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BasicelementsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBootTime();
            }
            case 1: {
                return this.createElectricalRange();
            }
            case 2: {
                return this.createErrorDetectionCorrection();
            }
            case 3: {
                return this.createFrequencyRange();
            }
            case 4: {
                return this.createMemoryAccess();
            }
            case 5: {
                return this.createTimeRange();
            }
            case 6: {
                return this.createSupportsSafety();
            }
            case 7: {
                return this.createSupportsSecurity();
            }
            case 8: {
                return this.createTemperature();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 9: {
                return this.createMemoryAccessAccessTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 9: {
                return this.convertMemoryAccessAccessTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public BootTime createBootTime() {
        BootTimeImpl bootTime = new BootTimeImpl();
        return bootTime;
    }

    public ElectricalRange createElectricalRange() {
        ElectricalRangeImpl electricalRange = new ElectricalRangeImpl();
        return electricalRange;
    }

    public ErrorDetectionCorrection createErrorDetectionCorrection() {
        ErrorDetectionCorrectionImpl errorDetectionCorrection = new ErrorDetectionCorrectionImpl();
        return errorDetectionCorrection;
    }

    public FrequencyRange createFrequencyRange() {
        FrequencyRangeImpl frequencyRange = new FrequencyRangeImpl();
        return frequencyRange;
    }

    public MemoryAccess createMemoryAccess() {
        MemoryAccessImpl memoryAccess = new MemoryAccessImpl();
        return memoryAccess;
    }

    public TimeRange createTimeRange() {
        TimeRangeImpl timeRange = new TimeRangeImpl();
        return timeRange;
    }

    public SupportsSafety createSupportsSafety() {
        SupportsSafetyImpl supportsSafety = new SupportsSafetyImpl();
        return supportsSafety;
    }

    public SupportsSecurity createSupportsSecurity() {
        SupportsSecurityImpl supportsSecurity = new SupportsSecurityImpl();
        return supportsSecurity;
    }

    public Temperature createTemperature() {
        TemperatureImpl temperature = new TemperatureImpl();
        return temperature;
    }

    public MemoryAccessAccessTypeEnum createMemoryAccessAccessTypeEnumFromString(EDataType eDataType, String initialValue) {
        MemoryAccessAccessTypeEnum result = MemoryAccessAccessTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMemoryAccessAccessTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public BasicelementsPackage getBasicelementsPackage() {
        return (BasicelementsPackage)this.getEPackage();
    }

    @Deprecated
    public static BasicelementsPackage getPackage() {
        return BasicelementsPackage.eINSTANCE;
    }
}

