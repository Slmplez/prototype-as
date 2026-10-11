/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs;

import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;

public interface GPVariableInAtomicSwcIRef
extends GVariableInAtomicSwcIRef {
    public GPPortPrototype gGetContextPPort();

    public void gSetContextPPort(GPPortPrototype var1);

    public GVariableDataPrototype gGetTargetDataElement();

    public void gSetTargetDataElement(GVariableDataPrototype var1);
}

