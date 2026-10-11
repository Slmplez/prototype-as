/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeAccessPoint;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;

public interface ModeGroupInAtomicSwcInstanceRef
extends AtpInstanceRef,
GModeGroupInAtomicSwcIRef {
    public ModeAccessPoint getModeAccessPoint();

    public void setModeAccessPoint(ModeAccessPoint var1);
}

