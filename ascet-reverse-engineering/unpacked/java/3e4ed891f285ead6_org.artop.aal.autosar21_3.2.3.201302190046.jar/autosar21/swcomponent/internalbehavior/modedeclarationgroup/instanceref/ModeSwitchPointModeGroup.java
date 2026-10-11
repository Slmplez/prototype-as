/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef
 */
package autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;
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

