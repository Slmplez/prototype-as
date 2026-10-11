/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcommunication;

import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;

public interface GNonqueuedReceiverComSpec
extends GReceiverComSpec {
    public GValueSpecification gGetInitValue();

    public void gSetInitValue(GValueSpecification var1);
}

