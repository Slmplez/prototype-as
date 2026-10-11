/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.bswmodule.bswbehavior;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.bswmodule.bswbehavior.BswSporadicEvent;
import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswModuleEntity
extends ExecutableEntity {
    public BswBehavior getBswBehavior();

    public void setBswBehavior(BswBehavior var1);

    public EList<BswSporadicEvent> getActivationPoints();

    public EList<BswModuleEntry> getCalledEntries();

    public EList<ExclusiveArea> getCanEnterExclusiveAreas();

    public EList<BswSporadicEvent> getCancellationPoints();

    public BswModuleEntry getImplementedEntry();

    public void setImplementedEntry(BswModuleEntry var1);
}

