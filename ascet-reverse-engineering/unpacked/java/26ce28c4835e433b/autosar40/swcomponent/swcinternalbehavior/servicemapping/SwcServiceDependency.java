/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior.servicemapping;

import autosar40.commonstructure.serviceneeds.RoleBasedDataAssignment;
import autosar40.commonstructure.serviceneeds.ServiceDependency;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPortAssignment;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcServiceDependency
extends AtpStructureElement,
ServiceDependency {
    public SwcInternalBehavior getSwcInternalBehavior();

    public void setSwcInternalBehavior(SwcInternalBehavior var1);

    public EList<RoleBasedDataAssignment> getAssignedDatas();

    public EList<RoleBasedPortAssignment> getAssignedPorts();

    public PortGroup getRepresentedPortGroup();

    public void setRepresentedPortGroup(PortGroup var1);

    public ServiceNeeds getServiceNeeds();

    public void setServiceNeeds(ServiceNeeds var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

