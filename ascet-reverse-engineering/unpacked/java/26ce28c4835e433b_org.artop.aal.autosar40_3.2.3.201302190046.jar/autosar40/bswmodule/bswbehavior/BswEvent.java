/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar40.bswmodule.bswoverview.instancerefs.ModeInBswModuleDescriptionInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswEvent
extends Identifiable {
    public BswInternalBehavior getBswInternalBehavior();

    public void setBswInternalBehavior(BswInternalBehavior var1);

    public EList<ModeInBswModuleDescriptionInstanceRef> getDisabledInModes();

    public BswSchedulableEntity getStartsOnEvent();

    public void setStartsOnEvent(BswSchedulableEntity var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

