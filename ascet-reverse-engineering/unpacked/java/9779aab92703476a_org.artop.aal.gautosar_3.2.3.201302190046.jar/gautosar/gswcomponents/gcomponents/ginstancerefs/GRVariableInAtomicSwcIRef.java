/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs;

import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;

public interface GRVariableInAtomicSwcIRef
extends GVariableInAtomicSwcIRef {
    public GRPortPrototype gGetContextRPort();

    public void gSetContextRPort(GRPortPrototype var1);

    public GVariableDataPrototype gGetTargetDataElement();

    public void gSetTargetDataElement(GVariableDataPrototype var1);
}

