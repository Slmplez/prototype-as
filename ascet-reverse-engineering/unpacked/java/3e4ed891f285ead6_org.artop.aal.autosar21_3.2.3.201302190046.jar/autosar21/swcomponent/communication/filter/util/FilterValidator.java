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
package autosar21.swcomponent.communication.filter.util;

import autosar21.Activator;
import autosar21.swcomponent.communication.filter.Always;
import autosar21.swcomponent.communication.filter.DataFilter;
import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.MaskedNewDiffersMaskedOld;
import autosar21.swcomponent.communication.filter.MaskedNewDiffersX;
import autosar21.swcomponent.communication.filter.MaskedNewEqualsMaskedOld;
import autosar21.swcomponent.communication.filter.MaskedNewEqualsX;
import autosar21.swcomponent.communication.filter.Never;
import autosar21.swcomponent.communication.filter.NewIsDifferent;
import autosar21.swcomponent.communication.filter.NewIsEqual;
import autosar21.swcomponent.communication.filter.NewIsGreater;
import autosar21.swcomponent.communication.filter.NewIsGreaterOrEqual;
import autosar21.swcomponent.communication.filter.NewIsLess;
import autosar21.swcomponent.communication.filter.NewIsLessOrEqual;
import autosar21.swcomponent.communication.filter.NewIsOutside;
import autosar21.swcomponent.communication.filter.NewIsWithin;
import autosar21.swcomponent.communication.filter.OneEveryN;
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
public class FilterValidator
extends EObjectValidator {
    public static final FilterValidator INSTANCE = new FilterValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar21.swcomponent.communication.filter";
    public static final int DATA_FILTER__MASK0 = 1;
    public static final int DATA_FILTER__PERIODGREATER0 = 2;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 2;
    protected static final int DIAGNOSTIC_CODE_COUNT = 2;

    protected EPackage getEPackage() {
        return FilterPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateAlways((Always)value, diagnostics, context);
            }
            case 1: {
                return this.validateMaskedNewDiffersMaskedOld((MaskedNewDiffersMaskedOld)value, diagnostics, context);
            }
            case 2: {
                return this.validateMaskedNewDiffersX((MaskedNewDiffersX)value, diagnostics, context);
            }
            case 3: {
                return this.validateMaskedNewEqualsMaskedOld((MaskedNewEqualsMaskedOld)value, diagnostics, context);
            }
            case 4: {
                return this.validateMaskedNewEqualsX((MaskedNewEqualsX)value, diagnostics, context);
            }
            case 5: {
                return this.validateNever((Never)value, diagnostics, context);
            }
            case 6: {
                return this.validateNewIsDifferent((NewIsDifferent)value, diagnostics, context);
            }
            case 7: {
                return this.validateNewIsEqual((NewIsEqual)value, diagnostics, context);
            }
            case 8: {
                return this.validateNewIsGreater((NewIsGreater)value, diagnostics, context);
            }
            case 9: {
                return this.validateNewIsGreaterOrEqual((NewIsGreaterOrEqual)value, diagnostics, context);
            }
            case 10: {
                return this.validateNewIsLess((NewIsLess)value, diagnostics, context);
            }
            case 11: {
                return this.validateNewIsLessOrEqual((NewIsLessOrEqual)value, diagnostics, context);
            }
            case 12: {
                return this.validateNewIsOutside((NewIsOutside)value, diagnostics, context);
            }
            case 13: {
                return this.validateNewIsWithin((NewIsWithin)value, diagnostics, context);
            }
            case 14: {
                return this.validateOneEveryN((OneEveryN)value, diagnostics, context);
            }
            case 15: {
                return this.validateDataFilter((DataFilter)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateAlways(Always always, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)always, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)always, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)always, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)always, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{always, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)always, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)always, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)always, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)always, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(always, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(always, diagnostics, context);
        }
        return result;
    }

    public boolean validateMaskedNewDiffersMaskedOld(MaskedNewDiffersMaskedOld maskedNewDiffersMaskedOld, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)maskedNewDiffersMaskedOld, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)maskedNewDiffersMaskedOld, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)maskedNewDiffersMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)maskedNewDiffersMaskedOld, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{maskedNewDiffersMaskedOld, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)maskedNewDiffersMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)maskedNewDiffersMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)maskedNewDiffersMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)maskedNewDiffersMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(maskedNewDiffersMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(maskedNewDiffersMaskedOld, diagnostics, context);
        }
        return result;
    }

    public boolean validateMaskedNewDiffersX(MaskedNewDiffersX maskedNewDiffersX, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)maskedNewDiffersX, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)maskedNewDiffersX, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)maskedNewDiffersX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)maskedNewDiffersX, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{maskedNewDiffersX, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)maskedNewDiffersX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)maskedNewDiffersX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)maskedNewDiffersX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)maskedNewDiffersX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(maskedNewDiffersX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(maskedNewDiffersX, diagnostics, context);
        }
        return result;
    }

    public boolean validateMaskedNewEqualsMaskedOld(MaskedNewEqualsMaskedOld maskedNewEqualsMaskedOld, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)maskedNewEqualsMaskedOld, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)maskedNewEqualsMaskedOld, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)maskedNewEqualsMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)maskedNewEqualsMaskedOld, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{maskedNewEqualsMaskedOld, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)maskedNewEqualsMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)maskedNewEqualsMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)maskedNewEqualsMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)maskedNewEqualsMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(maskedNewEqualsMaskedOld, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(maskedNewEqualsMaskedOld, diagnostics, context);
        }
        return result;
    }

    public boolean validateMaskedNewEqualsX(MaskedNewEqualsX maskedNewEqualsX, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)maskedNewEqualsX, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)maskedNewEqualsX, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)maskedNewEqualsX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)maskedNewEqualsX, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{maskedNewEqualsX, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)maskedNewEqualsX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)maskedNewEqualsX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)maskedNewEqualsX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)maskedNewEqualsX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(maskedNewEqualsX, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(maskedNewEqualsX, diagnostics, context);
        }
        return result;
    }

    public boolean validateNever(Never never, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)never, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)never, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)never, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)never, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{never, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)never, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)never, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)never, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)never, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(never, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(never, diagnostics, context);
        }
        return result;
    }

    public boolean validateNewIsDifferent(NewIsDifferent newIsDifferent, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)newIsDifferent, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)newIsDifferent, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)newIsDifferent, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)newIsDifferent, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{newIsDifferent, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)newIsDifferent, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)newIsDifferent, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)newIsDifferent, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)newIsDifferent, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(newIsDifferent, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(newIsDifferent, diagnostics, context);
        }
        return result;
    }

    public boolean validateNewIsEqual(NewIsEqual newIsEqual, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)newIsEqual, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)newIsEqual, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)newIsEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)newIsEqual, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{newIsEqual, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)newIsEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)newIsEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)newIsEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)newIsEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(newIsEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(newIsEqual, diagnostics, context);
        }
        return result;
    }

    public boolean validateNewIsGreater(NewIsGreater newIsGreater, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)newIsGreater, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)newIsGreater, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)newIsGreater, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)newIsGreater, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{newIsGreater, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)newIsGreater, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)newIsGreater, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)newIsGreater, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)newIsGreater, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(newIsGreater, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(newIsGreater, diagnostics, context);
        }
        return result;
    }

    public boolean validateNewIsGreaterOrEqual(NewIsGreaterOrEqual newIsGreaterOrEqual, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)newIsGreaterOrEqual, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)newIsGreaterOrEqual, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)newIsGreaterOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)newIsGreaterOrEqual, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{newIsGreaterOrEqual, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)newIsGreaterOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)newIsGreaterOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)newIsGreaterOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)newIsGreaterOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(newIsGreaterOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(newIsGreaterOrEqual, diagnostics, context);
        }
        return result;
    }

    public boolean validateNewIsLess(NewIsLess newIsLess, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)newIsLess, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)newIsLess, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)newIsLess, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)newIsLess, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{newIsLess, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)newIsLess, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)newIsLess, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)newIsLess, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)newIsLess, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(newIsLess, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(newIsLess, diagnostics, context);
        }
        return result;
    }

    public boolean validateNewIsLessOrEqual(NewIsLessOrEqual newIsLessOrEqual, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)newIsLessOrEqual, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)newIsLessOrEqual, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)newIsLessOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)newIsLessOrEqual, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{newIsLessOrEqual, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)newIsLessOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)newIsLessOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)newIsLessOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)newIsLessOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(newIsLessOrEqual, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(newIsLessOrEqual, diagnostics, context);
        }
        return result;
    }

    public boolean validateNewIsOutside(NewIsOutside newIsOutside, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)newIsOutside, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)newIsOutside, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)newIsOutside, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)newIsOutside, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{newIsOutside, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)newIsOutside, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)newIsOutside, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)newIsOutside, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)newIsOutside, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(newIsOutside, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(newIsOutside, diagnostics, context);
        }
        return result;
    }

    public boolean validateNewIsWithin(NewIsWithin newIsWithin, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)newIsWithin, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)newIsWithin, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)newIsWithin, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)newIsWithin, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{newIsWithin, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)newIsWithin, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)newIsWithin, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)newIsWithin, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)newIsWithin, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(newIsWithin, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(newIsWithin, diagnostics, context);
        }
        return result;
    }

    public boolean validateOneEveryN(OneEveryN oneEveryN, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)oneEveryN, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)oneEveryN, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)oneEveryN, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)oneEveryN, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{oneEveryN, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)oneEveryN, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)oneEveryN, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)oneEveryN, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)oneEveryN, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(oneEveryN, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(oneEveryN, diagnostics, context);
        }
        return result;
    }

    public boolean validateDataFilter(DataFilter dataFilter, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)dataFilter, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)dataFilter, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)dataFilter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)dataFilter, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{dataFilter, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)dataFilter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)dataFilter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)dataFilter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)dataFilter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_mask0(dataFilter, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDataFilter_Periodgreater0(dataFilter, diagnostics, context);
        }
        return result;
    }

    public boolean validateDataFilter_mask0(DataFilter dataFilter, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return dataFilter.mask0(diagnostics, context);
    }

    public boolean validateDataFilter_Periodgreater0(DataFilter dataFilter, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return dataFilter.Periodgreater0(diagnostics, context);
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

