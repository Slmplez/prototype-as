/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.templates;

import org.eclipse.jface.text.templates.TemplateContext;
import org.eclipse.jface.text.templates.TemplateVariableResolver;

public class SimpleTemplateVariableResolver
extends TemplateVariableResolver {
    private String fEvaluationString;

    protected SimpleTemplateVariableResolver(String type, String description) {
        super(type, description);
    }

    public final void setEvaluationString(String evaluationString) {
        this.fEvaluationString = evaluationString;
    }

    protected String resolve(TemplateContext context) {
        return this.fEvaluationString;
    }

    protected boolean isUnambiguous(TemplateContext context) {
        return true;
    }
}

