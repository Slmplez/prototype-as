/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.DocumentProcessor;

public abstract class ProcessorHandler {
    public static final short UNHANDLED = 0;
    public static final short HANDLED_CONTINUE = 1;
    public static final short HANDLED_SKIP = 2;
    private DocumentProcessor processor;

    public abstract short handle(UAElement var1, String var2);

    public DocumentProcessor getProcessor() {
        return this.processor;
    }

    public void setProcessor(DocumentProcessor processor) {
        this.processor = processor;
    }
}

