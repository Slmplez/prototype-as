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
package autosar40.swcomponent.datatype.localconstraints.util;

import autosar40.Activator;
import autosar40.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import autosar40.swcomponent.datatype.localconstraints.Limit;
import autosar40.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
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
public class LocalconstraintsValidator
extends EObjectValidator {
    public static final LocalconstraintsValidator INSTANCE = new LocalconstraintsValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar40.swcomponent.datatype.localconstraints";
    public static final int LIMIT__BINDING_TIME_PRE_COMPILETIME = 1;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 1;
    protected static final int DIAGNOSTIC_CODE_COUNT = 1;

    protected EPackage getEPackage() {
        return LocalconstraintsPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateLimit((Limit)value, diagnostics, context);
            }
            case 1: {
                return this.validateIntervalTypeEnum((IntervalTypeEnum)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateLimit(Limit limit, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)limit, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)limit, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)limit, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)limit, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{limit, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)limit, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)limit, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)limit, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)limit, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateLimit_bindingTimePreCompiletime(limit, diagnostics, context);
        }
        return result;
    }

    public boolean validateLimit_bindingTimePreCompiletime(Limit limit, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return limit.bindingTimePreCompiletime(diagnostics, context);
    }

    public boolean validateIntervalTypeEnum(IntervalTypeEnum intervalTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

