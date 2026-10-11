/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping;

import autosar3x.commonstructure.serviceneeds.ComMgrUserNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcComMgrUserNeeds
extends ComMgrUserNeeds {
    public EList<RoleBasedPPortAssignment> getCallbackPorts();

    public EList<RoleBasedRPortAssignment> getServiceCallPorts();
}

