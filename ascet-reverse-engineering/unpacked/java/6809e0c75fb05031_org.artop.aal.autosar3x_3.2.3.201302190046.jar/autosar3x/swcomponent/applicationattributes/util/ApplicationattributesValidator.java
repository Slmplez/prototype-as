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
package autosar3x.swcomponent.applicationattributes.util;

import autosar3x.Activator;
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
import autosar3x.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar3x.swcomponent.applicationattributes.SignalFanEnum;
import autosar3x.swcomponent.applicationattributes.WakeUp;
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
    public static final String DIAGNOSTIC_SOURCE = "autosar3x.swcomponent.applicationattributes";
    public static final int CALIBRATION_PORT_ANNOTATION__THECORRESPONDINGPORTINTERFACEMUSTBEA_CALPRM_INTERFACE = 1;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__PORTSINTERFACEISACLIENTSERVERINTERFACEUSINGTHEOPERATIONS_GE_TAND_SET = 2;
    public static final int SENDER_RECEIVER_ANNOTATION__PORTSINTERFACEISA_SENDER_RECEIVER_INTERFACE = 3;
    public static final int DELEGATED_PORT_ANNOTATION__AGGREGATING_PORT_PROTOTYPEISAPORTOFA_COMPOSITION_TYPE_DELEGATED_PORT = 4;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 4;
    protected static final int DIAGNOSTIC_CODE_COUNT = 4;

    protected EPackage getEPackage() {
        return ApplicationattributesPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateCalibrationPortAnnotation((CalibrationPortAnnotation)value, diagnostics, context);
            }
            case 1: {
                return this.validateIoHwAbstractionServerAnnotation((IoHwAbstractionServerAnnotation)value, diagnostics, context);
            }
            case 2: {
                return this.validateReportFeature((ReportFeature)value, diagnostics, context);
            }
            case 3: {
                return this.validateWakeUp((WakeUp)value, diagnostics, context);
            }
            case 4: {
                return this.validateReceiverAnnotation((ReceiverAnnotation)value, diagnostics, context);
            }
            case 5: {
                return this.validateSenderReceiverAnnotation((SenderReceiverAnnotation)value, diagnostics, context);
            }
            case 6: {
                return this.validateSenderAnnotation((SenderAnnotation)value, diagnostics, context);
            }
            case 7: {
                return this.validateDelegatedPortAnnotation((DelegatedPortAnnotation)value, diagnostics, context);
            }
            case 8: {
                return this.validateFilterDebouncingEnum((FilterDebouncingEnum)((Object)value), diagnostics, context);
            }
            case 9: {
                return this.validatePulseTestEnum((PulseTestEnum)((Object)value), diagnostics, context);
            }
            case 10: {
                return this.validateLimitKind((LimitKind)((Object)value), diagnostics, context);
            }
            case 11: {
                return this.validateProcessingKind((ProcessingKind)((Object)value), diagnostics, context);
            }
            case 12: {
                return this.validateSignalFanEnum((SignalFanEnum)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateCalibrationPortAnnotation(CalibrationPortAnnotation calibrationPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)calibrationPortAnnotation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)calibrationPortAnnotation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)calibrationPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)calibrationPortAnnotation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{calibrationPortAnnotation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)calibrationPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)calibrationPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)calibrationPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)calibrationPortAnnotation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateCalibrationPortAnnotation__ThecorrespondingportinterfacemustbeaCalprmInterface(calibrationPortAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateCalibrationPortAnnotation__ThecorrespondingportinterfacemustbeaCalprmInterface(CalibrationPortAnnotation calibrationPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return calibrationPortAnnotation._ThecorrespondingportinterfacemustbeaCalprmInterface(diagnostics, context);
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

    public boolean validateReportFeature(ReportFeature reportFeature, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)reportFeature, diagnostics, context);
    }

    public boolean validateWakeUp(WakeUp wakeUp, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)wakeUp, diagnostics, context);
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
            result &= this.validateDelegatedPortAnnotation_aggregatingPortPrototypeisaportofaCompositionTypeDelegatedPort(delegatedPortAnnotation, diagnostics, context);
        }
        return result;
    }

    public boolean validateDelegatedPortAnnotation_aggregatingPortPrototypeisaportofaCompositionTypeDelegatedPort(DelegatedPortAnnotation delegatedPortAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegatedPortAnnotation.aggregatingPortPrototypeisaportofaCompositionTypeDelegatedPort(diagnostics, context);
    }

    public boolean validateFilterDebouncingEnum(FilterDebouncingEnum filterDebouncingEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePulseTestEnum(PulseTestEnum pulseTestEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateLimitKind(LimitKind limitKind, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateProcessingKind(ProcessingKind processingKind, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateSignalFanEnum(SignalFanEnum signalFanEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

