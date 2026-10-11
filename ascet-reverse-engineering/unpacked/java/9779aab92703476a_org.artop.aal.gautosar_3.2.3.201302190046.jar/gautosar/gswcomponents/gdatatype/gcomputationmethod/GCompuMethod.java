/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gdatatype.gcomputationmethod;

import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;

public interface GCompuMethod
extends GPackageableElement {
    public GCompu gGetCompuPhysToInternal();

    public void gSetCompuPhysToInternal(GCompu var1);

    public GCompu gGetCompuInternalToPhys();

    public void gSetCompuInternalToPhys(GCompu var1);

    public GUnit gGetUnit();

    public void gSetUnit(GUnit var1);
}

