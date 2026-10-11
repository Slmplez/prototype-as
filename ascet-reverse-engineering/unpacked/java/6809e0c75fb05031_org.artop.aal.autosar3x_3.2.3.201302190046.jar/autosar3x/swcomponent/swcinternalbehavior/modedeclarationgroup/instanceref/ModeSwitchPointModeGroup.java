/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef
 */
package autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;

public interface ModeSwitchPointModeGroup
extends ARObject,
GPModeGroupInAtomicSwcIRef {
    public ModeSwitchPoint getModeSwitchPoint();

    public void setModeSwitchPoint(ModeSwitchPoint var1);

    public PPortPrototype getPPortPrototype();

    public void setPPortPrototype(PPortPrototype var1);

    public ModeDeclarationGroupPrototype getModeDeclarationGroupPrototype();

    public void setModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype var1);
}

