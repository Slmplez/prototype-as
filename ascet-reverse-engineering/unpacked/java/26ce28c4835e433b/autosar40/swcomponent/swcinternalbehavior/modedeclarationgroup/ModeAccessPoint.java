/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.ModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;

public interface ModeAccessPoint
extends ARObject {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public ModeGroupInAtomicSwcInstanceRef getModeGroup();

    public void setModeGroup(ModeGroupInAtomicSwcInstanceRef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

