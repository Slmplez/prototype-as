/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcommunication;

import gautosar.gswcomponents.gcommunication.GRPortComSpec;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;

public interface GClientComSpec
extends GRPortComSpec {
    public GClientServerOperation gGetOperation();

    public void gSetOperation(GClientServerOperation var1);
}

