/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.instancerefs.ModeGroupInAtomicSwcInstanceRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef;

public interface RModeGroupInAtomicSWCInstanceRef
extends ModeGroupInAtomicSwcInstanceRef,
GRModeGroupInAtomicSwcIRef {
    public RPortPrototype getContextRPort();

    public void setContextRPort(RPortPrototype var1);

    public ModeDeclarationGroupPrototype getTargetModeGroup();

    public void setTargetModeGroup(ModeDeclarationGroupPrototype var1);

    public AtomicSwComponentType getBase();
}

