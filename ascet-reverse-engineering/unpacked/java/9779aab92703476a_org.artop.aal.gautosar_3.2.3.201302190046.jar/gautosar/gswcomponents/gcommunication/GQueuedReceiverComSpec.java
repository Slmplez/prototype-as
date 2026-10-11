/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcommunication;

import gautosar.gswcomponents.gcommunication.GReceiverComSpec;

public interface GQueuedReceiverComSpec
extends GReceiverComSpec {
    public Integer gGetQueueLength();

    public void gSetQueueLength(Integer var1);

    public void gUnsetQueueLength();

    public boolean gIsSetQueueLength();
}

