/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.composition.instancerefs;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.composition.DelegationSwConnector;

public interface PortInCompositionTypeInstanceRef
extends AtpInstanceRef {
    public DelegationSwConnector getDelegationSwConnector();

    public void setDelegationSwConnector(DelegationSwConnector var1);
}

