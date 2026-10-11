/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gswcinternalbehavior.gdataelements;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;

public interface GVariableAccess
extends GIdentifiable {
    public GVariableInAtomicSwcIRef gGetDataElement();

    public void gSetDataElement(GVariableInAtomicSwcIRef var1);
}

