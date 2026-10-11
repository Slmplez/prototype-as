/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.templates;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.templates.Template;
import org.eclipse.jface.text.templates.TemplateBuffer;
import org.eclipse.jface.text.templates.TemplateContextType;
import org.eclipse.jface.text.templates.TemplateException;

public abstract class TemplateContext {
    private final TemplateContextType fContextType;
    private final Map fVariables = new HashMap();
    private boolean fReadOnly;

    protected TemplateContext(TemplateContextType contextType) {
        this.fContextType = contextType;
        this.fReadOnly = true;
    }

    public TemplateContextType getContextType() {
        return this.fContextType;
    }

    public void setReadOnly(boolean readOnly) {
        this.fReadOnly = readOnly;
    }

    public boolean isReadOnly() {
        return this.fReadOnly;
    }

    public void setVariable(String name, String value) {
        this.fVariables.put(name, value);
    }

    public String getVariable(String name) {
        return (String)this.fVariables.get(name);
    }

    public abstract TemplateBuffer evaluate(Template var1) throws BadLocationException, TemplateException;

    public abstract boolean canEvaluate(Template var1);
}

