/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPointRefConditional;
import autosar40.bswmodule.bswbehavior.BswSchedulerNamePrefix;
import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.bswmodule.bswinterfaces.BswModuleEntryRefConditional;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeRefConditional;
import autosar40.commonstructure.triggerdeclaration.TriggerRefConditional;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswModuleEntity
extends ExecutableEntity {
    public BswInternalBehavior getBswInternalBehavior();

    public void setBswInternalBehavior(BswInternalBehavior var1);

    public EList<ModeDeclarationGroupPrototypeRefConditional> getAccessedModeGroups();

    public EList<BswInternalTriggeringPointRefConditional> getActivationPoints();

    public EList<BswModuleEntryRefConditional> getCalledEntries();

    public BswModuleEntry getImplementedEntry();

    public void setImplementedEntry(BswModuleEntry var1);

    public EList<TriggerRefConditional> getIssuedTriggers();

    public EList<ModeDeclarationGroupPrototypeRefConditional> getManagedModeGroups();

    public BswSchedulerNamePrefix getSchedulerNamePrefix();

    public void setSchedulerNamePrefix(BswSchedulerNamePrefix var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

