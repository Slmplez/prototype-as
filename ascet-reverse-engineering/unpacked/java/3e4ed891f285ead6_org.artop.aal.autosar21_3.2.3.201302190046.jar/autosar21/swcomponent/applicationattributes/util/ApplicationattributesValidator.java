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
package autosar21.swcomponent.applicationattributes.util;

import autosar21.Activator;
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
import autosar21.swcomponent.applicationattributes.PortAnnotation;
import autosar21.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar21.swcomponent.applicationattributes.ReportFeature;
import autosar21.swcomponent.applicationattributes.SenderAnnotation;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationLimitTypeEnum;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationProcessingTypeEnum;
import autosar21.swcomponent.applicationattributes.ServiceNeeds;
import autosar21.swcomponent.applicationattributes.SupervisedEntityNeeds;
import autosar21.swcomponent.applicationattributes.WakeUp;
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
    public static final String DIAGNOSTIC_SOURCE = "autosar21.swcomponent.applicationattributes";
    public static final int CALIBRATION_PORT_ANNOTATION__THECORRESPONDINGPORTINTERFACEMUSTBEA_CALPRM_INTERFACE = 1;
    public static final int SERVICE_NEEDS__THECORRESPONDINGPORTINTERFACEMUSTHAVESET_IS_SERVICETRUE = 2;
    public static final int IO_HW_ABSTRACTION_SERVER_ANNOTATION__PORTSINTERFACEISACLIENTSERVERINTERFACEUSINGTHEOPERATIONS_GE_TAND_SET = 3;
    public static final int SENDER_RECEIVER_ANNOTATION__PORTSINTERFACEISA_SENDER_RECEIVER_INTERFACE = 4;
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
                return this.validateComMUserNeeds((ComMUserNeeds)value, diagnostics, context);
            }
            case 2: {
                return this.validateServiceNeeds((ServiceNeeds)value, diagnostics, context);
            }
            case 3: {
                return this.validateExtAnnotation((ExtAnnotation)value, diagnostics, context);
            }
            case 4: {
                return this.validateFailureMonitoring((FailureMonitoring)value, diagnostics, context);
            }
            case 5: {
                return this.validateIoHwAbstractionServerAnnotation((IoHwAbstractionServerAnnotation)value, diagnostics, context);
            }
            case 6: {
                return this.validateReportFeature((ReportFeature)value, diagnostics, context);
            }
            case 7: {
                return this.validateWakeUp((WakeUp)value, diagnostics, context);
            }
            case 8: {
                return this.validateNVRAMBlockNeeds((NVRAMBlockNeeds)value, diagnostics, context);
            }
            case 9: {
                return this.validateReceiverAnnotation((ReceiverAnnotation)value, diagnostics, context);
            }
            case 10: {
                return this.validateSenderReceiverAnnotation((SenderReceiverAnnotation)value, diagnostics, context);
            }
            case 11: {
                return this.validateSenderAnnotation((SenderAnnotation)value, diagnostics, context);
            }
            case 12: {
                return this.validateSupervisedEntityNeeds((SupervisedEntityNeeds)value, diagnostics, context);
            }
            case 13: {
                return this.validatePortAnnotation((PortAnnotation)value, diagnostics, context);
            }
            case 14: {
                return this.validateMaxCommMode((MaxCommMode)((Object)value), diagnostics, context);
            }
            case 15: {
                return this.validateIoHwAbstractionServerAnnotationPulseTestEnum((IoHwAbstractionServerAnnotationPulseTestEnum)((Object)value), diagnostics, context);
            }
            case 16: {
                return this.validateIoHwAbstractionServerAnnotationFilteringDebouncingEnum((IoHwAbstractionServerAnnotationFilteringDebouncingEnum)((Object)value), diagnostics, context);
            }
            case 17: {
                return this.validateNVRAMBlockNeedsReliabilityEnum((NVRAMBlockNeedsReliabilityEnum)((Object)value), diagnostics, context);
            }
            case 18: {
                return this.validateNVRAMBlockNeedsWritingPriorityEnum((NVRAMBlockNeedsWritingPriorityEnum)((Object)value), diagnostics, context);
            }
            case 19: {
                return this.validateSenderReceiverAnnotationLimitTypeEnum((SenderReceiverAnnotationLimitTypeEnum)((Object)value), diagnostics, context);
            }
            case 20: {
                return this.validateSenderReceiverAnnotationProcessingTypeEnum((SenderReceiverAnnotationProcessingTypeEnum)((Object)value), diagnostics, context);
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

    public boolean validateComMUserNeeds(ComMUserNeeds comMUserNeeds, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)comMUserNeeds, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)comMUserNeeds, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)comMUserNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)comMUserNeeds, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{comMUserNeeds, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)comMUserNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)comMUserNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)comMUserNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)comMUserNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServiceNeeds__ThecorrespondingportinterfacemusthavesetIsServicetrue(comMUserNeeds, diagnostics, context);
        }
        return result;
    }

    public boolean validateServiceNeeds(ServiceNeeds serviceNeeds, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)serviceNeeds, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)serviceNeeds, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)serviceNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)serviceNeeds, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{serviceNeeds, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)serviceNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)serviceNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)serviceNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)serviceNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServiceNeeds__ThecorrespondingportinterfacemusthavesetIsServicetrue(serviceNeeds, diagnostics, context);
        }
        return result;
    }

    public boolean validateServiceNeeds__ThecorrespondingportinterfacemusthavesetIsServicetrue(ServiceNeeds serviceNeeds, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return serviceNeeds._ThecorrespondingportinterfacemusthavesetIsServicetrue(diagnostics, context);
    }

    public boolean validateExtAnnotation(ExtAnnotation extAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)extAnnotation, diagnostics, context);
    }

    public boolean validateFailureMonitoring(FailureMonitoring failureMonitoring, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)failureMonitoring, diagnostics, context);
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

    public boolean validateNVRAMBlockNeeds(NVRAMBlockNeeds nvramBlockNeeds, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)nvramBlockNeeds, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)nvramBlockNeeds, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)nvramBlockNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)nvramBlockNeeds, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{nvramBlockNeeds, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)nvramBlockNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)nvramBlockNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)nvramBlockNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)nvramBlockNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServiceNeeds__ThecorrespondingportinterfacemusthavesetIsServicetrue(nvramBlockNeeds, diagnostics, context);
        }
        return result;
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

    public boolean validateSupervisedEntityNeeds(SupervisedEntityNeeds supervisedEntityNeeds, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)supervisedEntityNeeds, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)supervisedEntityNeeds, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)supervisedEntityNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)supervisedEntityNeeds, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{supervisedEntityNeeds, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)supervisedEntityNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)supervisedEntityNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)supervisedEntityNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)supervisedEntityNeeds, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServiceNeeds__ThecorrespondingportinterfacemusthavesetIsServicetrue(supervisedEntityNeeds, diagnostics, context);
        }
        return result;
    }

    public boolean validatePortAnnotation(PortAnnotation portAnnotation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)portAnnotation, diagnostics, context);
    }

    public boolean validateMaxCommMode(MaxCommMode maxCommMode, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateIoHwAbstractionServerAnnotationPulseTestEnum(IoHwAbstractionServerAnnotationPulseTestEnum ioHwAbstractionServerAnnotationPulseTestEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateIoHwAbstractionServerAnnotationFilteringDebouncingEnum(IoHwAbstractionServerAnnotationFilteringDebouncingEnum ioHwAbstractionServerAnnotationFilteringDebouncingEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateNVRAMBlockNeedsReliabilityEnum(NVRAMBlockNeedsReliabilityEnum nvramBlockNeedsReliabilityEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateNVRAMBlockNeedsWritingPriorityEnum(NVRAMBlockNeedsWritingPriorityEnum nvramBlockNeedsWritingPriorityEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateSenderReceiverAnnotationLimitTypeEnum(SenderReceiverAnnotationLimitTypeEnum senderReceiverAnnotationLimitTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateSenderReceiverAnnotationProcessingTypeEnum(SenderReceiverAnnotationProcessingTypeEnum senderReceiverAnnotationProcessingTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

