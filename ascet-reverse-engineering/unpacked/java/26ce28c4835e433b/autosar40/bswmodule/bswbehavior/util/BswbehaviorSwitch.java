/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity
 *  gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.bswmodule.bswbehavior.util;

import autosar40.bswmodule.bswbehavior.BswBackgroundEvent;
import autosar40.bswmodule.bswbehavior.BswCalledEntity;
import autosar40.bswmodule.bswbehavior.BswEvent;
import autosar40.bswmodule.bswbehavior.BswExternalTriggerOccurredEvent;
import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswInternalTriggerOccurredEvent;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPoint;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPointRefConditional;
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
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.RoleBasedBswModuleEntryAssignment;
import autosar40.commonstructure.implementation.ImplementationProps;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.internalbehavior.InternalBehavior;
import autosar40.commonstructure.serviceneeds.ServiceDependency;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswbehaviorSwitch<T> {
    protected static BswbehaviorPackage modelPackage;

    public BswbehaviorSwitch() {
        if (modelPackage == null) {
            modelPackage = BswbehaviorPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                BswBackgroundEvent bswBackgroundEvent = (BswBackgroundEvent)theEObject;
                T result = this.caseBswBackgroundEvent(bswBackgroundEvent);
                if (result == null) {
                    result = this.caseBswEvent(bswBackgroundEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswBackgroundEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswBackgroundEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswBackgroundEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(bswBackgroundEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswBackgroundEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswBackgroundEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswBackgroundEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                BswEvent bswEvent = (BswEvent)theEObject;
                T result = this.caseBswEvent(bswEvent);
                if (result == null) {
                    result = this.caseIdentifiable(bswEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(bswEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                BswSchedulableEntity bswSchedulableEntity = (BswSchedulableEntity)theEObject;
                T result = this.caseBswSchedulableEntity(bswSchedulableEntity);
                if (result == null) {
                    result = this.caseBswModuleEntity(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseExecutableEntity(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseGExecutableEntity(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseReferrable(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseARObject(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                BswModuleEntity bswModuleEntity = (BswModuleEntity)theEObject;
                T result = this.caseBswModuleEntity(bswModuleEntity);
                if (result == null) {
                    result = this.caseExecutableEntity(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseGExecutableEntity(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseReferrable(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseARObject(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModuleEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                BswInternalTriggeringPointRefConditional bswInternalTriggeringPointRefConditional = (BswInternalTriggeringPointRefConditional)theEObject;
                T result = this.caseBswInternalTriggeringPointRefConditional(bswInternalTriggeringPointRefConditional);
                if (result == null) {
                    result = this.caseARObject(bswInternalTriggeringPointRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(bswInternalTriggeringPointRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                BswInternalTriggeringPoint bswInternalTriggeringPoint = (BswInternalTriggeringPoint)theEObject;
                T result = this.caseBswInternalTriggeringPoint(bswInternalTriggeringPoint);
                if (result == null) {
                    result = this.caseIdentifiable(bswInternalTriggeringPoint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswInternalTriggeringPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswInternalTriggeringPoint);
                }
                if (result == null) {
                    result = this.caseReferrable(bswInternalTriggeringPoint);
                }
                if (result == null) {
                    result = this.caseARObject(bswInternalTriggeringPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswInternalTriggeringPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(bswInternalTriggeringPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                BswSchedulerNamePrefix bswSchedulerNamePrefix = (BswSchedulerNamePrefix)theEObject;
                T result = this.caseBswSchedulerNamePrefix(bswSchedulerNamePrefix);
                if (result == null) {
                    result = this.caseImplementationProps(bswSchedulerNamePrefix);
                }
                if (result == null) {
                    result = this.caseReferrable(bswSchedulerNamePrefix);
                }
                if (result == null) {
                    result = this.caseARObject(bswSchedulerNamePrefix);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswSchedulerNamePrefix);
                }
                if (result == null) {
                    result = this.caseGARObject(bswSchedulerNamePrefix);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                BswInternalBehavior bswInternalBehavior = (BswInternalBehavior)theEObject;
                T result = this.caseBswInternalBehavior(bswInternalBehavior);
                if (result == null) {
                    result = this.caseInternalBehavior(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGInternalBehavior(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseAtpFeature(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseReferrable(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseARObject(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGARObject(bswInternalBehavior);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                BswModeReceiverPolicy bswModeReceiverPolicy = (BswModeReceiverPolicy)theEObject;
                T result = this.caseBswModeReceiverPolicy(bswModeReceiverPolicy);
                if (result == null) {
                    result = this.caseARObject(bswModeReceiverPolicy);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModeReceiverPolicy);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                BswTriggerDirectImplementation bswTriggerDirectImplementation = (BswTriggerDirectImplementation)theEObject;
                T result = this.caseBswTriggerDirectImplementation(bswTriggerDirectImplementation);
                if (result == null) {
                    result = this.caseARObject(bswTriggerDirectImplementation);
                }
                if (result == null) {
                    result = this.caseGARObject(bswTriggerDirectImplementation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                BswServiceDependency bswServiceDependency = (BswServiceDependency)theEObject;
                T result = this.caseBswServiceDependency(bswServiceDependency);
                if (result == null) {
                    result = this.caseServiceDependency(bswServiceDependency);
                }
                if (result == null) {
                    result = this.caseARObject(bswServiceDependency);
                }
                if (result == null) {
                    result = this.caseGARObject(bswServiceDependency);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                RoleBasedBswModuleEntryAssignment roleBasedBswModuleEntryAssignment = (RoleBasedBswModuleEntryAssignment)theEObject;
                T result = this.caseRoleBasedBswModuleEntryAssignment(roleBasedBswModuleEntryAssignment);
                if (result == null) {
                    result = this.caseARObject(roleBasedBswModuleEntryAssignment);
                }
                if (result == null) {
                    result = this.caseGARObject(roleBasedBswModuleEntryAssignment);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                BswModeSenderPolicy bswModeSenderPolicy = (BswModeSenderPolicy)theEObject;
                T result = this.caseBswModeSenderPolicy(bswModeSenderPolicy);
                if (result == null) {
                    result = this.caseARObject(bswModeSenderPolicy);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModeSenderPolicy);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                BswModeSwitchAckRequest bswModeSwitchAckRequest = (BswModeSwitchAckRequest)theEObject;
                T result = this.caseBswModeSwitchAckRequest(bswModeSwitchAckRequest);
                if (result == null) {
                    result = this.caseARObject(bswModeSwitchAckRequest);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModeSwitchAckRequest);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                BswCalledEntity bswCalledEntity = (BswCalledEntity)theEObject;
                T result = this.caseBswCalledEntity(bswCalledEntity);
                if (result == null) {
                    result = this.caseBswModuleEntity(bswCalledEntity);
                }
                if (result == null) {
                    result = this.caseExecutableEntity(bswCalledEntity);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswCalledEntity);
                }
                if (result == null) {
                    result = this.caseGExecutableEntity(bswCalledEntity);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswCalledEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswCalledEntity);
                }
                if (result == null) {
                    result = this.caseReferrable(bswCalledEntity);
                }
                if (result == null) {
                    result = this.caseARObject(bswCalledEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswCalledEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(bswCalledEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                BswExternalTriggerOccurredEvent bswExternalTriggerOccurredEvent = (BswExternalTriggerOccurredEvent)theEObject;
                T result = this.caseBswExternalTriggerOccurredEvent(bswExternalTriggerOccurredEvent);
                if (result == null) {
                    result = this.caseBswEvent(bswExternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswExternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswExternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswExternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(bswExternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswExternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswExternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswExternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                BswInternalTriggerOccurredEvent bswInternalTriggerOccurredEvent = (BswInternalTriggerOccurredEvent)theEObject;
                T result = this.caseBswInternalTriggerOccurredEvent(bswInternalTriggerOccurredEvent);
                if (result == null) {
                    result = this.caseBswEvent(bswInternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswInternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswInternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswInternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(bswInternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswInternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswInternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswInternalTriggerOccurredEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                BswInterruptEntity bswInterruptEntity = (BswInterruptEntity)theEObject;
                T result = this.caseBswInterruptEntity(bswInterruptEntity);
                if (result == null) {
                    result = this.caseBswModuleEntity(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseExecutableEntity(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseGExecutableEntity(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseReferrable(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseARObject(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                BswModeSwitchedAckEvent bswModeSwitchedAckEvent = (BswModeSwitchedAckEvent)theEObject;
                T result = this.caseBswModeSwitchedAckEvent(bswModeSwitchedAckEvent);
                if (result == null) {
                    result = this.caseBswEvent(bswModeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswModeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswModeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswModeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(bswModeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswModeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswModeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModeSwitchedAckEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                BswModeSwitchEvent bswModeSwitchEvent = (BswModeSwitchEvent)theEObject;
                T result = this.caseBswModeSwitchEvent(bswModeSwitchEvent);
                if (result == null) {
                    result = this.caseBswEvent(bswModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(bswModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswModeSwitchEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModeSwitchEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                BswTimingEvent bswTimingEvent = (BswTimingEvent)theEObject;
                T result = this.caseBswTimingEvent(bswTimingEvent);
                if (result == null) {
                    result = this.caseBswEvent(bswTimingEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswTimingEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswTimingEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswTimingEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(bswTimingEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswTimingEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswTimingEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswTimingEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBswBackgroundEvent(BswBackgroundEvent object) {
        return null;
    }

    public T caseBswEvent(BswEvent object) {
        return null;
    }

    public T caseBswSchedulableEntity(BswSchedulableEntity object) {
        return null;
    }

    public T caseBswModuleEntity(BswModuleEntity object) {
        return null;
    }

    public T caseBswInternalTriggeringPointRefConditional(BswInternalTriggeringPointRefConditional object) {
        return null;
    }

    public T caseBswInternalTriggeringPoint(BswInternalTriggeringPoint object) {
        return null;
    }

    public T caseBswSchedulerNamePrefix(BswSchedulerNamePrefix object) {
        return null;
    }

    public T caseBswInternalBehavior(BswInternalBehavior object) {
        return null;
    }

    public T caseBswModeReceiverPolicy(BswModeReceiverPolicy object) {
        return null;
    }

    public T caseBswTriggerDirectImplementation(BswTriggerDirectImplementation object) {
        return null;
    }

    public T caseBswServiceDependency(BswServiceDependency object) {
        return null;
    }

    public T caseRoleBasedBswModuleEntryAssignment(RoleBasedBswModuleEntryAssignment object) {
        return null;
    }

    public T caseBswModeSenderPolicy(BswModeSenderPolicy object) {
        return null;
    }

    public T caseBswModeSwitchAckRequest(BswModeSwitchAckRequest object) {
        return null;
    }

    public T caseBswCalledEntity(BswCalledEntity object) {
        return null;
    }

    public T caseBswExternalTriggerOccurredEvent(BswExternalTriggerOccurredEvent object) {
        return null;
    }

    public T caseBswInternalTriggerOccurredEvent(BswInternalTriggerOccurredEvent object) {
        return null;
    }

    public T caseBswInterruptEntity(BswInterruptEntity object) {
        return null;
    }

    public T caseBswModeSwitchedAckEvent(BswModeSwitchedAckEvent object) {
        return null;
    }

    public T caseBswModeSwitchEvent(BswModeSwitchEvent object) {
        return null;
    }

    public T caseBswTimingEvent(BswTimingEvent object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseGExecutableEntity(GExecutableEntity object) {
        return null;
    }

    public T caseExecutableEntity(ExecutableEntity object) {
        return null;
    }

    public T caseImplementationProps(ImplementationProps object) {
        return null;
    }

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
        return null;
    }

    public T caseGInternalBehavior(GInternalBehavior object) {
        return null;
    }

    public T caseInternalBehavior(InternalBehavior object) {
        return null;
    }

    public T caseServiceDependency(ServiceDependency object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

