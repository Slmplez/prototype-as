/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gportinterface;

import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gportinterface.GArgumentDirectionEnum;

public interface GArgumentDataPrototype
extends GAutosarDataPrototype {
    public GArgumentDirectionEnum gGetDirection();

    public void gSetDirection(GArgumentDirectionEnum var1);

    public void gUnsetDirection();

    public boolean gIsSetDirection();
}

