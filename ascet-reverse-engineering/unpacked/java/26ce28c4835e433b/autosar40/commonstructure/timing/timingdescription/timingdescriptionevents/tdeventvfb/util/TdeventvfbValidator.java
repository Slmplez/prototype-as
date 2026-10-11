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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.util;

import autosar40.Activator;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventModeDeclarationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperation;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototype;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototypeTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVfb;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
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
public class TdeventvfbValidator
extends EObjectValidator {
    public static final TdeventvfbValidator INSTANCE = new TdeventvfbValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb";
    public static final int TD_EVENT_OPERATION__IFIS_EXTERNALISSETTO_TRU_ETD_EVENT_OPERATION_TYPEMUSTBEEITHEROPERATION_CALLEDOROPERATION_CALL_RESPONSE_RECEIVED = 1;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 1;
    protected static final int DIAGNOSTIC_CODE_COUNT = 1;

    protected EPackage getEPackage() {
        return TdeventvfbPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateTDEventModeDeclaration((TDEventModeDeclaration)value, diagnostics, context);
            }
            case 1: {
                return this.validateTDEventVfb((TDEventVfb)value, diagnostics, context);
            }
            case 2: {
                return this.validateTDEventOperation((TDEventOperation)value, diagnostics, context);
            }
            case 3: {
                return this.validateTDEventVariableDataPrototype((TDEventVariableDataPrototype)value, diagnostics, context);
            }
            case 4: {
                return this.validateTDEventModeDeclarationTypeEnum((TDEventModeDeclarationTypeEnum)((Object)value), diagnostics, context);
            }
            case 5: {
                return this.validateTDEventOperationTypeEnum((TDEventOperationTypeEnum)((Object)value), diagnostics, context);
            }
            case 6: {
                return this.validateTDEventVariableDataPrototypeTypeEnum((TDEventVariableDataPrototypeTypeEnum)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateTDEventModeDeclaration(TDEventModeDeclaration tdEventModeDeclaration, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)tdEventModeDeclaration, diagnostics, context);
    }

    public boolean validateTDEventVfb(TDEventVfb tdEventVfb, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)tdEventVfb, diagnostics, context);
    }

    public boolean validateTDEventOperation(TDEventOperation tdEventOperation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)tdEventOperation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)tdEventOperation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)tdEventOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)tdEventOperation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{tdEventOperation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)tdEventOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)tdEventOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)tdEventOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)tdEventOperation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateTDEventOperation_IfisExternalissettoTRUEtdEventOperationTypemustbeeitheroperationCalledoroperationCallResponseReceived(tdEventOperation, diagnostics, context);
        }
        return result;
    }

    public boolean validateTDEventOperation_IfisExternalissettoTRUEtdEventOperationTypemustbeeitheroperationCalledoroperationCallResponseReceived(TDEventOperation tdEventOperation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return tdEventOperation.IfisExternalissettoTRUEtdEventOperationTypemustbeeitheroperationCalledoroperationCallResponseReceived(diagnostics, context);
    }

    public boolean validateTDEventVariableDataPrototype(TDEventVariableDataPrototype tdEventVariableDataPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)tdEventVariableDataPrototype, diagnostics, context);
    }

    public boolean validateTDEventModeDeclarationTypeEnum(TDEventModeDeclarationTypeEnum tdEventModeDeclarationTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTDEventOperationTypeEnum(TDEventOperationTypeEnum tdEventOperationTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTDEventVariableDataPrototypeTypeEnum(TDEventVariableDataPrototypeTypeEnum tdEventVariableDataPrototypeTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

