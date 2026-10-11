/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xml.serializer.utils;

import org.apache.xml.serializer.utils.Messages;

public final class Utils {
    public static final Messages messages = new Messages((class$org$apache$xml$serializer$utils$SerializerMessages == null ? (class$org$apache$xml$serializer$utils$SerializerMessages = Utils.class$("org.apache.xml.serializer.utils.SerializerMessages")) : class$org$apache$xml$serializer$utils$SerializerMessages).getName());
    static /* synthetic */ Class class$org$apache$xml$serializer$utils$SerializerMessages;

    static /* synthetic */ Class class$(String x0) {
        try {
            return Class.forName(x0);
        }
        catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }
}

