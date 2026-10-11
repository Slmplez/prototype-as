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
package autosar40.swcomponent.swcinternalbehavior.varianthandling.util;

import autosar40.Activator;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VariationPointProxy;
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
public class VarianthandlingValidator
extends EObjectValidator {
    public static final VarianthandlingValidator INSTANCE = new VarianthandlingValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar40.swcomponent.swcinternalbehavior.varianthandling";
    public static final int VARIATION_POINT_PROXY__PORTCOMPONENTRUNNABLEIMPLEMENTATIONIMPLEMENTED_COMPONENT = 1;
    public static final int VARIATION_POINT_PROXY__PORTREQUIRED_INTERFACEOCL_IS_OF_TYPE_CLIENT_SERVER_INTERFACE = 2;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 2;
    protected static final int DIAGNOSTIC_CODE_COUNT = 2;

    protected EPackage getEPackage() {
        return VarianthandlingPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateVariationPointProxy((VariationPointProxy)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateVariationPointProxy(VariationPointProxy variationPointProxy, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)variationPointProxy, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)variationPointProxy, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)variationPointProxy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)variationPointProxy, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{variationPointProxy, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)variationPointProxy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)variationPointProxy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)variationPointProxy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)variationPointProxy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateVariationPointProxy_portcomponentrunnableimplementationimplementedComponent(variationPointProxy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateVariationPointProxy_portrequiredInterfaceoclIsOfTypeClientServerInterface(variationPointProxy, diagnostics, context);
        }
        return result;
    }

    public boolean validateVariationPointProxy_portcomponentrunnableimplementationimplementedComponent(VariationPointProxy variationPointProxy, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return variationPointProxy.portcomponentrunnableimplementationimplementedComponent(diagnostics, context);
    }

    public boolean validateVariationPointProxy_portrequiredInterfaceoclIsOfTypeClientServerInterface(VariationPointProxy variationPointProxy, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return variationPointProxy.portrequiredInterfaceoclIsOfTypeClientServerInterface(diagnostics, context);
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

