/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcommunication;

import gautosar.gswcomponents.gcommunication.GPPortComSpec;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;

public interface GServerComSpec
extends GPPortComSpec {
    public Integer gGetQueueLength();

    public void gSetQueueLength(Integer var1);

    public void gUnsetQueueLength();

    public boolean gIsSetQueueLength();

    public GClientServerOperation gGetOperation();

    public void gSetOperation(GClientServerOperation var1);
}

