/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping;

import autosar3x.commonstructure.serviceneeds.NvBlockNeeds;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcNvBlockNeeds
extends NvBlockNeeds {
    public EList<RoleBasedPPortAssignment> getCallBackPorts();

    public CalprmElementPrototype getDefaultBlock();

    public void setDefaultBlock(CalprmElementPrototype var1);

    public PerInstanceMemory getMirrorBlock();

    public void setMirrorBlock(PerInstanceMemory var1);

    public EList<RoleBasedRPortAssignment> getServiceCallPorts();
}

