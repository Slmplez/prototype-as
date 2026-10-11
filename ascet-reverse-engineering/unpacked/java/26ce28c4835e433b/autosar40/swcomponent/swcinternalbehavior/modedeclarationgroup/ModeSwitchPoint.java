/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint
 */
package autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.PModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint;

public interface ModeSwitchPoint
extends Identifiable,
GModeSwitchPoint {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public PModeGroupInAtomicSwcInstanceRef getModeGroup();

    public void setModeGroup(PModeGroupInAtomicSwcInstanceRef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

