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
package autosar40.commonstructure.filter.util;

import autosar40.Activator;
import autosar40.commonstructure.filter.DataFilter;
import autosar40.commonstructure.filter.DataFilterTypeEnum;
import autosar40.commonstructure.filter.FilterPackage;
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
    public static final String DIAGNOSTIC_SOURCE = "autosar40.commonstructure.filter";
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
                return this.validateDataFilter((DataFilter)value, diagnostics, context);
            }
            case 1: {
                return this.validateDataFilterTypeEnum((DataFilterTypeEnum)((Object)value), diagnostics, context);
            }
        }
        return true;
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

    public boolean validateDataFilterTypeEnum(DataFilterTypeEnum dataFilterTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

