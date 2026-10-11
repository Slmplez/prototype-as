/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomposition.ginstancerefs;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;

public interface GRPortInCompositionIRef
extends GARObject {
    public GRPortPrototype gGetTargetRPort();

    public void gSetTargetRPort(GRPortPrototype var1);

    public GSwComponentPrototype gGetContextComponent();

    public void gSetContextComponent(GSwComponentPrototype var1);
}

