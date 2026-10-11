/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.templates;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.templates.TemplateVariable;

public final class TemplateBuffer {
    private String fString;
    private TemplateVariable[] fVariables;

    public TemplateBuffer(String string, TemplateVariable[] variables) {
        this.setContent(string, variables);
    }

    public final void setContent(String string, TemplateVariable[] variables) {
        Assert.isNotNull((Object)string);
        Assert.isNotNull((Object)variables);
        this.fString = string;
        this.fVariables = TemplateBuffer.copy(variables);
    }

    private static TemplateVariable[] copy(TemplateVariable[] array) {
        if (array != null) {
            TemplateVariable[] copy = new TemplateVariable[array.length];
            System.arraycopy(array, 0, copy, 0, array.length);
            return copy;
        }
        return null;
    }

    public final String getString() {
        return this.fString;
    }

    public final TemplateVariable[] getVariables() {
        return this.fVariables;
    }
}

