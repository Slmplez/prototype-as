/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.RoleBasedBswModuleEntryAssignment;
import autosar40.commonstructure.serviceneeds.RoleBasedDataAssignment;
import autosar40.commonstructure.serviceneeds.ServiceDependency;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswServiceDependency
extends ServiceDependency {
    public BswInternalBehavior getBswInternalBehavior();

    public void setBswInternalBehavior(BswInternalBehavior var1);

    public EList<RoleBasedDataAssignment> getAssignedDatas();

    public EList<RoleBasedBswModuleEntryAssignment> getAssignedEntryRoles();

    public ServiceNeeds getServiceNeeds();

    public void setServiceNeeds(ServiceNeeds var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

