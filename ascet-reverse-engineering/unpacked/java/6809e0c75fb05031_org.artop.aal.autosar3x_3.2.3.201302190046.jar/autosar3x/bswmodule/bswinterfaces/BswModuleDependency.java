/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.bswmodule.bswinterfaces;

import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.bswmodule.bswoverview.BswModuleDescription;
import autosar3x.commonstructure.serviceneeds.ServiceNeeds;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswModuleDependency
extends Identifiable {
    public BswModuleDescription getBswModuleDescription();

    public void setBswModuleDescription(BswModuleDescription var1);

    public EList<BswModuleEntry> getExpectedCallbacks();

    public EList<BswModuleEntry> getRequiredEntries();

    public EList<ServiceNeeds> getServiceItems();

    public Integer getTargetModuleId();

    public void setTargetModuleId(Integer var1);

    public void unsetTargetModuleId();

    public boolean isSetTargetModuleId();
}

