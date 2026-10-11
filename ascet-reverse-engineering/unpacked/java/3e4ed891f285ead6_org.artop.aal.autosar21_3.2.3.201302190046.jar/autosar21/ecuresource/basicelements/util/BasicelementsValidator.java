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
package autosar21.ecuresource.basicelements.util;

import autosar21.Activator;
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
public class BasicelementsValidator
extends EObjectValidator {
    public static final BasicelementsValidator INSTANCE = new BasicelementsValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar21.ecuresource.basicelements";
    public static final int ELECTRICAL_RANGE__MIN_CURRENTTYPICAL_CURRENTANDTYPICAL_CURRENTMAX_CURRENT = 1;
    public static final int ELECTRICAL_RANGE__MIN_VOLTAGETYPICAL_VOLTAGEANDTYPICAL_VOLTAGEMAX_VOLTAGE = 2;
    public static final int FREQUENCY_RANGE__MIN_FREQUENCYTYPICAL_FREQUENCYANDTYPICAL_FREQUENCYMAX_FREQUENCY = 3;
    public static final int TIME_RANGE__MINTYPICALANDTYPICALMAX = 4;
    public static final int TEMPERATURE__OPERATION_MINOPERATION_TYPICALANDOPERATION_TYPICALOPERATION_MAX = 5;
    public static final int TEMPERATURE__STORAGE_MINSTORAGE_MAX = 6;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 6;
    protected static final int DIAGNOSTIC_CODE_COUNT = 6;

    protected EPackage getEPackage() {
        return BasicelementsPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateBootTime((BootTime)value, diagnostics, context);
            }
            case 1: {
                return this.validateElectricalRange((ElectricalRange)value, diagnostics, context);
            }
            case 2: {
                return this.validateErrorDetectionCorrection((ErrorDetectionCorrection)value, diagnostics, context);
            }
            case 3: {
                return this.validateFrequencyRange((FrequencyRange)value, diagnostics, context);
            }
            case 4: {
                return this.validateMemoryAccess((MemoryAccess)value, diagnostics, context);
            }
            case 5: {
                return this.validateTimeRange((TimeRange)value, diagnostics, context);
            }
            case 6: {
                return this.validateSupportsSafety((SupportsSafety)value, diagnostics, context);
            }
            case 7: {
                return this.validateSupportsSecurity((SupportsSecurity)value, diagnostics, context);
            }
            case 8: {
                return this.validateTemperature((Temperature)value, diagnostics, context);
            }
            case 9: {
                return this.validateMemoryAccessAccessTypeEnum((MemoryAccessAccessTypeEnum)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateBootTime(BootTime bootTime, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)bootTime, diagnostics, context);
    }

    public boolean validateElectricalRange(ElectricalRange electricalRange, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)electricalRange, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)electricalRange, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)electricalRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)electricalRange, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{electricalRange, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)electricalRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)electricalRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)electricalRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)electricalRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateElectricalRange__minCurrenttypicalCurrentandtypicalCurrentmaxCurrent(electricalRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateElectricalRange__minVoltagetypicalVoltageandtypicalVoltagemaxVoltage(electricalRange, diagnostics, context);
        }
        return result;
    }

    public boolean validateElectricalRange__minCurrenttypicalCurrentandtypicalCurrentmaxCurrent(ElectricalRange electricalRange, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return electricalRange._minCurrenttypicalCurrentandtypicalCurrentmaxCurrent(diagnostics, context);
    }

    public boolean validateElectricalRange__minVoltagetypicalVoltageandtypicalVoltagemaxVoltage(ElectricalRange electricalRange, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return electricalRange._minVoltagetypicalVoltageandtypicalVoltagemaxVoltage(diagnostics, context);
    }

    public boolean validateErrorDetectionCorrection(ErrorDetectionCorrection errorDetectionCorrection, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)errorDetectionCorrection, diagnostics, context);
    }

    public boolean validateFrequencyRange(FrequencyRange frequencyRange, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)frequencyRange, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)frequencyRange, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)frequencyRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)frequencyRange, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{frequencyRange, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)frequencyRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)frequencyRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)frequencyRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)frequencyRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateFrequencyRange__minFrequencytypicalFrequencyandtypicalFrequencymaxFrequency(frequencyRange, diagnostics, context);
        }
        return result;
    }

    public boolean validateFrequencyRange__minFrequencytypicalFrequencyandtypicalFrequencymaxFrequency(FrequencyRange frequencyRange, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return frequencyRange._minFrequencytypicalFrequencyandtypicalFrequencymaxFrequency(diagnostics, context);
    }

    public boolean validateMemoryAccess(MemoryAccess memoryAccess, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)memoryAccess, diagnostics, context);
    }

    public boolean validateTimeRange(TimeRange timeRange, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)timeRange, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)timeRange, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)timeRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)timeRange, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{timeRange, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)timeRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)timeRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)timeRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)timeRange, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateTimeRange__mintypicalandtypicalmax(timeRange, diagnostics, context);
        }
        return result;
    }

    public boolean validateTimeRange__mintypicalandtypicalmax(TimeRange timeRange, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return timeRange._mintypicalandtypicalmax(diagnostics, context);
    }

    public boolean validateSupportsSafety(SupportsSafety supportsSafety, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)supportsSafety, diagnostics, context);
    }

    public boolean validateSupportsSecurity(SupportsSecurity supportsSecurity, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)supportsSecurity, diagnostics, context);
    }

    public boolean validateTemperature(Temperature temperature, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)temperature, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)temperature, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)temperature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)temperature, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{temperature, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)temperature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)temperature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)temperature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)temperature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateTemperature__operationMinoperationTypicalandoperationTypicaloperationMax(temperature, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateTemperature_storageMinstorageMax(temperature, diagnostics, context);
        }
        return result;
    }

    public boolean validateTemperature__operationMinoperationTypicalandoperationTypicaloperationMax(Temperature temperature, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return temperature._operationMinoperationTypicalandoperationTypicaloperationMax(diagnostics, context);
    }

    public boolean validateTemperature_storageMinstorageMax(Temperature temperature, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return temperature.storageMinstorageMax(diagnostics, context);
    }

    public boolean validateMemoryAccessAccessTypeEnum(MemoryAccessAccessTypeEnum memoryAccessAccessTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

