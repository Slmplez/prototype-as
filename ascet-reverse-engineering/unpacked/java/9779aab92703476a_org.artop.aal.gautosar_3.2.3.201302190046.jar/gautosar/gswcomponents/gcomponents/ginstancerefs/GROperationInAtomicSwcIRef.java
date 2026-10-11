/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs;

import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;

public interface GROperationInAtomicSwcIRef
extends GOperationInAtomicSwcIRef {
    public GRPortPrototype gGetContextRPort();

    public void gSetContextRPort(GRPortPrototype var1);

    public GClientServerOperation gGetTargetRequiredOperation();

    public void gSetTargetRequiredOperation(GClientServerOperation var1);
}

