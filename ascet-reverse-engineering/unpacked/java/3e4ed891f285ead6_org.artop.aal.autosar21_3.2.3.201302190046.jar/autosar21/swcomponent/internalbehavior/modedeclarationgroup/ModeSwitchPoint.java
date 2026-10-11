/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint
 */
package autosar21.swcomponent.internalbehavior.modedeclarationgroup;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.ModeSwitchPointModeGroup;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint;

public interface ModeSwitchPoint
extends Identifiable,
GModeSwitchPoint {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public ModeSwitchPointModeGroup getModeGroup();

    public void setModeGroup(ModeSwitchPointModeGroup var1);
}

