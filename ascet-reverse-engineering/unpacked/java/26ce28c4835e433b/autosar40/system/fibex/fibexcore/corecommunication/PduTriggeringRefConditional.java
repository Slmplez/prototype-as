/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggering;

public interface PduTriggeringRefConditional
extends ARObject {
    public PduTriggering getPduTriggering();

    public void setPduTriggering(PduTriggering var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

