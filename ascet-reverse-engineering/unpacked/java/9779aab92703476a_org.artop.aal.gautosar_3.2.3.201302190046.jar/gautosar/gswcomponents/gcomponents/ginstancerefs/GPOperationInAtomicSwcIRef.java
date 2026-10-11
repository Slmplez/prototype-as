/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs;

import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;

public interface GPOperationInAtomicSwcIRef
extends GOperationInAtomicSwcIRef {
    public GPPortPrototype gGetContextPPort();

    public void gSetContextPPort(GPPortPrototype var1);

    public GClientServerOperation gGetTargetProvidedOperation();

    public void gSetTargetProvidedOperation(GClientServerOperation var1);
}

