/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.importer.a2a.logger;

public enum LogMsgKind {
    Fatal("[FATAL ERROR]"),
    Error("[ERROR]"),
    Warning("[WARNING]"),
    Info("[INFO]");

    private String decoText;

    private LogMsgKind(String text) {
        this.decoText = text;
    }

    public String getString() {
        return this.decoText;
    }
}

