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
package autosar21.swcomponent.composition.util;

import autosar21.Activator;
import autosar21.swcomponent.composition.AssemblyConnectorPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.composition.CompositionPackage;
import autosar21.swcomponent.composition.CompositionType;
import autosar21.swcomponent.composition.ConnectorPrototype;
import autosar21.swcomponent.composition.DelegationConnectorPrototype;
import autosar21.swcomponent.composition.ServiceConnectorPrototype;
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
    public static final String DIAGNOSTIC_SOURCE = "autosar21.swcomponent.composition";
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__CLIENTSERVERN1 = 1;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__SENDERRECEIVER1NORN1 = 2;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__PROVIDEROCL_IS_TYPE_OF_SERVER_PORT_PROTOTYPEANDREQUESTEROCL_IS_TYPE_OF_CLIENT_PORT_PROTOTYPEORPROVIDEROCL_IS_TYPE_OF_SENDER_PORT_PROTOTYPEANDREQUESTEROCL_IS_TYPE_OF_RECEIVER_PORT_PROTOTYPE = 3;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__COMPOSITIONPORTS_INCLUDESPROVIDERANDCOMPOSITIONPORTS_INCLUDESREQUESTER = 4;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__ALLINNERPORTSAREOFSAMETYPE = 5;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__ALLINNERPORTSHAVESAMEINTERFACE = 6;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__INNERPORTSERVERJUST1INNERPORT = 7;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__JUST1OUTERPORT = 8;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 8;
    protected static final int DIAGNOSTIC_CODE_COUNT = 8;

    protected EPackage getEPackage() {
        return CompositionPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateAssemblyConnectorPrototype((AssemblyConnectorPrototype)value, diagnostics, context);
            }
            case 1: {
                return this.validateConnectorPrototype((ConnectorPrototype)value, diagnostics, context);
            }
            case 2: {
                return this.validateCompositionType((CompositionType)value, diagnostics, context);
            }
            case 3: {
                return this.validateServiceConnectorPrototype((ServiceConnectorPrototype)value, diagnostics, context);
            }
            case 4: {
                return this.validateDelegationConnectorPrototype((DelegationConnectorPrototype)value, diagnostics, context);
            }
            case 5: {
                return this.validateComponentPrototype((ComponentPrototype)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateAssemblyConnectorPrototype(AssemblyConnectorPrototype assemblyConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)assemblyConnectorPrototype, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)assemblyConnectorPrototype, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)assemblyConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)assemblyConnectorPrototype, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{assemblyConnectorPrototype, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)assemblyConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)assemblyConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)assemblyConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)assemblyConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAssemblyConnectorPrototype__clientservern1(assemblyConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAssemblyConnectorPrototype__senderreceiver1norn1(assemblyConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAssemblyConnectorPrototype__provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(assemblyConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateAssemblyConnectorPrototype_compositionports_includesproviderandcompositionports_includesrequester(assemblyConnectorPrototype, diagnostics, context);
        }
        return result;
    }

    public boolean validateAssemblyConnectorPrototype__clientservern1(AssemblyConnectorPrototype assemblyConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return assemblyConnectorPrototype._clientservern1(diagnostics, context);
    }

    public boolean validateAssemblyConnectorPrototype__senderreceiver1norn1(AssemblyConnectorPrototype assemblyConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return assemblyConnectorPrototype._senderreceiver1norn1(diagnostics, context);
    }

    public boolean validateAssemblyConnectorPrototype__provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(AssemblyConnectorPrototype assemblyConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return assemblyConnectorPrototype._provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(diagnostics, context);
    }

    public boolean validateAssemblyConnectorPrototype_compositionports_includesproviderandcompositionports_includesrequester(AssemblyConnectorPrototype assemblyConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return assemblyConnectorPrototype.compositionports_includesproviderandcompositionports_includesrequester(diagnostics, context);
    }

    public boolean validateConnectorPrototype(ConnectorPrototype connectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)connectorPrototype, diagnostics, context);
    }

    public boolean validateCompositionType(CompositionType compositionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)compositionType, diagnostics, context);
    }

    public boolean validateServiceConnectorPrototype(ServiceConnectorPrototype serviceConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)serviceConnectorPrototype, diagnostics, context);
    }

    public boolean validateDelegationConnectorPrototype(DelegationConnectorPrototype delegationConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)delegationConnectorPrototype, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)delegationConnectorPrototype, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)delegationConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)delegationConnectorPrototype, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{delegationConnectorPrototype, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)delegationConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)delegationConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)delegationConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)delegationConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDelegationConnectorPrototype__allinnerportsareofsametype(delegationConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDelegationConnectorPrototype__allinnerportshavesameinterface(delegationConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDelegationConnectorPrototype__innerportserverjust1innerport(delegationConnectorPrototype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDelegationConnectorPrototype__just1outerport(delegationConnectorPrototype, diagnostics, context);
        }
        return result;
    }

    public boolean validateDelegationConnectorPrototype__allinnerportsareofsametype(DelegationConnectorPrototype delegationConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegationConnectorPrototype._allinnerportsareofsametype(diagnostics, context);
    }

    public boolean validateDelegationConnectorPrototype__allinnerportshavesameinterface(DelegationConnectorPrototype delegationConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegationConnectorPrototype._allinnerportshavesameinterface(diagnostics, context);
    }

    public boolean validateDelegationConnectorPrototype__innerportserverjust1innerport(DelegationConnectorPrototype delegationConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegationConnectorPrototype._innerportserverjust1innerport(diagnostics, context);
    }

    public boolean validateDelegationConnectorPrototype__just1outerport(DelegationConnectorPrototype delegationConnectorPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return delegationConnectorPrototype._just1outerport(diagnostics, context);
    }

    public boolean validateComponentPrototype(ComponentPrototype componentPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)componentPrototype, diagnostics, context);
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

