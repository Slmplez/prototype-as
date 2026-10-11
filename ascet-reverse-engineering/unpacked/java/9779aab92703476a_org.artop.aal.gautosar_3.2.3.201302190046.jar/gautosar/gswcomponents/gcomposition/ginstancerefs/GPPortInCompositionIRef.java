/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomposition.ginstancerefs;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;

public interface GPPortInCompositionIRef
extends GARObject {
    public GPPortPrototype gGetTargetPPort();

    public void gSetTargetPPort(GPPortPrototype var1);

    public GSwComponentPrototype gGetContextComponent();

    public void gSetContextComponent(GSwComponentPrototype var1);
}

