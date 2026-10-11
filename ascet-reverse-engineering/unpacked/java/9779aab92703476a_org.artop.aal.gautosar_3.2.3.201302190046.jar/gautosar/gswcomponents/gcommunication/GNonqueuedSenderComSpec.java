/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcommunication;

import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gswcomponents.gcommunication.GSenderComSpec;

public interface GNonqueuedSenderComSpec
extends GSenderComSpec {
    public GValueSpecification gGetInitValue();

    public void gSetInitValue(GValueSpecification var1);
}

