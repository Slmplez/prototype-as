/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.decorators;

import org.eclipse.ui.internal.decorators.FullDecoratorDefinition;
import org.eclipse.ui.internal.decorators.FullDecoratorRunnable;

public class FullTextDecoratorRunnable
extends FullDecoratorRunnable {
    String result = null;
    String start;

    public void run() throws Exception {
        this.result = this.decorator.decorateText(this.start, this.element);
    }

    String getResult() {
        return this.result;
    }

    void setValues(String initialString, Object object, FullDecoratorDefinition definition) {
        this.setValues(object, definition);
        this.start = initialString;
        this.result = null;
    }

    void clearReferences() {
        this.decorator = null;
    }
}

