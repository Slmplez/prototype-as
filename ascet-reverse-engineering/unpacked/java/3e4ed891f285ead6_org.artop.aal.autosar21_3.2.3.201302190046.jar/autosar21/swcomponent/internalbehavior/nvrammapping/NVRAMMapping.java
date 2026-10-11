/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.internalbehavior.nvrammapping;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerInstanceMemory;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;

public interface NVRAMMapping
extends Identifiable {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);

    public CalprmElementPrototype getDefaultBlock();

    public void setDefaultBlock(CalprmElementPrototype var1);

    public PerInstanceMemory getMirrorBlock();

    public void setMirrorBlock(PerInstanceMemory var1);

    public PPortPrototype getNVRAMNotification();

    public void setNVRAMNotification(PPortPrototype var1);

    public RPortPrototype getNVRAMPort();

    public void setNVRAMPort(RPortPrototype var1);
}

