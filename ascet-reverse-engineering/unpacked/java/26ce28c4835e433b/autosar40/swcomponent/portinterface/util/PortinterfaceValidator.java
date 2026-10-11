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
package autosar40.swcomponent.portinterface.util;

import autosar40.Activator;
import autosar40.swcomponent.portinterface.ApplicationCompositeDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.ApplicationError;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.swcomponent.portinterface.ClientServerInterface;
import autosar40.swcomponent.portinterface.ClientServerInterfaceMapping;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.portinterface.ClientServerOperationMapping;
import autosar40.swcomponent.portinterface.DataInterface;
import autosar40.swcomponent.portinterface.DataPrototypeMapping;
import autosar40.swcomponent.portinterface.ImplementationDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.InvalidationPolicy;
import autosar40.swcomponent.portinterface.MappingDirectionEnum;
import autosar40.swcomponent.portinterface.ModeInterfaceMapping;
import autosar40.swcomponent.portinterface.ModeSwitchInterface;
import autosar40.swcomponent.portinterface.NvDataInterface;
import autosar40.swcomponent.portinterface.ParameterInterface;
import autosar40.swcomponent.portinterface.PortInterface;
import autosar40.swcomponent.portinterface.PortInterfaceMapping;
import autosar40.swcomponent.portinterface.PortInterfaceMappingSet;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.SenderReceiverInterface;
import autosar40.swcomponent.portinterface.ServerArgumentImplPolicyEnum;
import autosar40.swcomponent.portinterface.SubElementMapping;
import autosar40.swcomponent.portinterface.SubElementRef;
import autosar40.swcomponent.portinterface.TextTableMapping;
import autosar40.swcomponent.portinterface.TextTableValuePair;
import autosar40.swcomponent.portinterface.TriggerInterface;
import autosar40.swcomponent.portinterface.TriggerInterfaceMapping;
import autosar40.swcomponent.portinterface.VariableAndParameterInterfaceMapping;
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
    public static final String DIAGNOSTIC_SOURCE = "autosar40.swcomponent.portinterface";
    public static final int NV_DATA_INTERFACE__ATLEASTONEDATAELEMENTORMODEGROUP = 1;
    public static final int INVALIDATION_POLICY__ATLEASTONEDATAELEMENTORMODEGROUP = 2;
    public static final int MODE_SWITCH_INTERFACE__ATLEASTONEDATAELEMENTORMODEGROUP = 3;
    public static final int SENDER_RECEIVER_INTERFACE__ATLEASTONEDATAELEMENTORMODEGROUP = 4;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 4;
    protected static final int DIAGNOSTIC_CODE_COUNT = 4;

    protected EPackage getEPackage() {
        return PortinterfacePackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateClientServerOperation((ClientServerOperation)value, diagnostics, context);
            }
            case 1: {
                return this.validateArgumentDataPrototype((ArgumentDataPrototype)value, diagnostics, context);
            }
            case 2: {
                return this.validateApplicationError((ApplicationError)value, diagnostics, context);
            }
            case 3: {
                return this.validatePortInterfaceMapping((PortInterfaceMapping)value, diagnostics, context);
            }
            case 4: {
                return this.validateApplicationCompositeDataTypeSubElementRef((ApplicationCompositeDataTypeSubElementRef)value, diagnostics, context);
            }
            case 5: {
                return this.validateSubElementRef((SubElementRef)value, diagnostics, context);
            }
            case 6: {
                return this.validateDataInterface((DataInterface)value, diagnostics, context);
            }
            case 7: {
                return this.validateImplementationDataTypeSubElementRef((ImplementationDataTypeSubElementRef)value, diagnostics, context);
            }
            case 8: {
                return this.validateParameterInterface((ParameterInterface)value, diagnostics, context);
            }
            case 9: {
                return this.validateSubElementMapping((SubElementMapping)value, diagnostics, context);
            }
            case 10: {
                return this.validateTextTableMapping((TextTableMapping)value, diagnostics, context);
            }
            case 11: {
                return this.validateTextTableValuePair((TextTableValuePair)value, diagnostics, context);
            }
            case 12: {
                return this.validateNvDataInterface((NvDataInterface)value, diagnostics, context);
            }
            case 13: {
                return this.validateInvalidationPolicy((InvalidationPolicy)value, diagnostics, context);
            }
            case 14: {
                return this.validateModeSwitchInterface((ModeSwitchInterface)value, diagnostics, context);
            }
            case 15: {
                return this.validateSenderReceiverInterface((SenderReceiverInterface)value, diagnostics, context);
            }
            case 16: {
                return this.validateClientServerInterface((ClientServerInterface)value, diagnostics, context);
            }
            case 17: {
                return this.validateTriggerInterface((TriggerInterface)value, diagnostics, context);
            }
            case 18: {
                return this.validatePortInterfaceMappingSet((PortInterfaceMappingSet)value, diagnostics, context);
            }
            case 19: {
                return this.validateVariableAndParameterInterfaceMapping((VariableAndParameterInterfaceMapping)value, diagnostics, context);
            }
            case 20: {
                return this.validateDataPrototypeMapping((DataPrototypeMapping)value, diagnostics, context);
            }
            case 21: {
                return this.validateModeInterfaceMapping((ModeInterfaceMapping)value, diagnostics, context);
            }
            case 22: {
                return this.validateClientServerInterfaceMapping((ClientServerInterfaceMapping)value, diagnostics, context);
            }
            case 23: {
                return this.validateClientServerOperationMapping((ClientServerOperationMapping)value, diagnostics, context);
            }
            case 24: {
                return this.validateTriggerInterfaceMapping((TriggerInterfaceMapping)value, diagnostics, context);
            }
            case 25: {
                return this.validatePortInterface((PortInterface)value, diagnostics, context);
            }
            case 26: {
                return this.validateServerArgumentImplPolicyEnum((ServerArgumentImplPolicyEnum)((Object)value), diagnostics, context);
            }
            case 27: {
                return this.validateMappingDirectionEnum((MappingDirectionEnum)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateClientServerOperation(ClientServerOperation clientServerOperation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)clientServerOperation, diagnostics, context);
    }

    public boolean validateArgumentDataPrototype(ArgumentDataPrototype argumentDataPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)argumentDataPrototype, diagnostics, context);
    }

    public boolean validateApplicationError(ApplicationError applicationError, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)applicationError, diagnostics, context);
    }

    public boolean validatePortInterfaceMapping(PortInterfaceMapping portInterfaceMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)portInterfaceMapping, diagnostics, context);
    }

    public boolean validateApplicationCompositeDataTypeSubElementRef(ApplicationCompositeDataTypeSubElementRef applicationCompositeDataTypeSubElementRef, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)applicationCompositeDataTypeSubElementRef, diagnostics, context);
    }

    public boolean validateSubElementRef(SubElementRef subElementRef, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)subElementRef, diagnostics, context);
    }

    public boolean validateDataInterface(DataInterface dataInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)dataInterface, diagnostics, context);
    }

    public boolean validateImplementationDataTypeSubElementRef(ImplementationDataTypeSubElementRef implementationDataTypeSubElementRef, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)implementationDataTypeSubElementRef, diagnostics, context);
    }

    public boolean validateParameterInterface(ParameterInterface parameterInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)parameterInterface, diagnostics, context);
    }

    public boolean validateSubElementMapping(SubElementMapping subElementMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)subElementMapping, diagnostics, context);
    }

    public boolean validateTextTableMapping(TextTableMapping textTableMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)textTableMapping, diagnostics, context);
    }

    public boolean validateTextTableValuePair(TextTableValuePair textTableValuePair, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)textTableValuePair, diagnostics, context);
    }

    public boolean validateNvDataInterface(NvDataInterface nvDataInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)nvDataInterface, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)nvDataInterface, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)nvDataInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)nvDataInterface, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{nvDataInterface, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)nvDataInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)nvDataInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)nvDataInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)nvDataInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateNvDataInterface_atleastonedataelementormodegroup(nvDataInterface, diagnostics, context);
        }
        return result;
    }

    public boolean validateNvDataInterface_atleastonedataelementormodegroup(NvDataInterface nvDataInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return nvDataInterface.atleastonedataelementormodegroup(diagnostics, context);
    }

    public boolean validateInvalidationPolicy(InvalidationPolicy invalidationPolicy, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)invalidationPolicy, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)invalidationPolicy, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)invalidationPolicy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)invalidationPolicy, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{invalidationPolicy, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)invalidationPolicy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)invalidationPolicy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)invalidationPolicy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)invalidationPolicy, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateInvalidationPolicy_atleastonedataelementormodegroup(invalidationPolicy, diagnostics, context);
        }
        return result;
    }

    public boolean validateInvalidationPolicy_atleastonedataelementormodegroup(InvalidationPolicy invalidationPolicy, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return invalidationPolicy.atleastonedataelementormodegroup(diagnostics, context);
    }

    public boolean validateModeSwitchInterface(ModeSwitchInterface modeSwitchInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)modeSwitchInterface, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)modeSwitchInterface, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)modeSwitchInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)modeSwitchInterface, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{modeSwitchInterface, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)modeSwitchInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)modeSwitchInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)modeSwitchInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)modeSwitchInterface, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateModeSwitchInterface_atleastonedataelementormodegroup(modeSwitchInterface, diagnostics, context);
        }
        return result;
    }

    public boolean validateModeSwitchInterface_atleastonedataelementormodegroup(ModeSwitchInterface modeSwitchInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return modeSwitchInterface.atleastonedataelementormodegroup(diagnostics, context);
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

    public boolean validateClientServerInterface(ClientServerInterface clientServerInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)clientServerInterface, diagnostics, context);
    }

    public boolean validateTriggerInterface(TriggerInterface triggerInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)triggerInterface, diagnostics, context);
    }

    public boolean validatePortInterfaceMappingSet(PortInterfaceMappingSet portInterfaceMappingSet, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)portInterfaceMappingSet, diagnostics, context);
    }

    public boolean validateVariableAndParameterInterfaceMapping(VariableAndParameterInterfaceMapping variableAndParameterInterfaceMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)variableAndParameterInterfaceMapping, diagnostics, context);
    }

    public boolean validateDataPrototypeMapping(DataPrototypeMapping dataPrototypeMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)dataPrototypeMapping, diagnostics, context);
    }

    public boolean validateModeInterfaceMapping(ModeInterfaceMapping modeInterfaceMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)modeInterfaceMapping, diagnostics, context);
    }

    public boolean validateClientServerInterfaceMapping(ClientServerInterfaceMapping clientServerInterfaceMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)clientServerInterfaceMapping, diagnostics, context);
    }

    public boolean validateClientServerOperationMapping(ClientServerOperationMapping clientServerOperationMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)clientServerOperationMapping, diagnostics, context);
    }

    public boolean validateTriggerInterfaceMapping(TriggerInterfaceMapping triggerInterfaceMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)triggerInterfaceMapping, diagnostics, context);
    }

    public boolean validatePortInterface(PortInterface portInterface, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)portInterface, diagnostics, context);
    }

    public boolean validateServerArgumentImplPolicyEnum(ServerArgumentImplPolicyEnum serverArgumentImplPolicyEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateMappingDirectionEnum(MappingDirectionEnum mappingDirectionEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

