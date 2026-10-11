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
package autosar40.swcomponent.swcinternalbehavior.servercall.util;

import autosar40.Activator;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallResultPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar40.swcomponent.swcinternalbehavior.servercall.SynchronousServerCallPoint;
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
public class ServercallValidator
extends EObjectValidator {
    public static final ServercallValidator INSTANCE = new ServercallValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar40.swcomponent.swcinternalbehavior.servercall";
    public static final int SERVER_CALL_POINT__PORTCOMPONENTRUNNABLEIMPLEMENTATIONIMPLEMENTED_COMPONENT = 1;
    public static final int SERVER_CALL_POINT__PORTREQUIRED_INTERFACEOCL_IS_OF_TYPE_CLIENT_SERVER_INTERFACE = 2;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__PORTCOMPONENTRUNNABLEIMPLEMENTATIONIMPLEMENTED_COMPONENT = 3;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__PORTREQUIRED_INTERFACEOCL_IS_OF_TYPE_CLIENT_SERVER_INTERFACE = 4;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 4;
    protected static final int DIAGNOSTIC_CODE_COUNT = 4;

    protected EPackage getEPackage() {
        return ServercallPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateAsynchronousServerCallPoint((AsynchronousServerCallPoint)value, diagnostics, context);
            }
            case 1: {
                return this.validateServerCallPoint((ServerCallPoint)value, diagnostics, context);
            }
            case 2: {
                return this.validateSynchronousServerCallPoint((SynchronousServerCallPoint)value, diagnostics, context);
            }
            case 3: {
                return this.validateAsynchronousServerCallResultPoint((AsynchronousServerCallResultPoint)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateAsynchronousServerCallPoint(AsynchronousServerCallPoint asynchronousServerCallPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)asynchronousServerCallPoint, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)asynchronousServerCallPoint, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)asynchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)asynchronousServerCallPoint, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{asynchronousServerCallPoint, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)asynchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)asynchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)asynchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)asynchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServerCallPoint_portcomponentrunnableimplementationimplementedComponent(asynchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServerCallPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(asynchronousServerCallPoint, diagnostics, context);
        }
        return result;
    }

    public boolean validateServerCallPoint(ServerCallPoint serverCallPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)serverCallPoint, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)serverCallPoint, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)serverCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)serverCallPoint, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{serverCallPoint, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)serverCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)serverCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)serverCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)serverCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServerCallPoint_portcomponentrunnableimplementationimplementedComponent(serverCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServerCallPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(serverCallPoint, diagnostics, context);
        }
        return result;
    }

    public boolean validateServerCallPoint_portcomponentrunnableimplementationimplementedComponent(ServerCallPoint serverCallPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return serverCallPoint.portcomponentrunnableimplementationimplementedComponent(diagnostics, context);
    }

    public boolean validateServerCallPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(ServerCallPoint serverCallPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return serverCallPoint.portrequiredInterfaceoclIsOfTypeClientServerInterface(diagnostics, context);
    }

    public boolean validateSynchronousServerCallPoint(SynchronousServerCallPoint synchronousServerCallPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)synchronousServerCallPoint, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)synchronousServerCallPoint, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)synchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)synchronousServerCallPoint, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{synchronousServerCallPoint, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)synchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)synchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)synchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)synchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServerCallPoint_portcomponentrunnableimplementationimplementedComponent(synchronousServerCallPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateServerCallPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(synchronousServerCallPoint, diagnostics, context);
        }
        return result;
    }

    public boolean validateAsynchronousServerCallResultPoint(AsynchronousServerCallResultPoint asynchronousServerCallResultPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)asynchronousServerCallResultPoint, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)asynchronousServerCallResultPoint, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)asynchronousServerCallResultPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)asynchronousServerCallResultPoint, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{asynchronousServerCallResultPoint, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)asynchronousServerCallResultPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)asynchronousServerCallResultPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)asynchronousServerCallResultPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)asynchronousServerCallResultPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAsynchronousServerCallResultPoint_portcomponentrunnableimplementationimplementedComponent(asynchronousServerCallResultPoint, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAsynchronousServerCallResultPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(asynchronousServerCallResultPoint, diagnostics, context);
        }
        return result;
    }

    public boolean validateAsynchronousServerCallResultPoint_portcomponentrunnableimplementationimplementedComponent(AsynchronousServerCallResultPoint asynchronousServerCallResultPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return asynchronousServerCallResultPoint.portcomponentrunnableimplementationimplementedComponent(diagnostics, context);
    }

    public boolean validateAsynchronousServerCallResultPoint_portrequiredInterfaceoclIsOfTypeClientServerInterface(AsynchronousServerCallResultPoint asynchronousServerCallResultPoint, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return asynchronousServerCallResultPoint.portrequiredInterfaceoclIsOfTypeClientServerInterface(diagnostics, context);
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

