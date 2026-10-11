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
package autosar3x.commonstructure.serviceneeds.impl;

import autosar3x.commonstructure.serviceneeds.ComMgrUserNeeds;
import autosar3x.commonstructure.serviceneeds.DiagnosticCommunicationNeeds;
import autosar3x.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar3x.commonstructure.serviceneeds.EcuStateMgrUserNeeds;
import autosar3x.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar3x.commonstructure.serviceneeds.MaxCommModeEnum;
import autosar3x.commonstructure.serviceneeds.NvBlockNeeds;
import autosar3x.commonstructure.serviceneeds.NvBlockNeedsReliabilityEnum;
import autosar3x.commonstructure.serviceneeds.NvBlockNeedsWritingPriorityEnum;
import autosar3x.commonstructure.serviceneeds.ObdControlServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ObdInfoServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ObdMonitorServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ObdPidServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ObdRatioConnectionKind;
import autosar3x.commonstructure.serviceneeds.ObdRatioServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceneedsFactory;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.SupervisedEntityNeeds;
import autosar3x.commonstructure.serviceneeds.impl.ComMgrUserNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.DiagnosticCommunicationNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.DiagnosticEventNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.EcuStateMgrUserNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.FunctionInhibitionNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.NvBlockNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.ObdControlServiceNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.ObdInfoServiceNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.ObdMonitorServiceNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.ObdPidServiceNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.ObdRatioServiceNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import autosar3x.commonstructure.serviceneeds.impl.SupervisedEntityNeedsImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ServiceneedsFactoryImpl
extends EFactoryImpl
implements ServiceneedsFactory {
    public static ServiceneedsFactory init() {
        try {
            ServiceneedsFactory theServiceneedsFactory = (ServiceneedsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/sn");
            if (theServiceneedsFactory != null) {
                return theServiceneedsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ServiceneedsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createComMgrUserNeeds();
            }
            case 1: {
                return this.createServiceNeeds();
            }
            case 2: {
                return this.createDiagnosticCommunicationNeeds();
            }
            case 3: {
                return this.createDiagnosticEventNeeds();
            }
            case 4: {
                return this.createEcuStateMgrUserNeeds();
            }
            case 5: {
                return this.createFunctionInhibitionNeeds();
            }
            case 6: {
                return this.createNvBlockNeeds();
            }
            case 7: {
                return this.createObdControlServiceNeeds();
            }
            case 8: {
                return this.createObdInfoServiceNeeds();
            }
            case 9: {
                return this.createObdMonitorServiceNeeds();
            }
            case 10: {
                return this.createObdPidServiceNeeds();
            }
            case 11: {
                return this.createObdRatioServiceNeeds();
            }
            case 12: {
                return this.createSupervisedEntityNeeds();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 13: {
                return this.createMaxCommModeEnumFromString(eDataType, initialValue);
            }
            case 14: {
                return this.createNvBlockNeedsReliabilityEnumFromString(eDataType, initialValue);
            }
            case 15: {
                return this.createNvBlockNeedsWritingPriorityEnumFromString(eDataType, initialValue);
            }
            case 16: {
                return this.createObdRatioConnectionKindFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 13: {
                return this.convertMaxCommModeEnumToString(eDataType, instanceValue);
            }
            case 14: {
                return this.convertNvBlockNeedsReliabilityEnumToString(eDataType, instanceValue);
            }
            case 15: {
                return this.convertNvBlockNeedsWritingPriorityEnumToString(eDataType, instanceValue);
            }
            case 16: {
                return this.convertObdRatioConnectionKindToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ComMgrUserNeeds createComMgrUserNeeds() {
        ComMgrUserNeedsImpl comMgrUserNeeds = new ComMgrUserNeedsImpl();
        return comMgrUserNeeds;
    }

    public ServiceNeeds createServiceNeeds() {
        ServiceNeedsImpl serviceNeeds = new ServiceNeedsImpl();
        return serviceNeeds;
    }

    public DiagnosticCommunicationNeeds createDiagnosticCommunicationNeeds() {
        DiagnosticCommunicationNeedsImpl diagnosticCommunicationNeeds = new DiagnosticCommunicationNeedsImpl();
        return diagnosticCommunicationNeeds;
    }

    public DiagnosticEventNeeds createDiagnosticEventNeeds() {
        DiagnosticEventNeedsImpl diagnosticEventNeeds = new DiagnosticEventNeedsImpl();
        return diagnosticEventNeeds;
    }

    public EcuStateMgrUserNeeds createEcuStateMgrUserNeeds() {
        EcuStateMgrUserNeedsImpl ecuStateMgrUserNeeds = new EcuStateMgrUserNeedsImpl();
        return ecuStateMgrUserNeeds;
    }

    public FunctionInhibitionNeeds createFunctionInhibitionNeeds() {
        FunctionInhibitionNeedsImpl functionInhibitionNeeds = new FunctionInhibitionNeedsImpl();
        return functionInhibitionNeeds;
    }

    public NvBlockNeeds createNvBlockNeeds() {
        NvBlockNeedsImpl nvBlockNeeds = new NvBlockNeedsImpl();
        return nvBlockNeeds;
    }

    public ObdControlServiceNeeds createObdControlServiceNeeds() {
        ObdControlServiceNeedsImpl obdControlServiceNeeds = new ObdControlServiceNeedsImpl();
        return obdControlServiceNeeds;
    }

    public ObdInfoServiceNeeds createObdInfoServiceNeeds() {
        ObdInfoServiceNeedsImpl obdInfoServiceNeeds = new ObdInfoServiceNeedsImpl();
        return obdInfoServiceNeeds;
    }

    public ObdMonitorServiceNeeds createObdMonitorServiceNeeds() {
        ObdMonitorServiceNeedsImpl obdMonitorServiceNeeds = new ObdMonitorServiceNeedsImpl();
        return obdMonitorServiceNeeds;
    }

    public ObdPidServiceNeeds createObdPidServiceNeeds() {
        ObdPidServiceNeedsImpl obdPidServiceNeeds = new ObdPidServiceNeedsImpl();
        return obdPidServiceNeeds;
    }

    public ObdRatioServiceNeeds createObdRatioServiceNeeds() {
        ObdRatioServiceNeedsImpl obdRatioServiceNeeds = new ObdRatioServiceNeedsImpl();
        return obdRatioServiceNeeds;
    }

    public SupervisedEntityNeeds createSupervisedEntityNeeds() {
        SupervisedEntityNeedsImpl supervisedEntityNeeds = new SupervisedEntityNeedsImpl();
        return supervisedEntityNeeds;
    }

    public MaxCommModeEnum createMaxCommModeEnumFromString(EDataType eDataType, String initialValue) {
        MaxCommModeEnum result = MaxCommModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMaxCommModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public NvBlockNeedsReliabilityEnum createNvBlockNeedsReliabilityEnumFromString(EDataType eDataType, String initialValue) {
        NvBlockNeedsReliabilityEnum result = NvBlockNeedsReliabilityEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertNvBlockNeedsReliabilityEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public NvBlockNeedsWritingPriorityEnum createNvBlockNeedsWritingPriorityEnumFromString(EDataType eDataType, String initialValue) {
        NvBlockNeedsWritingPriorityEnum result = NvBlockNeedsWritingPriorityEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertNvBlockNeedsWritingPriorityEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ObdRatioConnectionKind createObdRatioConnectionKindFromString(EDataType eDataType, String initialValue) {
        ObdRatioConnectionKind result = ObdRatioConnectionKind.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertObdRatioConnectionKindToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ServiceneedsPackage getServiceneedsPackage() {
        return (ServiceneedsPackage)this.getEPackage();
    }

    @Deprecated
    public static ServiceneedsPackage getPackage() {
        return ServiceneedsPackage.eINSTANCE;
    }
}

