/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcommunication;

import gautosar.gswcomponents.gcommunication.GRPortComSpec;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;

public interface GReceiverComSpec
extends GRPortComSpec {
    public GVariableDataPrototype gGetDataElement();

    public void gSetDataElement(GVariableDataPrototype var1);
}

