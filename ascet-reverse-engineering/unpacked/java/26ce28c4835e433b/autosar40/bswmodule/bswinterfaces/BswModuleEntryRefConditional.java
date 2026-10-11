/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswinterfaces;

import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface BswModuleEntryRefConditional
extends ARObject {
    public BswModuleEntry getBswModuleEntry();

    public void setBswModuleEntry(BswModuleEntry var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

