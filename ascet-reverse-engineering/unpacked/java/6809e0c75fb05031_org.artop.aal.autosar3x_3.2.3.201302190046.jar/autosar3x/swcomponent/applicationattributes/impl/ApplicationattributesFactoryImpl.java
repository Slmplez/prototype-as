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
package autosar3x.swcomponent.applicationattributes.impl;

import autosar3x.swcomponent.applicationattributes.ApplicationattributesFactory;
import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar3x.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar3x.swcomponent.applicationattributes.FilterDebouncingEnum;
import autosar3x.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar3x.swcomponent.applicationattributes.LimitKind;
import autosar3x.swcomponent.applicationattributes.ProcessingKind;
import autosar3x.swcomponent.applicationattributes.PulseTestEnum;
import autosar3x.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar3x.swcomponent.applicationattributes.ReportFeature;
import autosar3x.swcomponent.applicationattributes.SenderAnnotation;
import autosar3x.swcomponent.applicationattributes.SignalFanEnum;
import autosar3x.swcomponent.applicationattributes.WakeUp;
import autosar3x.swcomponent.applicationattributes.impl.CalibrationPortAnnotationImpl;
import autosar3x.swcomponent.applicationattributes.impl.DelegatedPortAnnotationImpl;
import autosar3x.swcomponent.applicationattributes.impl.IoHwAbstractionServerAnnotationImpl;
import autosar3x.swcomponent.applicationattributes.impl.ReceiverAnnotationImpl;
import autosar3x.swcomponent.applicationattributes.impl.ReportFeatureImpl;
import autosar3x.swcomponent.applicationattributes.impl.SenderAnnotationImpl;
import autosar3x.swcomponent.applicationattributes.impl.WakeUpImpl;
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
            ApplicationattributesFactory theApplicationattributesFactory = (ApplicationattributesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/aa");
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
                return this.createIoHwAbstractionServerAnnotation();
            }
            case 2: {
                return this.createReportFeature();
            }
            case 3: {
                return this.createWakeUp();
            }
            case 4: {
                return this.createReceiverAnnotation();
            }
            case 6: {
                return this.createSenderAnnotation();
            }
            case 7: {
                return this.createDelegatedPortAnnotation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.createFilterDebouncingEnumFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createPulseTestEnumFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createLimitKindFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createProcessingKindFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createSignalFanEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.convertFilterDebouncingEnumToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertPulseTestEnumToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertLimitKindToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertProcessingKindToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertSignalFanEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CalibrationPortAnnotation createCalibrationPortAnnotation() {
        CalibrationPortAnnotationImpl calibrationPortAnnotation = new CalibrationPortAnnotationImpl();
        return calibrationPortAnnotation;
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

    public ReceiverAnnotation createReceiverAnnotation() {
        ReceiverAnnotationImpl receiverAnnotation = new ReceiverAnnotationImpl();
        return receiverAnnotation;
    }

    public SenderAnnotation createSenderAnnotation() {
        SenderAnnotationImpl senderAnnotation = new SenderAnnotationImpl();
        return senderAnnotation;
    }

    public DelegatedPortAnnotation createDelegatedPortAnnotation() {
        DelegatedPortAnnotationImpl delegatedPortAnnotation = new DelegatedPortAnnotationImpl();
        return delegatedPortAnnotation;
    }

    public FilterDebouncingEnum createFilterDebouncingEnumFromString(EDataType eDataType, String initialValue) {
        FilterDebouncingEnum result = FilterDebouncingEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertFilterDebouncingEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PulseTestEnum createPulseTestEnumFromString(EDataType eDataType, String initialValue) {
        PulseTestEnum result = PulseTestEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPulseTestEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LimitKind createLimitKindFromString(EDataType eDataType, String initialValue) {
        LimitKind result = LimitKind.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertLimitKindToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ProcessingKind createProcessingKindFromString(EDataType eDataType, String initialValue) {
        ProcessingKind result = ProcessingKind.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertProcessingKindToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SignalFanEnum createSignalFanEnumFromString(EDataType eDataType, String initialValue) {
        SignalFanEnum result = SignalFanEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSignalFanEnumToString(EDataType eDataType, Object instanceValue) {
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

