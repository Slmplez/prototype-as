/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gswcinternalbehavior.gdataelements;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;

public interface GParameterAccess
extends GIdentifiable {
    public GParameterInAtomicSwcIRef gGetParameter();

    public void gSetParameter(GParameterInAtomicSwcIRef var1);
}

