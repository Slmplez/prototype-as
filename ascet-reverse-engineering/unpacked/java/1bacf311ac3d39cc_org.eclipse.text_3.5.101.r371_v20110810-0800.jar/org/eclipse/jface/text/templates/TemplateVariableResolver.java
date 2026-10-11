/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.templates;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.templates.TemplateContext;
import org.eclipse.jface.text.templates.TemplateVariable;

public class TemplateVariableResolver {
    private String fType = null;
    private String fDescription = null;

    protected TemplateVariableResolver(String type, String description) {
        this.setType(type);
        this.setDescription(description);
    }

    public TemplateVariableResolver() {
    }

    public String getType() {
        return this.fType;
    }

    public String getDescription() {
        return this.fDescription;
    }

    protected String resolve(TemplateContext context) {
        return context.getVariable(this.getType());
    }

    protected String[] resolveAll(TemplateContext context) {
        String binding = this.resolve(context);
        if (binding == null) {
            return new String[0];
        }
        return new String[]{binding};
    }

    public void resolve(TemplateVariable variable, TemplateContext context) {
        String[] bindings = this.resolveAll(context);
        if (bindings.length != 0) {
            variable.setValues(bindings);
        }
        if (bindings.length > 1) {
            variable.setUnambiguous(false);
        } else {
            variable.setUnambiguous(this.isUnambiguous(context));
        }
        variable.setResolved(true);
    }

    protected boolean isUnambiguous(TemplateContext context) {
        return false;
    }

    public final void setDescription(String description) {
        Assert.isNotNull((Object)description);
        Assert.isTrue((this.fDescription == null ? 1 : 0) != 0);
        this.fDescription = description;
    }

    public final void setType(String type) {
        Assert.isNotNull((Object)type);
        Assert.isTrue((this.fType == null ? 1 : 0) != 0);
        this.fType = type;
    }
}

