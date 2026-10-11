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
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.BswMgrNeeds;
import autosar40.commonstructure.serviceneeds.ComMgrUserNeeds;
import autosar40.commonstructure.serviceneeds.CryptoServiceNeeds;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceCounterBased;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceMonitorInternal;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceTimeBased;
import autosar40.commonstructure.serviceneeds.DiagnosticAudienceEnum;
import autosar40.commonstructure.serviceneeds.DiagnosticCommunicationManagerNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticEventManagerNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticIoControlNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticRoutineNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticRoutineTypeEnum;
import autosar40.commonstructure.serviceneeds.DiagnosticValueAccessEnum;
import autosar40.commonstructure.serviceneeds.DiagnosticValueNeeds;
import autosar40.commonstructure.serviceneeds.DltUserNeeds;
import autosar40.commonstructure.serviceneeds.DtcKindEnum;
import autosar40.commonstructure.serviceneeds.EcuStateMgrUserNeeds;
import autosar40.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar40.commonstructure.serviceneeds.MaxCommModeEnum;
import autosar40.commonstructure.serviceneeds.NvBlockNeeds;
import autosar40.commonstructure.serviceneeds.NvBlockNeedsReliabilityEnum;
import autosar40.commonstructure.serviceneeds.NvBlockNeedsWritingPriorityEnum;
import autosar40.commonstructure.serviceneeds.ObdControlServiceNeeds;
import autosar40.commonstructure.serviceneeds.ObdInfoServiceNeeds;
import autosar40.commonstructure.serviceneeds.ObdMonitorServiceNeeds;
import autosar40.commonstructure.serviceneeds.ObdPidServiceNeeds;
import autosar40.commonstructure.serviceneeds.ObdRatioConnectionKindEnum;
import autosar40.commonstructure.serviceneeds.ObdRatioServiceNeeds;
import autosar40.commonstructure.serviceneeds.RoleBasedDataAssignment;
import autosar40.commonstructure.serviceneeds.ServiceProviderEnum;
import autosar40.commonstructure.serviceneeds.ServiceneedsFactory;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.SupervisedEntityNeeds;
import autosar40.commonstructure.serviceneeds.SyncTimeBaseMgrUserNeeds;
import autosar40.commonstructure.serviceneeds.impl.BswMgrNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.ComMgrUserNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.CryptoServiceNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.DiagEventDebounceCounterBasedImpl;
import autosar40.commonstructure.serviceneeds.impl.DiagEventDebounceMonitorInternalImpl;
import autosar40.commonstructure.serviceneeds.impl.DiagEventDebounceTimeBasedImpl;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCommunicationManagerNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticEventManagerNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticEventNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticIoControlNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticRoutineNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticValueNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.DltUserNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.EcuStateMgrUserNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.FunctionInhibitionNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.NvBlockNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.ObdControlServiceNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.ObdInfoServiceNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.ObdMonitorServiceNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.ObdPidServiceNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.ObdRatioServiceNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.RoleBasedDataAssignmentImpl;
import autosar40.commonstructure.serviceneeds.impl.SupervisedEntityNeedsImpl;
import autosar40.commonstructure.serviceneeds.impl.SyncTimeBaseMgrUserNeedsImpl;
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
            ServiceneedsFactory theServiceneedsFactory = (ServiceneedsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/sn");
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
                return this.createBswMgrNeeds();
            }
            case 2: {
                return this.createComMgrUserNeeds();
            }
            case 3: {
                return this.createCryptoServiceNeeds();
            }
            case 5: {
                return this.createDiagEventDebounceCounterBased();
            }
            case 6: {
                return this.createDiagEventDebounceMonitorInternal();
            }
            case 7: {
                return this.createDiagEventDebounceTimeBased();
            }
            case 9: {
                return this.createDiagnosticCommunicationManagerNeeds();
            }
            case 10: {
                return this.createDiagnosticEventManagerNeeds();
            }
            case 11: {
                return this.createDiagnosticEventNeeds();
            }
            case 12: {
                return this.createFunctionInhibitionNeeds();
            }
            case 13: {
                return this.createDiagnosticIoControlNeeds();
            }
            case 14: {
                return this.createDiagnosticRoutineNeeds();
            }
            case 15: {
                return this.createDiagnosticValueNeeds();
            }
            case 16: {
                return this.createDltUserNeeds();
            }
            case 17: {
                return this.createEcuStateMgrUserNeeds();
            }
            case 18: {
                return this.createObdControlServiceNeeds();
            }
            case 19: {
                return this.createObdInfoServiceNeeds();
            }
            case 20: {
                return this.createObdMonitorServiceNeeds();
            }
            case 21: {
                return this.createObdPidServiceNeeds();
            }
            case 22: {
                return this.createObdRatioServiceNeeds();
            }
            case 23: {
                return this.createRoleBasedDataAssignment();
            }
            case 25: {
                return this.createSupervisedEntityNeeds();
            }
            case 26: {
                return this.createSyncTimeBaseMgrUserNeeds();
            }
            case 27: {
                return this.createNvBlockNeeds();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 28: {
                return this.createMaxCommModeEnumFromString(eDataType, initialValue);
            }
            case 29: {
                return this.createDiagnosticAudienceEnumFromString(eDataType, initialValue);
            }
            case 30: {
                return this.createDtcKindEnumFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createDiagnosticRoutineTypeEnumFromString(eDataType, initialValue);
            }
            case 32: {
                return this.createDiagnosticValueAccessEnumFromString(eDataType, initialValue);
            }
            case 33: {
                return this.createNvBlockNeedsReliabilityEnumFromString(eDataType, initialValue);
            }
            case 34: {
                return this.createNvBlockNeedsWritingPriorityEnumFromString(eDataType, initialValue);
            }
            case 35: {
                return this.createObdRatioConnectionKindEnumFromString(eDataType, initialValue);
            }
            case 36: {
                return this.createServiceProviderEnumFromString(eDataType, initialValue);
            }
            case 37: {
                return this.createDiagRequirementIdStringFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 28: {
                return this.convertMaxCommModeEnumToString(eDataType, instanceValue);
            }
            case 29: {
                return this.convertDiagnosticAudienceEnumToString(eDataType, instanceValue);
            }
            case 30: {
                return this.convertDtcKindEnumToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertDiagnosticRoutineTypeEnumToString(eDataType, instanceValue);
            }
            case 32: {
                return this.convertDiagnosticValueAccessEnumToString(eDataType, instanceValue);
            }
            case 33: {
                return this.convertNvBlockNeedsReliabilityEnumToString(eDataType, instanceValue);
            }
            case 34: {
                return this.convertNvBlockNeedsWritingPriorityEnumToString(eDataType, instanceValue);
            }
            case 35: {
                return this.convertObdRatioConnectionKindEnumToString(eDataType, instanceValue);
            }
            case 36: {
                return this.convertServiceProviderEnumToString(eDataType, instanceValue);
            }
            case 37: {
                return this.convertDiagRequirementIdStringToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public BswMgrNeeds createBswMgrNeeds() {
        BswMgrNeedsImpl bswMgrNeeds = new BswMgrNeedsImpl();
        return bswMgrNeeds;
    }

    public ComMgrUserNeeds createComMgrUserNeeds() {
        ComMgrUserNeedsImpl comMgrUserNeeds = new ComMgrUserNeedsImpl();
        return comMgrUserNeeds;
    }

    public CryptoServiceNeeds createCryptoServiceNeeds() {
        CryptoServiceNeedsImpl cryptoServiceNeeds = new CryptoServiceNeedsImpl();
        return cryptoServiceNeeds;
    }

    public DiagEventDebounceCounterBased createDiagEventDebounceCounterBased() {
        DiagEventDebounceCounterBasedImpl diagEventDebounceCounterBased = new DiagEventDebounceCounterBasedImpl();
        return diagEventDebounceCounterBased;
    }

    public DiagEventDebounceMonitorInternal createDiagEventDebounceMonitorInternal() {
        DiagEventDebounceMonitorInternalImpl diagEventDebounceMonitorInternal = new DiagEventDebounceMonitorInternalImpl();
        return diagEventDebounceMonitorInternal;
    }

    public DiagEventDebounceTimeBased createDiagEventDebounceTimeBased() {
        DiagEventDebounceTimeBasedImpl diagEventDebounceTimeBased = new DiagEventDebounceTimeBasedImpl();
        return diagEventDebounceTimeBased;
    }

    public DiagnosticCommunicationManagerNeeds createDiagnosticCommunicationManagerNeeds() {
        DiagnosticCommunicationManagerNeedsImpl diagnosticCommunicationManagerNeeds = new DiagnosticCommunicationManagerNeedsImpl();
        return diagnosticCommunicationManagerNeeds;
    }

    public DiagnosticEventManagerNeeds createDiagnosticEventManagerNeeds() {
        DiagnosticEventManagerNeedsImpl diagnosticEventManagerNeeds = new DiagnosticEventManagerNeedsImpl();
        return diagnosticEventManagerNeeds;
    }

    public DiagnosticEventNeeds createDiagnosticEventNeeds() {
        DiagnosticEventNeedsImpl diagnosticEventNeeds = new DiagnosticEventNeedsImpl();
        return diagnosticEventNeeds;
    }

    public FunctionInhibitionNeeds createFunctionInhibitionNeeds() {
        FunctionInhibitionNeedsImpl functionInhibitionNeeds = new FunctionInhibitionNeedsImpl();
        return functionInhibitionNeeds;
    }

    public DiagnosticIoControlNeeds createDiagnosticIoControlNeeds() {
        DiagnosticIoControlNeedsImpl diagnosticIoControlNeeds = new DiagnosticIoControlNeedsImpl();
        return diagnosticIoControlNeeds;
    }

    public DiagnosticRoutineNeeds createDiagnosticRoutineNeeds() {
        DiagnosticRoutineNeedsImpl diagnosticRoutineNeeds = new DiagnosticRoutineNeedsImpl();
        return diagnosticRoutineNeeds;
    }

    public DiagnosticValueNeeds createDiagnosticValueNeeds() {
        DiagnosticValueNeedsImpl diagnosticValueNeeds = new DiagnosticValueNeedsImpl();
        return diagnosticValueNeeds;
    }

    public DltUserNeeds createDltUserNeeds() {
        DltUserNeedsImpl dltUserNeeds = new DltUserNeedsImpl();
        return dltUserNeeds;
    }

    public EcuStateMgrUserNeeds createEcuStateMgrUserNeeds() {
        EcuStateMgrUserNeedsImpl ecuStateMgrUserNeeds = new EcuStateMgrUserNeedsImpl();
        return ecuStateMgrUserNeeds;
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

    public RoleBasedDataAssignment createRoleBasedDataAssignment() {
        RoleBasedDataAssignmentImpl roleBasedDataAssignment = new RoleBasedDataAssignmentImpl();
        return roleBasedDataAssignment;
    }

    public SupervisedEntityNeeds createSupervisedEntityNeeds() {
        SupervisedEntityNeedsImpl supervisedEntityNeeds = new SupervisedEntityNeedsImpl();
        return supervisedEntityNeeds;
    }

    public SyncTimeBaseMgrUserNeeds createSyncTimeBaseMgrUserNeeds() {
        SyncTimeBaseMgrUserNeedsImpl syncTimeBaseMgrUserNeeds = new SyncTimeBaseMgrUserNeedsImpl();
        return syncTimeBaseMgrUserNeeds;
    }

    public NvBlockNeeds createNvBlockNeeds() {
        NvBlockNeedsImpl nvBlockNeeds = new NvBlockNeedsImpl();
        return nvBlockNeeds;
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

    public DiagnosticAudienceEnum createDiagnosticAudienceEnumFromString(EDataType eDataType, String initialValue) {
        DiagnosticAudienceEnum result = DiagnosticAudienceEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDiagnosticAudienceEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DtcKindEnum createDtcKindEnumFromString(EDataType eDataType, String initialValue) {
        DtcKindEnum result = DtcKindEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDtcKindEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DiagnosticRoutineTypeEnum createDiagnosticRoutineTypeEnumFromString(EDataType eDataType, String initialValue) {
        DiagnosticRoutineTypeEnum result = DiagnosticRoutineTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDiagnosticRoutineTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DiagnosticValueAccessEnum createDiagnosticValueAccessEnumFromString(EDataType eDataType, String initialValue) {
        DiagnosticValueAccessEnum result = DiagnosticValueAccessEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDiagnosticValueAccessEnumToString(EDataType eDataType, Object instanceValue) {
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

    public ObdRatioConnectionKindEnum createObdRatioConnectionKindEnumFromString(EDataType eDataType, String initialValue) {
        ObdRatioConnectionKindEnum result = ObdRatioConnectionKindEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertObdRatioConnectionKindEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ServiceProviderEnum createServiceProviderEnumFromString(EDataType eDataType, String initialValue) {
        ServiceProviderEnum result = ServiceProviderEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertServiceProviderEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public String createDiagRequirementIdStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertDiagRequirementIdStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public ServiceneedsPackage getServiceneedsPackage() {
        return (ServiceneedsPackage)this.getEPackage();
    }

    @Deprecated
    public static ServiceneedsPackage getPackage() {
        return ServiceneedsPackage.eINSTANCE;
    }
}

