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
package autosar40.swcomponent.applicationattributes.impl;

import autosar40.swcomponent.applicationattributes.ApplicationattributesFactory;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.ClientServerAnnotation;
import autosar40.swcomponent.applicationattributes.DataLimitKindEnum;
import autosar40.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar40.swcomponent.applicationattributes.FilterDebouncingEnum;
import autosar40.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar40.swcomponent.applicationattributes.ModePortAnnotation;
import autosar40.swcomponent.applicationattributes.NvDataPortAnnotation;
import autosar40.swcomponent.applicationattributes.ParameterPortAnnotation;
import autosar40.swcomponent.applicationattributes.ProcessingKindEnum;
import autosar40.swcomponent.applicationattributes.PulseTestEnum;
import autosar40.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.SenderAnnotation;
import autosar40.swcomponent.applicationattributes.SignalFanEnum;
import autosar40.swcomponent.applicationattributes.TriggerPortAnnotation;
import autosar40.swcomponent.applicationattributes.impl.ClientServerAnnotationImpl;
import autosar40.swcomponent.applicationattributes.impl.DelegatedPortAnnotationImpl;
import autosar40.swcomponent.applicationattributes.impl.IoHwAbstractionServerAnnotationImpl;
import autosar40.swcomponent.applicationattributes.impl.ModePortAnnotationImpl;
import autosar40.swcomponent.applicationattributes.impl.NvDataPortAnnotationImpl;
import autosar40.swcomponent.applicationattributes.impl.ParameterPortAnnotationImpl;
import autosar40.swcomponent.applicationattributes.impl.ReceiverAnnotationImpl;
import autosar40.swcomponent.applicationattributes.impl.SenderAnnotationImpl;
import autosar40.swcomponent.applicationattributes.impl.TriggerPortAnnotationImpl;
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
            ApplicationattributesFactory theApplicationattributesFactory = (ApplicationattributesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/aa");
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
                return this.createClientServerAnnotation();
            }
            case 1: {
                return this.createDelegatedPortAnnotation();
            }
            case 2: {
                return this.createIoHwAbstractionServerAnnotation();
            }
            case 3: {
                return this.createModePortAnnotation();
            }
            case 4: {
                return this.createNvDataPortAnnotation();
            }
            case 5: {
                return this.createParameterPortAnnotation();
            }
            case 6: {
                return this.createReceiverAnnotation();
            }
            case 7: {
                return this.createSenderAnnotation();
            }
            case 8: {
                return this.createTriggerPortAnnotation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 10: {
                return this.createDataLimitKindEnumFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createSignalFanEnumFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createFilterDebouncingEnumFromString(eDataType, initialValue);
            }
            case 13: {
                return this.createPulseTestEnumFromString(eDataType, initialValue);
            }
            case 14: {
                return this.createProcessingKindEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 10: {
                return this.convertDataLimitKindEnumToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertSignalFanEnumToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertFilterDebouncingEnumToString(eDataType, instanceValue);
            }
            case 13: {
                return this.convertPulseTestEnumToString(eDataType, instanceValue);
            }
            case 14: {
                return this.convertProcessingKindEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ClientServerAnnotation createClientServerAnnotation() {
        ClientServerAnnotationImpl clientServerAnnotation = new ClientServerAnnotationImpl();
        return clientServerAnnotation;
    }

    public DelegatedPortAnnotation createDelegatedPortAnnotation() {
        DelegatedPortAnnotationImpl delegatedPortAnnotation = new DelegatedPortAnnotationImpl();
        return delegatedPortAnnotation;
    }

    public IoHwAbstractionServerAnnotation createIoHwAbstractionServerAnnotation() {
        IoHwAbstractionServerAnnotationImpl ioHwAbstractionServerAnnotation = new IoHwAbstractionServerAnnotationImpl();
        return ioHwAbstractionServerAnnotation;
    }

    public ModePortAnnotation createModePortAnnotation() {
        ModePortAnnotationImpl modePortAnnotation = new ModePortAnnotationImpl();
        return modePortAnnotation;
    }

    public NvDataPortAnnotation createNvDataPortAnnotation() {
        NvDataPortAnnotationImpl nvDataPortAnnotation = new NvDataPortAnnotationImpl();
        return nvDataPortAnnotation;
    }

    public ParameterPortAnnotation createParameterPortAnnotation() {
        ParameterPortAnnotationImpl parameterPortAnnotation = new ParameterPortAnnotationImpl();
        return parameterPortAnnotation;
    }

    public ReceiverAnnotation createReceiverAnnotation() {
        ReceiverAnnotationImpl receiverAnnotation = new ReceiverAnnotationImpl();
        return receiverAnnotation;
    }

    public SenderAnnotation createSenderAnnotation() {
        SenderAnnotationImpl senderAnnotation = new SenderAnnotationImpl();
        return senderAnnotation;
    }

    public TriggerPortAnnotation createTriggerPortAnnotation() {
        TriggerPortAnnotationImpl triggerPortAnnotation = new TriggerPortAnnotationImpl();
        return triggerPortAnnotation;
    }

    public DataLimitKindEnum createDataLimitKindEnumFromString(EDataType eDataType, String initialValue) {
        DataLimitKindEnum result = DataLimitKindEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDataLimitKindEnumToString(EDataType eDataType, Object instanceValue) {
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

    public ProcessingKindEnum createProcessingKindEnumFromString(EDataType eDataType, String initialValue) {
        ProcessingKindEnum result = ProcessingKindEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertProcessingKindEnumToString(EDataType eDataType, Object instanceValue) {
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

