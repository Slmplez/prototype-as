/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint
 */
package autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.ModeSwitchPointModeGroup;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint;

public interface ModeSwitchPoint
extends Identifiable,
GModeSwitchPoint {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public ModeSwitchPointModeGroup getModeGroup();

    public void setModeGroup(ModeSwitchPointModeGroup var1);
}

