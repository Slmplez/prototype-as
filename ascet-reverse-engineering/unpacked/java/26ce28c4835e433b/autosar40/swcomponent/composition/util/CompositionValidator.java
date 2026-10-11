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
package autosar40.swcomponent.composition.util;

import autosar40.Activator;
import autosar40.swcomponent.composition.AssemblySwConnector;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.DelegationSwConnector;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.SwConnector;
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
public class CompositionValidator
extends EObjectValidator {
    public static final CompositionValidator INSTANCE = new CompositionValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar40.swcomponent.composition";
    public static final int ASSEMBLY_SW_CONNECTOR__CLIENTSERVERN1 = 1;
    public static final int ASSEMBLY_SW_CONNECTOR__SENDERRECEIVER1NORN1 = 2;
    public static final int ASSEMBLY_SW_CONNECTOR__PROVIDEROCL_IS_TYPE_OF_SERVER_PORT_PROTOTYPEANDREQUESTEROCL_IS_TYPE_OF_CLIENT_PORT_PROTOTYPEORPROVIDEROCL_IS_TYPE_OF_SENDER_PORT_PROTOTYPEANDREQUESTEROCL_IS_TYPE_OF_RECEIVER_PORT_PROTOTYPE = 3;
    public static final int ASSEMBLY_SW_CONNECTOR__COMPOSITIONPORTS_INCLUDESPROVIDERANDCOMPOSITIONPORTS_INCLUDESREQUESTER = 4;
    public static final int DELEGATION_SW_CONNECTOR__ALLINNERPORTSAREOFSAMETYPE = 5;
    public static final int DELEGATION_SW_CONNECTOR__ALLINNERPORTSHAVESAMEINTERFACE = 6;
    public static final int DELEGATION_SW_CONNECTOR__INNERPORTSERVERJUST1INNERPORT = 7;
    public static final int DELEGATION_SW_CONNECTOR__JUST1OUTERPORT = 8;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 8;
    protected static final int DIAGNOSTIC_CODE_COUNT = 8;

    protected EPackage getEPackage() {
        return CompositionPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateAssemblySwConnector((AssemblySwConnector)value, diagnostics, context);
            }
            case 1: {
                return this.validateSwConnector((SwConnector)value, diagnostics, context);
            }
            case 2: {
                return this.validateSwComponentPrototype((SwComponentPrototype)value, diagnostics, context);
            }
            case 3: {
                return this.validateDelegationSwConnector((DelegationSwConnector)value, diagnostics, context);
            }
            case 4: {
                return this.validateCompositionSwComponentType((CompositionSwComponentType)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateAssemblySwConnector(AssemblySwConnector assemblySwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)assemblySwConnector, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)assemblySwConnector, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)assemblySwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)assemblySwConnector, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{assemblySwConnector, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)assemblySwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)assemblySwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)assemblySwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)assemblySwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAssemblySwConnector__clientservern1(assemblySwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAssemblySwConnector__senderreceiver1norn1(assemblySwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAssemblySwConnector__provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(assemblySwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAssemblySwConnector_compositionports_includesproviderandcompositionports_includesrequester(assemblySwConnector, diagnostics, context);
        }
        return result;
    }

    public boolean validateAssemblySwConnector__clientservern1(AssemblySwConnector assemblySwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return assemblySwConnector._clientservern1(diagnostics, context);
    }

    public boolean validateAssemblySwConnector__senderreceiver1norn1(AssemblySwConnector assemblySwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return assemblySwConnector._senderreceiver1norn1(diagnostics, context);
    }

    public boolean validateAssemblySwConnector__provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(AssemblySwConnector assemblySwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return assemblySwConnector._provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(diagnostics, context);
    }

    public boolean validateAssemblySwConnector_compositionports_includesproviderandcompositionports_includesrequester(AssemblySwConnector assemblySwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return assemblySwConnector.compositionports_includesproviderandcompositionports_includesrequester(diagnostics, context);
    }

    public boolean validateSwConnector(SwConnector swConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)swConnector, diagnostics, context);
    }

    public boolean validateSwComponentPrototype(SwComponentPrototype swComponentPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)swComponentPrototype, diagnostics, context);
    }

    public boolean validateDelegationSwConnector(DelegationSwConnector delegationSwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)delegationSwConnector, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)delegationSwConnector, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)delegationSwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)delegationSwConnector, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{delegationSwConnector, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)delegationSwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)delegationSwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)delegationSwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)delegationSwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDelegationSwConnector__allinnerportsareofsametype(delegationSwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDelegationSwConnector__allinnerportshavesameinterface(delegationSwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDelegationSwConnector__innerportserverjust1innerport(delegationSwConnector, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDelegationSwConnector__just1outerport(delegationSwConnector, diagnostics, context);
        }
        return result;
    }

    public boolean validateDelegationSwConnector__allinnerportsareofsametype(DelegationSwConnector delegationSwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegationSwConnector._allinnerportsareofsametype(diagnostics, context);
    }

    public boolean validateDelegationSwConnector__allinnerportshavesameinterface(DelegationSwConnector delegationSwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegationSwConnector._allinnerportshavesameinterface(diagnostics, context);
    }

    public boolean validateDelegationSwConnector__innerportserverjust1innerport(DelegationSwConnector delegationSwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegationSwConnector._innerportserverjust1innerport(diagnostics, context);
    }

    public boolean validateDelegationSwConnector__just1outerport(DelegationSwConnector delegationSwConnector, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegationSwConnector._just1outerport(diagnostics, context);
    }

    public boolean validateCompositionSwComponentType(CompositionSwComponentType compositionSwComponentType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)compositionSwComponentType, diagnostics, context);
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

