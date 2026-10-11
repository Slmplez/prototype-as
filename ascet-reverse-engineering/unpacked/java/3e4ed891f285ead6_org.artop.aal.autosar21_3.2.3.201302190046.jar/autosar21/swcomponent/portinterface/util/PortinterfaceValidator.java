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
package autosar21.swcomponent.portinterface.util;

import autosar21.Activator;
import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.swcomponent.portinterface.ClientServerInterface;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.swcomponent.portinterface.DirectionKind;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.swcomponent.portinterface.PortInterface;
import autosar21.swcomponent.portinterface.PortinterfacePackage;
import autosar21.swcomponent.portinterface.SenderReceiverInterface;
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
public class PortinterfaceValidator
extends EObjectValidator {
    public static final PortinterfaceValidator INSTANCE = new PortinterfaceValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar21.swcomponent.portinterface";
    public static final int SENDER_RECEIVER_INTERFACE__ATLEASTONEDATAELEMENTORMODEGROUP = 1;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 1;
    protected static final int DIAGNOSTIC_CODE_COUNT = 1;

    protected EPackage getEPackage() {
        return PortinterfacePackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateModeDeclarationGroupPrototype((ModeDeclarationGroupPrototype)value, diagnostics, context);
            }
            case 1: {
                return this.validateOperationPrototype((OperationPrototype)value, diagnostics, context);
            }
            case 2: {
                return this.validateArgumentPrototype((ArgumentPrototype)value, diagnostics, context);
            }
            case 3: {
                return this.validatePortInterface((PortInterface)value, diagnostics, context);
            }
            case 4: {
                return this.validateClientServerInterface((ClientServerInterface)value, diagnostics, context);
            }
            case 5: {
                return this.validateSenderReceiverInterface((SenderReceiverInterface)value, diagnostics, context);
            }
            case 6: {
                return this.validateDataElementPrototype((DataElementPrototype)value, diagnostics, context);
            }
            case 7: {
                return this.validateDirectionKind((DirectionKind)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype modeDeclarationGroupPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)modeDeclarationGroupPrototype, diagnostics, context);
    }

    public boolean validateOperationPrototype(OperationPrototype operationPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)operationPrototype, diagnostics, context);
    }

    public boolean validateArgumentPrototype(ArgumentPrototype argumentPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)argumentPrototype, diagnostics, context);
    }

    public boolean validatePortInterface(PortInterface portInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)portInterface, diagnostics, context);
    }

    public boolean validateClientServerInterface(ClientServerInterface clientServerInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)clientServerInterface, diagnostics, context);
    }

    public boolean validateSenderReceiverInterface(SenderReceiverInterface senderReceiverInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)senderReceiverInterface, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)senderReceiverInterface, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)senderReceiverInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)senderReceiverInterface, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{senderReceiverInterface, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)senderReceiverInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)senderReceiverInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)senderReceiverInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)senderReceiverInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateSenderReceiverInterface_atleastonedataelementormodegroup(senderReceiverInterface, diagnostics, context);
        }
        return result;
    }

    public boolean validateSenderReceiverInterface_atleastonedataelementormodegroup(SenderReceiverInterface senderReceiverInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return senderReceiverInterface.atleastonedataelementormodegroup(diagnostics, context);
    }

    public boolean validateDataElementPrototype(DataElementPrototype dataElementPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)dataElementPrototype, diagnostics, context);
    }

    public boolean validateDirectionKind(DirectionKind directionKind, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

