/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef
 */
package autosar21.swcomponent.internalbehavior.rteevents.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.internalbehavior.rteevents.ModeSwitchEvent;
import autosar21.swcomponent.modedeclaration.ModeDeclaration;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;

public interface ModeSwitchEventMode
extends ARObject,
GRModeInAtomicSwcIRef {
    public ModeSwitchEvent getModeSwitchEvent();

    public void setModeSwitchEvent(ModeSwitchEvent var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public ModeDeclarationGroupPrototype getModeDeclarationGroupPrototype();

    public void setModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype var1);

    public ModeDeclaration getModeDeclaration();

    public void setModeDeclaration(ModeDeclaration var1);
}

