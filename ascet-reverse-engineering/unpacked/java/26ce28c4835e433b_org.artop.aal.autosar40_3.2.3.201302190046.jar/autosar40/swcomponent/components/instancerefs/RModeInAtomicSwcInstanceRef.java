/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.RPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;

public interface RModeInAtomicSwcInstanceRef
extends AtpInstanceRef,
GRModeInAtomicSwcIRef {
    public AtomicSwComponentType getBase();

    public RPortPrototype getContextPort();

    public void setContextPort(RPortPrototype var1);

    public ModeDeclarationGroupPrototype getContextModeDeclarationGroupPrototype();

    public void setContextModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype var1);

    public ModeDeclaration getTargetModeDeclaration();

    public void setTargetModeDeclaration(ModeDeclaration var1);
}

