/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.ProcessorHandler;

public class DocumentProcessor {
    private ProcessorHandler[] handlers;

    public DocumentProcessor() {
        this.handlers = new ProcessorHandler[0];
    }

    public DocumentProcessor(ProcessorHandler[] handlers) {
        this.setHandlers(handlers);
    }

    public void process(UAElement element, String id) {
        int i = 0;
        while (i < this.handlers.length) {
            short result = this.handlers[i].handle(element, id);
            if (result == 1) break;
            if (result == 2) {
                return;
            }
            ++i;
        }
        IUAElement[] children = element.getChildren();
        int i2 = 0;
        while (i2 < children.length) {
            this.process((UAElement)children[i2], id);
            ++i2;
        }
    }

    public void setHandlers(ProcessorHandler[] handlers) {
        if (this.handlers != handlers) {
            this.handlers = handlers;
            int i = 0;
            while (i < handlers.length) {
                handlers[i].setProcessor(this);
                ++i;
            }
        }
    }
}

