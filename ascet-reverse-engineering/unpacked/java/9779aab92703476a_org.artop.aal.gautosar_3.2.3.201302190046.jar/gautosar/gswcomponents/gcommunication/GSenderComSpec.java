/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcommunication;

import gautosar.gswcomponents.gcommunication.GPPortComSpec;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;

public interface GSenderComSpec
extends GPPortComSpec {
    public GVariableDataPrototype gGetDataElement();

    public void gSetDataElement(GVariableDataPrototype var1);
}

