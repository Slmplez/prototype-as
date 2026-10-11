/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswBackgroundEvent;
import autosar40.bswmodule.bswbehavior.BswCalledEntity;
import autosar40.bswmodule.bswbehavior.BswExternalTriggerOccurredEvent;
import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswInternalTriggerOccurredEvent;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPoint;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPointRefConditional;
import autosar40.bswmodule.bswbehavior.BswInterruptCategory;
import autosar40.bswmodule.bswbehavior.BswInterruptEntity;
import autosar40.bswmodule.bswbehavior.BswModeReceiverPolicy;
import autosar40.bswmodule.bswbehavior.BswModeSenderPolicy;
import autosar40.bswmodule.bswbehavior.BswModeSwitchAckRequest;
import autosar40.bswmodule.bswbehavior.BswModeSwitchEvent;
import autosar40.bswmodule.bswbehavior.BswModeSwitchedAckEvent;
import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar40.bswmodule.bswbehavior.BswSchedulerNamePrefix;
import autosar40.bswmodule.bswbehavior.BswServiceDependency;
import autosar40.bswmodule.bswbehavior.BswTimingEvent;
import autosar40.bswmodule.bswbehavior.BswTriggerDirectImplementation;
import autosar40.bswmodule.bswbehavior.BswbehaviorFactory;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.RoleBasedBswModuleEntryAssignment;
import autosar40.bswmodule.bswbehavior.impl.BswBackgroundEventImpl;
import autosar40.bswmodule.bswbehavior.impl.BswCalledEntityImpl;
import autosar40.bswmodule.bswbehavior.impl.BswExternalTriggerOccurredEventImpl;
import autosar40.bswmodule.bswbehavior.impl.BswInternalBehaviorImpl;
import autosar40.bswmodule.bswbehavior.impl.BswInternalTriggerOccurredEventImpl;
import autosar40.bswmodule.bswbehavior.impl.BswInternalTriggeringPointImpl;
import autosar40.bswmodule.bswbehavior.impl.BswInternalTriggeringPointRefConditionalImpl;
import autosar40.bswmodule.bswbehavior.impl.BswInterruptEntityImpl;
import autosar40.bswmodule.bswbehavior.impl.BswModeReceiverPolicyImpl;
import autosar40.bswmodule.bswbehavior.impl.BswModeSenderPolicyImpl;
import autosar40.bswmodule.bswbehavior.impl.BswModeSwitchAckRequestImpl;
import autosar40.bswmodule.bswbehavior.impl.BswModeSwitchEventImpl;
import autosar40.bswmodule.bswbehavior.impl.BswModeSwitchedAckEventImpl;
import autosar40.bswmodule.bswbehavior.impl.BswModuleEntityImpl;
import autosar40.bswmodule.bswbehavior.impl.BswSchedulableEntityImpl;
import autosar40.bswmodule.bswbehavior.impl.BswSchedulerNamePrefixImpl;
import autosar40.bswmodule.bswbehavior.impl.BswServiceDependencyImpl;
import autosar40.bswmodule.bswbehavior.impl.BswTimingEventImpl;
import autosar40.bswmodule.bswbehavior.impl.BswTriggerDirectImplementationImpl;
import autosar40.bswmodule.bswbehavior.impl.RoleBasedBswModuleEntryAssignmentImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BswbehaviorFactoryImpl
extends EFactoryImpl
implements BswbehaviorFactory {
    public static BswbehaviorFactory init() {
        try {
            BswbehaviorFactory theBswbehaviorFactory = (BswbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/bm/bb");
            if (theBswbehaviorFactory != null) {
                return theBswbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BswbehaviorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBswBackgroundEvent();
            }
            case 2: {
                return this.createBswSchedulableEntity();
            }
            case 3: {
                return this.createBswModuleEntity();
            }
            case 4: {
                return this.createBswInternalTriggeringPointRefConditional();
            }
            case 5: {
                return this.createBswInternalTriggeringPoint();
            }
            case 6: {
                return this.createBswSchedulerNamePrefix();
            }
            case 7: {
                return this.createBswInternalBehavior();
            }
            case 8: {
                return this.createBswModeReceiverPolicy();
            }
            case 9: {
                return this.createBswTriggerDirectImplementation();
            }
            case 10: {
                return this.createBswServiceDependency();
            }
            case 11: {
                return this.createRoleBasedBswModuleEntryAssignment();
            }
            case 12: {
                return this.createBswModeSenderPolicy();
            }
            case 13: {
                return this.createBswModeSwitchAckRequest();
            }
            case 14: {
                return this.createBswCalledEntity();
            }
            case 15: {
                return this.createBswExternalTriggerOccurredEvent();
            }
            case 16: {
                return this.createBswInternalTriggerOccurredEvent();
            }
            case 17: {
                return this.createBswInterruptEntity();
            }
            case 18: {
                return this.createBswModeSwitchedAckEvent();
            }
            case 19: {
                return this.createBswModeSwitchEvent();
            }
            case 20: {
                return this.createBswTimingEvent();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 21: {
                return this.createBswInterruptCategoryFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 21: {
                return this.convertBswInterruptCategoryToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public BswBackgroundEvent createBswBackgroundEvent() {
        BswBackgroundEventImpl bswBackgroundEvent = new BswBackgroundEventImpl();
        return bswBackgroundEvent;
    }

    public BswSchedulableEntity createBswSchedulableEntity() {
        BswSchedulableEntityImpl bswSchedulableEntity = new BswSchedulableEntityImpl();
        return bswSchedulableEntity;
    }

    public BswModuleEntity createBswModuleEntity() {
        BswModuleEntityImpl bswModuleEntity = new BswModuleEntityImpl();
        return bswModuleEntity;
    }

    public BswInternalTriggeringPointRefConditional createBswInternalTriggeringPointRefConditional() {
        BswInternalTriggeringPointRefConditionalImpl bswInternalTriggeringPointRefConditional = new BswInternalTriggeringPointRefConditionalImpl();
        return bswInternalTriggeringPointRefConditional;
    }

    public BswInternalTriggeringPoint createBswInternalTriggeringPoint() {
        BswInternalTriggeringPointImpl bswInternalTriggeringPoint = new BswInternalTriggeringPointImpl();
        return bswInternalTriggeringPoint;
    }

    public BswSchedulerNamePrefix createBswSchedulerNamePrefix() {
        BswSchedulerNamePrefixImpl bswSchedulerNamePrefix = new BswSchedulerNamePrefixImpl();
        return bswSchedulerNamePrefix;
    }

    public BswInternalBehavior createBswInternalBehavior() {
        BswInternalBehaviorImpl bswInternalBehavior = new BswInternalBehaviorImpl();
        return bswInternalBehavior;
    }

    public BswModeReceiverPolicy createBswModeReceiverPolicy() {
        BswModeReceiverPolicyImpl bswModeReceiverPolicy = new BswModeReceiverPolicyImpl();
        return bswModeReceiverPolicy;
    }

    public BswTriggerDirectImplementation createBswTriggerDirectImplementation() {
        BswTriggerDirectImplementationImpl bswTriggerDirectImplementation = new BswTriggerDirectImplementationImpl();
        return bswTriggerDirectImplementation;
    }

    public BswServiceDependency createBswServiceDependency() {
        BswServiceDependencyImpl bswServiceDependency = new BswServiceDependencyImpl();
        return bswServiceDependency;
    }

    public RoleBasedBswModuleEntryAssignment createRoleBasedBswModuleEntryAssignment() {
        RoleBasedBswModuleEntryAssignmentImpl roleBasedBswModuleEntryAssignment = new RoleBasedBswModuleEntryAssignmentImpl();
        return roleBasedBswModuleEntryAssignment;
    }

    public BswModeSenderPolicy createBswModeSenderPolicy() {
        BswModeSenderPolicyImpl bswModeSenderPolicy = new BswModeSenderPolicyImpl();
        return bswModeSenderPolicy;
    }

    public BswModeSwitchAckRequest createBswModeSwitchAckRequest() {
        BswModeSwitchAckRequestImpl bswModeSwitchAckRequest = new BswModeSwitchAckRequestImpl();
        return bswModeSwitchAckRequest;
    }

    public BswCalledEntity createBswCalledEntity() {
        BswCalledEntityImpl bswCalledEntity = new BswCalledEntityImpl();
        return bswCalledEntity;
    }

    public BswExternalTriggerOccurredEvent createBswExternalTriggerOccurredEvent() {
        BswExternalTriggerOccurredEventImpl bswExternalTriggerOccurredEvent = new BswExternalTriggerOccurredEventImpl();
        return bswExternalTriggerOccurredEvent;
    }

    public BswInternalTriggerOccurredEvent createBswInternalTriggerOccurredEvent() {
        BswInternalTriggerOccurredEventImpl bswInternalTriggerOccurredEvent = new BswInternalTriggerOccurredEventImpl();
        return bswInternalTriggerOccurredEvent;
    }

    public BswInterruptEntity createBswInterruptEntity() {
        BswInterruptEntityImpl bswInterruptEntity = new BswInterruptEntityImpl();
        return bswInterruptEntity;
    }

    public BswModeSwitchedAckEvent createBswModeSwitchedAckEvent() {
        BswModeSwitchedAckEventImpl bswModeSwitchedAckEvent = new BswModeSwitchedAckEventImpl();
        return bswModeSwitchedAckEvent;
    }

    public BswModeSwitchEvent createBswModeSwitchEvent() {
        BswModeSwitchEventImpl bswModeSwitchEvent = new BswModeSwitchEventImpl();
        return bswModeSwitchEvent;
    }

    public BswTimingEvent createBswTimingEvent() {
        BswTimingEventImpl bswTimingEvent = new BswTimingEventImpl();
        return bswTimingEvent;
    }

    public BswInterruptCategory createBswInterruptCategoryFromString(EDataType eDataType, String initialValue) {
        BswInterruptCategory result = BswInterruptCategory.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertBswInterruptCategoryToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public BswbehaviorPackage getBswbehaviorPackage() {
        return (BswbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static BswbehaviorPackage getPackage() {
        return BswbehaviorPackage.eINSTANCE;
    }
}

