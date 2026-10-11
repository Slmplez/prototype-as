/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.instancerefs.ModeGroupInAtomicSwcInstanceRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;

public interface PModeGroupInAtomicSwcInstanceRef
extends ModeGroupInAtomicSwcInstanceRef,
GPModeGroupInAtomicSwcIRef {
    public PPortPrototype getContextPPort();

    public void setContextPPort(PPortPrototype var1);

    public ModeDeclarationGroupPrototype getTargetModeGroup();

    public void setTargetModeGroup(ModeDeclarationGroupPrototype var1);

    public AtomicSwComponentType getBase();
}

