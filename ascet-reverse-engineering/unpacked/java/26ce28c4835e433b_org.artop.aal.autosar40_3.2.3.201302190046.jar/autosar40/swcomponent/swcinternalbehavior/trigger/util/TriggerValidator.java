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
package autosar40.swcomponent.swcinternalbehavior.trigger.util;

import autosar40.Activator;
import autosar40.swcomponent.swcinternalbehavior.trigger.ExternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.InternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerPackage;
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
public class TriggerValidator
extends EObjectValidator {
    public static final TriggerValidator INSTANCE = new TriggerValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar40.swcomponent.swcinternalbehavior.trigger";
    public static final int EXTERNAL_TRIGGERING_POINT__PORTCOMPONENTRUNNABLEIMPLEMENTATIONIMPLEMENTED_COMPONENT = 1;
    public static final int EXTERNAL_TRIGGERING_POINT__PORTREQUIRED_INTERFACEOCL_IS_OF_TYPE_CLIENT_SERVER_INTERFACE = 2;
    public static final int INTERNAL_TRIGGERING_POINT__PORTCOMPONENTRUNNABLEIMPLEMENTATIONIMPLEMENTED_COMPONENT = 3;
    public static final int INTERNAL_TRIGGERING_POINT__PORTREQUIRED_INTERFACEOCL_IS_OF_TYPE_CLIENT_SERVER_INTERFACE = 4;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 4;
    protected static final int DIAGNOSTIC_CODE_COUNT = 4;

    protected EPackage getEPackage() {
        return TriggerPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateExternalTriggeringPoint((ExternalTriggeringPoint)value, diagnostics, context);
            }
            case 1: {
                return this.validateInternalTriggeringPoint((InternalTriggeringPoint)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateExternalTriggeringPoint(ExternalTriggeringPoint externalTriggeringPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)externalTriggeringPoint, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)externalTriggeringPoint, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)externalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)externalTriggeringPoint, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{externalTriggeringPoint, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)externalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)externalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)externalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)externalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateExternalTriggeringPoint_portcomponentrunnableimplementationimplementedComponent(externalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateExternalTriggeringPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(externalTriggeringPoint, diagnostics, context);
        }
        return result;
    }

    public boolean validateExternalTriggeringPoint_portcomponentrunnableimplementationimplementedComponent(ExternalTriggeringPoint externalTriggeringPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return externalTriggeringPoint.portcomponentrunnableimplementationimplementedComponent(diagnostics, context);
    }

    public boolean validateExternalTriggeringPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(ExternalTriggeringPoint externalTriggeringPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return externalTriggeringPoint.portrequiredInterfaceoclIsOfTypeClientServerInterface(diagnostics, context);
    }

    public boolean validateInternalTriggeringPoint(InternalTriggeringPoint internalTriggeringPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)internalTriggeringPoint, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)internalTriggeringPoint, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)internalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)internalTriggeringPoint, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{internalTriggeringPoint, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)internalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)internalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)internalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)internalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateInternalTriggeringPoint_portcomponentrunnableimplementationimplementedComponent(internalTriggeringPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateInternalTriggeringPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(internalTriggeringPoint, diagnostics, context);
        }
        return result;
    }

    public boolean validateInternalTriggeringPoint_portcomponentrunnableimplementationimplementedComponent(InternalTriggeringPoint internalTriggeringPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return internalTriggeringPoint.portcomponentrunnableimplementationimplementedComponent(diagnostics, context);
    }

    public boolean validateInternalTriggeringPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(InternalTriggeringPoint internalTriggeringPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return internalTriggeringPoint.portrequiredInterfaceoclIsOfTypeClientServerInterface(diagnostics, context);
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

