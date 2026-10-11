/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomposition;

import gautosar.gswcomponents.gcomposition.GSwConnector;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;

public interface GAssemblySwConnector
extends GSwConnector {
    public GRPortInCompositionIRef gGetRequester();

    public void gSetRequester(GRPortInCompositionIRef var1);

    public GPPortInCompositionIRef gGetProvider();

    public void gSetProvider(GPPortInCompositionIRef var1);
}

