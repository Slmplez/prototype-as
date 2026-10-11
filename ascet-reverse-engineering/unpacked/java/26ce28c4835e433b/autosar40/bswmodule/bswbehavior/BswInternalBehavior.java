/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswEvent;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPoint;
import autosar40.bswmodule.bswbehavior.BswModeReceiverPolicy;
import autosar40.bswmodule.bswbehavior.BswModeSenderPolicy;
import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.bswmodule.bswbehavior.BswSchedulerNamePrefix;
import autosar40.bswmodule.bswbehavior.BswServiceDependency;
import autosar40.bswmodule.bswbehavior.BswTriggerDirectImplementation;
import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.commonstructure.internalbehavior.InternalBehavior;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswInternalBehavior
extends InternalBehavior {
    public BswModuleDescription getBswModuleDescription();

    public void setBswModuleDescription(BswModuleDescription var1);

    public EList<BswInternalTriggeringPoint> getInternalTriggeringPoints();

    public EList<BswModuleEntity> getEntities();

    public EList<BswEvent> getEvents();

    public EList<BswTriggerDirectImplementation> getTriggerDirectImplementations();

    public EList<BswModeSenderPolicy> getModeSenderPolicies();

    public EList<BswModeReceiverPolicy> getModeReceiverPolicies();

    public EList<BswServiceDependency> getServiceDependencies();

    public EList<ParameterDataPrototype> getPerInstanceParameters();

    public EList<BswSchedulerNamePrefix> getSchedulerNamePrefixs();
}

