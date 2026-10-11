/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.modedeclaration.ModeDeclaration;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.ModeSwitchEvent;
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

