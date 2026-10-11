/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity
 *  gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
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
import autosar40.bswmodule.bswbehavior.util.BswbehaviorSwitch;
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
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class BswbehaviorAdapterFactory
extends AdapterFactoryImpl {
    protected static BswbehaviorPackage modelPackage;
    protected BswbehaviorSwitch<Adapter> modelSwitch = new BswbehaviorSwitch<Adapter>(){

        @Override
        public Adapter caseBswBackgroundEvent(BswBackgroundEvent object) {
            return BswbehaviorAdapterFactory.this.createBswBackgroundEventAdapter();
        }

        @Override
        public Adapter caseBswEvent(BswEvent object) {
            return BswbehaviorAdapterFactory.this.createBswEventAdapter();
        }

        @Override
        public Adapter caseBswSchedulableEntity(BswSchedulableEntity object) {
            return BswbehaviorAdapterFactory.this.createBswSchedulableEntityAdapter();
        }

        @Override
        public Adapter caseBswModuleEntity(BswModuleEntity object) {
            return BswbehaviorAdapterFactory.this.createBswModuleEntityAdapter();
        }

        @Override
        public Adapter caseBswInternalTriggeringPointRefConditional(BswInternalTriggeringPointRefConditional object) {
            return BswbehaviorAdapterFactory.this.createBswInternalTriggeringPointRefConditionalAdapter();
        }

        @Override
        public Adapter caseBswInternalTriggeringPoint(BswInternalTriggeringPoint object) {
            return BswbehaviorAdapterFactory.this.createBswInternalTriggeringPointAdapter();
        }

        @Override
        public Adapter caseBswSchedulerNamePrefix(BswSchedulerNamePrefix object) {
            return BswbehaviorAdapterFactory.this.createBswSchedulerNamePrefixAdapter();
        }

        @Override
        public Adapter caseBswInternalBehavior(BswInternalBehavior object) {
            return BswbehaviorAdapterFactory.this.createBswInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseBswModeReceiverPolicy(BswModeReceiverPolicy object) {
            return BswbehaviorAdapterFactory.this.createBswModeReceiverPolicyAdapter();
        }

        @Override
        public Adapter caseBswTriggerDirectImplementation(BswTriggerDirectImplementation object) {
            return BswbehaviorAdapterFactory.this.createBswTriggerDirectImplementationAdapter();
        }

        @Override
        public Adapter caseBswServiceDependency(BswServiceDependency object) {
            return BswbehaviorAdapterFactory.this.createBswServiceDependencyAdapter();
        }

        @Override
        public Adapter caseRoleBasedBswModuleEntryAssignment(RoleBasedBswModuleEntryAssignment object) {
            return BswbehaviorAdapterFactory.this.createRoleBasedBswModuleEntryAssignmentAdapter();
        }

        @Override
        public Adapter caseBswModeSenderPolicy(BswModeSenderPolicy object) {
            return BswbehaviorAdapterFactory.this.createBswModeSenderPolicyAdapter();
        }

        @Override
        public Adapter caseBswModeSwitchAckRequest(BswModeSwitchAckRequest object) {
            return BswbehaviorAdapterFactory.this.createBswModeSwitchAckRequestAdapter();
        }

        @Override
        public Adapter caseBswCalledEntity(BswCalledEntity object) {
            return BswbehaviorAdapterFactory.this.createBswCalledEntityAdapter();
        }

        @Override
        public Adapter caseBswExternalTriggerOccurredEvent(BswExternalTriggerOccurredEvent object) {
            return BswbehaviorAdapterFactory.this.createBswExternalTriggerOccurredEventAdapter();
        }

        @Override
        public Adapter caseBswInternalTriggerOccurredEvent(BswInternalTriggerOccurredEvent object) {
            return BswbehaviorAdapterFactory.this.createBswInternalTriggerOccurredEventAdapter();
        }

        @Override
        public Adapter caseBswInterruptEntity(BswInterruptEntity object) {
            return BswbehaviorAdapterFactory.this.createBswInterruptEntityAdapter();
        }

        @Override
        public Adapter caseBswModeSwitchedAckEvent(BswModeSwitchedAckEvent object) {
            return BswbehaviorAdapterFactory.this.createBswModeSwitchedAckEventAdapter();
        }

        @Override
        public Adapter caseBswModeSwitchEvent(BswModeSwitchEvent object) {
            return BswbehaviorAdapterFactory.this.createBswModeSwitchEventAdapter();
        }

        @Override
        public Adapter caseBswTimingEvent(BswTimingEvent object) {
            return BswbehaviorAdapterFactory.this.createBswTimingEventAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return BswbehaviorAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return BswbehaviorAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return BswbehaviorAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return BswbehaviorAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return BswbehaviorAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return BswbehaviorAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return BswbehaviorAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGExecutableEntity(GExecutableEntity object) {
            return BswbehaviorAdapterFactory.this.createGExecutableEntityAdapter();
        }

        @Override
        public Adapter caseExecutableEntity(ExecutableEntity object) {
            return BswbehaviorAdapterFactory.this.createExecutableEntityAdapter();
        }

        @Override
        public Adapter caseImplementationProps(ImplementationProps object) {
            return BswbehaviorAdapterFactory.this.createImplementationPropsAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return BswbehaviorAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return BswbehaviorAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return BswbehaviorAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter caseGInternalBehavior(GInternalBehavior object) {
            return BswbehaviorAdapterFactory.this.createGInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseInternalBehavior(InternalBehavior object) {
            return BswbehaviorAdapterFactory.this.createInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseServiceDependency(ServiceDependency object) {
            return BswbehaviorAdapterFactory.this.createServiceDependencyAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return BswbehaviorAdapterFactory.this.createEObjectAdapter();
        }
    };

    public BswbehaviorAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = BswbehaviorPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createBswBackgroundEventAdapter() {
        return null;
    }

    public Adapter createBswEventAdapter() {
        return null;
    }

    public Adapter createBswSchedulableEntityAdapter() {
        return null;
    }

    public Adapter createBswModuleEntityAdapter() {
        return null;
    }

    public Adapter createBswInternalTriggeringPointRefConditionalAdapter() {
        return null;
    }

    public Adapter createBswInternalTriggeringPointAdapter() {
        return null;
    }

    public Adapter createBswSchedulerNamePrefixAdapter() {
        return null;
    }

    public Adapter createBswInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createBswModeReceiverPolicyAdapter() {
        return null;
    }

    public Adapter createBswTriggerDirectImplementationAdapter() {
        return null;
    }

    public Adapter createBswServiceDependencyAdapter() {
        return null;
    }

    public Adapter createRoleBasedBswModuleEntryAssignmentAdapter() {
        return null;
    }

    public Adapter createBswModeSenderPolicyAdapter() {
        return null;
    }

    public Adapter createBswModeSwitchAckRequestAdapter() {
        return null;
    }

    public Adapter createBswCalledEntityAdapter() {
        return null;
    }

    public Adapter createBswExternalTriggerOccurredEventAdapter() {
        return null;
    }

    public Adapter createBswInternalTriggerOccurredEventAdapter() {
        return null;
    }

    public Adapter createBswInterruptEntityAdapter() {
        return null;
    }

    public Adapter createBswModeSwitchedAckEventAdapter() {
        return null;
    }

    public Adapter createBswModeSwitchEventAdapter() {
        return null;
    }

    public Adapter createBswTimingEventAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createGExecutableEntityAdapter() {
        return null;
    }

    public Adapter createExecutableEntityAdapter() {
        return null;
    }

    public Adapter createImplementationPropsAdapter() {
        return null;
    }

    public Adapter createAtpClassifierAdapter() {
        return null;
    }

    public Adapter createAtpFeatureAdapter() {
        return null;
    }

    public Adapter createAtpStructureElementAdapter() {
        return null;
    }

    public Adapter createGInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createServiceDependencyAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

