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
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.swcomponent.applicationattributes.ApplicationattributesFactory;
import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar21.swcomponent.applicationattributes.ComMUserNeeds;
import autosar21.swcomponent.applicationattributes.ExtAnnotation;
import autosar21.swcomponent.applicationattributes.FailureMonitoring;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotationFilteringDebouncingEnum;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotationPulseTestEnum;
import autosar21.swcomponent.applicationattributes.MaxCommMode;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeeds;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeedsReliabilityEnum;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeedsWritingPriorityEnum;
import autosar21.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar21.swcomponent.applicationattributes.ReportFeature;
import autosar21.swcomponent.applicationattributes.SenderAnnotation;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationLimitTypeEnum;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationProcessingTypeEnum;
import autosar21.swcomponent.applicationattributes.ServiceNeeds;
import autosar21.swcomponent.applicationattributes.SupervisedEntityNeeds;
import autosar21.swcomponent.applicationattributes.WakeUp;
import autosar21.swcomponent.applicationattributes.impl.CalibrationPortAnnotationImpl;
import autosar21.swcomponent.applicationattributes.impl.ComMUserNeedsImpl;
import autosar21.swcomponent.applicationattributes.impl.ExtAnnotationImpl;
import autosar21.swcomponent.applicationattributes.impl.FailureMonitoringImpl;
import autosar21.swcomponent.applicationattributes.impl.IoHwAbstractionServerAnnotationImpl;
import autosar21.swcomponent.applicationattributes.impl.NVRAMBlockNeedsImpl;
import autosar21.swcomponent.applicationattributes.impl.ReceiverAnnotationImpl;
import autosar21.swcomponent.applicationattributes.impl.ReportFeatureImpl;
import autosar21.swcomponent.applicationattributes.impl.SenderAnnotationImpl;
import autosar21.swcomponent.applicationattributes.impl.ServiceNeedsImpl;
import autosar21.swcomponent.applicationattributes.impl.SupervisedEntityNeedsImpl;
import autosar21.swcomponent.applicationattributes.impl.WakeUpImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ApplicationattributesFactoryImpl
extends EFactoryImpl
implements ApplicationattributesFactory {
    public static ApplicationattributesFactory init() {
        try {
            ApplicationattributesFactory theApplicationattributesFactory = (ApplicationattributesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/aa");
            if (theApplicationattributesFactory != null) {
                return theApplicationattributesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ApplicationattributesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCalibrationPortAnnotation();
            }
            case 1: {
                return this.createComMUserNeeds();
            }
            case 2: {
                return this.createServiceNeeds();
            }
            case 3: {
                return this.createExtAnnotation();
            }
            case 4: {
                return this.createFailureMonitoring();
            }
            case 5: {
                return this.createIoHwAbstractionServerAnnotation();
            }
            case 6: {
                return this.createReportFeature();
            }
            case 7: {
                return this.createWakeUp();
            }
            case 8: {
                return this.createNVRAMBlockNeeds();
            }
            case 9: {
                return this.createReceiverAnnotation();
            }
            case 11: {
                return this.createSenderAnnotation();
            }
            case 12: {
                return this.createSupervisedEntityNeeds();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 14: {
                return this.createMaxCommModeFromString(eDataType, initialValue);
            }
            case 15: {
                return this.createIoHwAbstractionServerAnnotationPulseTestEnumFromString(eDataType, initialValue);
            }
            case 16: {
                return this.createIoHwAbstractionServerAnnotationFilteringDebouncingEnumFromString(eDataType, initialValue);
            }
            case 17: {
                return this.createNVRAMBlockNeedsReliabilityEnumFromString(eDataType, initialValue);
            }
            case 18: {
                return this.createNVRAMBlockNeedsWritingPriorityEnumFromString(eDataType, initialValue);
            }
            case 19: {
                return this.createSenderReceiverAnnotationLimitTypeEnumFromString(eDataType, initialValue);
            }
            case 20: {
                return this.createSenderReceiverAnnotationProcessingTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 14: {
                return this.convertMaxCommModeToString(eDataType, instanceValue);
            }
            case 15: {
                return this.convertIoHwAbstractionServerAnnotationPulseTestEnumToString(eDataType, instanceValue);
            }
            case 16: {
                return this.convertIoHwAbstractionServerAnnotationFilteringDebouncingEnumToString(eDataType, instanceValue);
            }
            case 17: {
                return this.convertNVRAMBlockNeedsReliabilityEnumToString(eDataType, instanceValue);
            }
            case 18: {
                return this.convertNVRAMBlockNeedsWritingPriorityEnumToString(eDataType, instanceValue);
            }
            case 19: {
                return this.convertSenderReceiverAnnotationLimitTypeEnumToString(eDataType, instanceValue);
            }
            case 20: {
                return this.convertSenderReceiverAnnotationProcessingTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CalibrationPortAnnotation createCalibrationPortAnnotation() {
        CalibrationPortAnnotationImpl calibrationPortAnnotation = new CalibrationPortAnnotationImpl();
        return calibrationPortAnnotation;
    }

    public ComMUserNeeds createComMUserNeeds() {
        ComMUserNeedsImpl comMUserNeeds = new ComMUserNeedsImpl();
        return comMUserNeeds;
    }

    public ServiceNeeds createServiceNeeds() {
        ServiceNeedsImpl serviceNeeds = new ServiceNeedsImpl();
        return serviceNeeds;
    }

    public ExtAnnotation createExtAnnotation() {
        ExtAnnotationImpl extAnnotation = new ExtAnnotationImpl();
        return extAnnotation;
    }

    public FailureMonitoring createFailureMonitoring() {
        FailureMonitoringImpl failureMonitoring = new FailureMonitoringImpl();
        return failureMonitoring;
    }

    public IoHwAbstractionServerAnnotation createIoHwAbstractionServerAnnotation() {
        IoHwAbstractionServerAnnotationImpl ioHwAbstractionServerAnnotation = new IoHwAbstractionServerAnnotationImpl();
        return ioHwAbstractionServerAnnotation;
    }

    public ReportFeature createReportFeature() {
        ReportFeatureImpl reportFeature = new ReportFeatureImpl();
        return reportFeature;
    }

    public WakeUp createWakeUp() {
        WakeUpImpl wakeUp = new WakeUpImpl();
        return wakeUp;
    }

    public NVRAMBlockNeeds createNVRAMBlockNeeds() {
        NVRAMBlockNeedsImpl nvramBlockNeeds = new NVRAMBlockNeedsImpl();
        return nvramBlockNeeds;
    }

    public ReceiverAnnotation createReceiverAnnotation() {
        ReceiverAnnotationImpl receiverAnnotation = new ReceiverAnnotationImpl();
        return receiverAnnotation;
    }

    public SenderAnnotation createSenderAnnotation() {
        SenderAnnotationImpl senderAnnotation = new SenderAnnotationImpl();
        return senderAnnotation;
    }

    public SupervisedEntityNeeds createSupervisedEntityNeeds() {
        SupervisedEntityNeedsImpl supervisedEntityNeeds = new SupervisedEntityNeedsImpl();
        return supervisedEntityNeeds;
    }

    public MaxCommMode createMaxCommModeFromString(EDataType eDataType, String initialValue) {
        MaxCommMode result = MaxCommMode.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMaxCommModeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public IoHwAbstractionServerAnnotationPulseTestEnum createIoHwAbstractionServerAnnotationPulseTestEnumFromString(EDataType eDataType, String initialValue) {
        IoHwAbstractionServerAnnotationPulseTestEnum result = IoHwAbstractionServerAnnotationPulseTestEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertIoHwAbstractionServerAnnotationPulseTestEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public IoHwAbstractionServerAnnotationFilteringDebouncingEnum createIoHwAbstractionServerAnnotationFilteringDebouncingEnumFromString(EDataType eDataType, String initialValue) {
        IoHwAbstractionServerAnnotationFilteringDebouncingEnum result = IoHwAbstractionServerAnnotationFilteringDebouncingEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertIoHwAbstractionServerAnnotationFilteringDebouncingEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public NVRAMBlockNeedsReliabilityEnum createNVRAMBlockNeedsReliabilityEnumFromString(EDataType eDataType, String initialValue) {
        NVRAMBlockNeedsReliabilityEnum result = NVRAMBlockNeedsReliabilityEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertNVRAMBlockNeedsReliabilityEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public NVRAMBlockNeedsWritingPriorityEnum createNVRAMBlockNeedsWritingPriorityEnumFromString(EDataType eDataType, String initialValue) {
        NVRAMBlockNeedsWritingPriorityEnum result = NVRAMBlockNeedsWritingPriorityEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertNVRAMBlockNeedsWritingPriorityEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SenderReceiverAnnotationLimitTypeEnum createSenderReceiverAnnotationLimitTypeEnumFromString(EDataType eDataType, String initialValue) {
        SenderReceiverAnnotationLimitTypeEnum result = SenderReceiverAnnotationLimitTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSenderReceiverAnnotationLimitTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SenderReceiverAnnotationProcessingTypeEnum createSenderReceiverAnnotationProcessingTypeEnumFromString(EDataType eDataType, String initialValue) {
        SenderReceiverAnnotationProcessingTypeEnum result = SenderReceiverAnnotationProcessingTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSenderReceiverAnnotationProcessingTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ApplicationattributesPackage getApplicationattributesPackage() {
        return (ApplicationattributesPackage)this.getEPackage();
    }

    @Deprecated
    public static ApplicationattributesPackage getPackage() {
        return ApplicationattributesPackage.eINSTANCE;
    }
}

