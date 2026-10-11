/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.decorators;

import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.decorators.FullDecoratorDefinition;
import org.eclipse.ui.internal.decorators.FullDecoratorRunnable;

class FullImageDecoratorRunnable
extends FullDecoratorRunnable {
    Image result = null;
    Image start;

    FullImageDecoratorRunnable() {
    }

    public void run() throws Exception {
        this.result = this.decorator.decorateImage(this.start, this.element);
    }

    Image getResult() {
        return this.result;
    }

    void setValues(Image initialImage, Object object, FullDecoratorDefinition definition) {
        this.setValues(object, definition);
        this.start = initialImage;
        this.result = null;
    }

    void clearReferences() {
        this.decorator = null;
    }
}

