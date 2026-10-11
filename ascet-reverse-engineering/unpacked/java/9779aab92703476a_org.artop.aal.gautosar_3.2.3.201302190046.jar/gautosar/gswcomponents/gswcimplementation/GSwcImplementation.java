/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gswcimplementation;

import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;

public interface GSwcImplementation
extends GImplementation {
    public GSwcInternalBehavior gGetBehavior();

    public void gSetBehavior(GSwcInternalBehavior var1);
}

