/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswBackgroundEvent;
import autosar40.bswmodule.bswbehavior.BswCalledEntity;
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
import autosar40.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar40.bswmodule.bswbehavior.BswSchedulerNamePrefix;
import autosar40.bswmodule.bswbehavior.BswServiceDependency;
import autosar40.bswmodule.bswbehavior.BswTimingEvent;
import autosar40.bswmodule.bswbehavior.BswTriggerDirectImplementation;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.RoleBasedBswModuleEntryAssignment;
import autosar40.bswmodule.bswbehavior.impl.BswbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BswbehaviorFactory
extends EFactory {
    public static final BswbehaviorFactory eINSTANCE = BswbehaviorFactoryImpl.init();

    public BswBackgroundEvent createBswBackgroundEvent();

    public BswSchedulableEntity createBswSchedulableEntity();

    public BswInternalTriggeringPointRefConditional createBswInternalTriggeringPointRefConditional();

    public BswInternalTriggeringPoint createBswInternalTriggeringPoint();

    public BswSchedulerNamePrefix createBswSchedulerNamePrefix();

    public BswInternalBehavior createBswInternalBehavior();

    public BswModeReceiverPolicy createBswModeReceiverPolicy();

    public BswTriggerDirectImplementation createBswTriggerDirectImplementation();

    public BswServiceDependency createBswServiceDependency();

    public RoleBasedBswModuleEntryAssignment createRoleBasedBswModuleEntryAssignment();

    public BswModeSenderPolicy createBswModeSenderPolicy();

    public BswModeSwitchAckRequest createBswModeSwitchAckRequest();

    public BswCalledEntity createBswCalledEntity();

    public BswExternalTriggerOccurredEvent createBswExternalTriggerOccurredEvent();

    public BswInternalTriggerOccurredEvent createBswInternalTriggerOccurredEvent();

    public BswInterruptEntity createBswInterruptEntity();

    public BswModeSwitchedAckEvent createBswModeSwitchedAckEvent();

    public BswModeSwitchEvent createBswModeSwitchEvent();

    public BswTimingEvent createBswTimingEvent();

    public BswbehaviorPackage getBswbehaviorPackage();
}

