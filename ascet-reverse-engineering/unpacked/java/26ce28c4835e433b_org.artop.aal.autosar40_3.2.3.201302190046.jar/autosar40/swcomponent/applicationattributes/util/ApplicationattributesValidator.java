/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.EObjectValidator
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 */
package autosar40.swcomponent.applicationattributes.util;

import autosar40.Activator;
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
import autosar40.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.SignalFanEnum;
import autosar40.swcomponent.applicationattributes.TriggerPortAnnotation;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.EObjectValidator;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.ReflectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ApplicationattributesValidator
extends EObjectValidator {
    public static final ApplicationattributesValidator INSTANCE = new ApplicationattributesValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar40.swcomponent.applicationattributes";
    public static final int CLIENT_SERVER_ANNOTATION__THECORRESPONDING_PORT_INTERFACEMUSTBEA_CLIENT_SERVER_INTERFACE = 1;
    public static final int DELEGATED_PORT_ANNOTATION__AGGREGATING_PORT_PROTOTYPEISAPORTOFA_COMPOSITION_SW_COMPONENT_TYPE_DELEGATED_PORT = 2;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__PORTSINTERFACEISACLIENTSERVERINTERFACEUSINGTHEOPERATIONS_GE_TAND_SET = 3;
    public static final int MODE_PORT_ANNOTATION__THECORRESPONDINGPORTINTERFACEMUSTBEA_MODE_INTERFACE = 4;
    public static final int NV_DATA_PORT_ANNOTATION__THECORRESPONDINGPORTINTERFACEMUSTBEANV_DATA_INTERFACE = 5;
    public static final int PARAMETER_PORT_ANNOTATION__THECORRESPONDINGPORTINTERFACEMUSTBEA_PARAMETER_INTERFACE = 6;
    public static final int TRIGGER_PORT_ANNOTATION__THECORRESPONDINGPORTINTERFACEMUSTBEATRIGGER_INTERFACE = 7;
    public static final int SENDER_RECEIVER_ANNOTATION__PORTSINTERFACEISA_SENDER_RECEIVER_INTERFACE = 8;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 8;
    protected static final int DIAGNOSTIC_CODE_COUNT = 8;

    protected EPackage getEPackage() {
        return ApplicationattributesPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateClientServerAnnotation((ClientServerAnnotation)value, diagnostics, context);
            }
            case 1: {
                return this.validateDelegatedPortAnnotation((DelegatedPortAnnotation)value, diagnostics, context);
            }
            case 2: {
                return this.validateIoHwAbstractionServerAnnotation((IoHwAbstractionServerAnnotation)value, diagnostics, context);
            }
            case 3: {
                return this.validateModePortAnnotation((ModePortAnnotation)value, diagnostics, context);
            }
            case 4: {
                return this.validateNvDataPortAnnotation((NvDataPortAnnotation)value, diagnostics, context);
            }
            case 5: {
                return this.validateParameterPortAnnotation((ParameterPortAnnotation)value, diagnostics, context);
            }
            case 6: {
                return this.validateReceiverAnnotation((ReceiverAnnotation)value, diagnostics, context);
            }
            case 7: {
                return this.validateSenderAnnotation((SenderAnnotation)value, diagnostics, context);
            }
            case 8: {
                return this.validateTriggerPortAnnotation((TriggerPortAnnotation)value, diagnostics, context);
            }
            case 9: {
                return this.validateSenderReceiverAnnotation((SenderReceiverAnnotation)value, diagnostics, context);
            }
            case 10: {
                return this.validateDataLimitKindEnum((DataLimitKindEnum)((Object)value), diagnostics, context);
            }
            case 11: {
                return this.validateSignalFanEnum((SignalFanEnum)((Object)value), diagnostics, context);
            }
            case 12: {
                return this.validateFilterDebouncingEnum((FilterDebouncingEnum)((Object)value), diagnostics, context);
            }
            case 13: {
                return this.validatePulseTestEnum((PulseTestEnum)((Object)value), diagnostics, context);
            }
            case 14: {
                return this.validateProcessingKindEnum((ProcessingKindEnum)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateClientServerAnnotation(ClientServerAnnotation clientServerAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)clientServerAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)clientServerAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)clientServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)clientServerAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{clientServerAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)clientServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)clientServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)clientServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)clientServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateClientServerAnnotation__ThecorrespondingPortInterfacemustbeaClientServerInterface(clientServerAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateClientServerAnnotation__ThecorrespondingPortInterfacemustbeaClientServerInterface(ClientServerAnnotation clientServerAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return clientServerAnnotation._ThecorrespondingPortInterfacemustbeaClientServerInterface(diagnostics, context);
    }

    public boolean validateDelegatedPortAnnotation(DelegatedPortAnnotation delegatedPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)delegatedPortAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)delegatedPortAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)delegatedPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)delegatedPortAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{delegatedPortAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)delegatedPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)delegatedPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)delegatedPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)delegatedPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDelegatedPortAnnotation_aggregatingPortPrototypeisaportofaCompositionSwComponentTypeDelegatedPort(delegatedPortAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateDelegatedPortAnnotation_aggregatingPortPrototypeisaportofaCompositionSwComponentTypeDelegatedPort(DelegatedPortAnnotation delegatedPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegatedPortAnnotation.aggregatingPortPrototypeisaportofaCompositionSwComponentTypeDelegatedPort(diagnostics, context);
    }

    public boolean validateIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation ioHwAbstractionServerAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)ioHwAbstractionServerAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)ioHwAbstractionServerAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)ioHwAbstractionServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)ioHwAbstractionServerAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{ioHwAbstractionServerAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)ioHwAbstractionServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)ioHwAbstractionServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)ioHwAbstractionServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)ioHwAbstractionServerAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateIoHwAbstractionServerAnnotation__portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET(ioHwAbstractionServerAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateIoHwAbstractionServerAnnotation__portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET(IoHwAbstractionServerAnnotation ioHwAbstractionServerAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return ioHwAbstractionServerAnnotation._portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET(diagnostics, context);
    }

    public boolean validateModePortAnnotation(ModePortAnnotation modePortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)modePortAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)modePortAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)modePortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)modePortAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{modePortAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)modePortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)modePortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)modePortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)modePortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateModePortAnnotation__ThecorrespondingportinterfacemustbeaModeInterface(modePortAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateModePortAnnotation__ThecorrespondingportinterfacemustbeaModeInterface(ModePortAnnotation modePortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return modePortAnnotation._ThecorrespondingportinterfacemustbeaModeInterface(diagnostics, context);
    }

    public boolean validateNvDataPortAnnotation(NvDataPortAnnotation nvDataPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)nvDataPortAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)nvDataPortAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)nvDataPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)nvDataPortAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{nvDataPortAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)nvDataPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)nvDataPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)nvDataPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)nvDataPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateNvDataPortAnnotation__ThecorrespondingportinterfacemustbeanvDataInterface(nvDataPortAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateNvDataPortAnnotation__ThecorrespondingportinterfacemustbeanvDataInterface(NvDataPortAnnotation nvDataPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return nvDataPortAnnotation._ThecorrespondingportinterfacemustbeanvDataInterface(diagnostics, context);
    }

    public boolean validateParameterPortAnnotation(ParameterPortAnnotation parameterPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)parameterPortAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)parameterPortAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)parameterPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)parameterPortAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{parameterPortAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)parameterPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)parameterPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)parameterPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)parameterPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateParameterPortAnnotation__ThecorrespondingportinterfacemustbeaParameterInterface(parameterPortAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateParameterPortAnnotation__ThecorrespondingportinterfacemustbeaParameterInterface(ParameterPortAnnotation parameterPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return parameterPortAnnotation._ThecorrespondingportinterfacemustbeaParameterInterface(diagnostics, context);
    }

    public boolean validateReceiverAnnotation(ReceiverAnnotation receiverAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)receiverAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)receiverAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)receiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)receiverAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{receiverAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)receiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)receiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)receiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)receiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateSenderReceiverAnnotation__portsinterfaceisaSenderReceiverInterface(receiverAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateSenderAnnotation(SenderAnnotation senderAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)senderAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)senderAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)senderAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)senderAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{senderAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)senderAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)senderAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)senderAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)senderAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateSenderReceiverAnnotation__portsinterfaceisaSenderReceiverInterface(senderAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateTriggerPortAnnotation(TriggerPortAnnotation triggerPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)triggerPortAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)triggerPortAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)triggerPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)triggerPortAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{triggerPortAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)triggerPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)triggerPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)triggerPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)triggerPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateTriggerPortAnnotation__ThecorrespondingportinterfacemustbeatriggerInterface(triggerPortAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateTriggerPortAnnotation__ThecorrespondingportinterfacemustbeatriggerInterface(TriggerPortAnnotation triggerPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return triggerPortAnnotation._ThecorrespondingportinterfacemustbeatriggerInterface(diagnostics, context);
    }

    public boolean validateSenderReceiverAnnotation(SenderReceiverAnnotation senderReceiverAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)senderReceiverAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)senderReceiverAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)senderReceiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)senderReceiverAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{senderReceiverAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)senderReceiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)senderReceiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)senderReceiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)senderReceiverAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateSenderReceiverAnnotation__portsinterfaceisaSenderReceiverInterface(senderReceiverAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateSenderReceiverAnnotation__portsinterfaceisaSenderReceiverInterface(SenderReceiverAnnotation senderReceiverAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return senderReceiverAnnotation._portsinterfaceisaSenderReceiverInterface(diagnostics, context);
    }

    public boolean validateDataLimitKindEnum(DataLimitKindEnum dataLimitKindEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateSignalFanEnum(SignalFanEnum signalFanEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateFilterDebouncingEnum(FilterDebouncingEnum filterDebouncingEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePulseTestEnum(PulseTestEnum pulseTestEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateProcessingKindEnum(ProcessingKindEnum processingKindEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

