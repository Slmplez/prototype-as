/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.templates.Template
 */
package org.eclipse.jface.text.templates.persistence;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.templates.Template;

public class TemplatePersistenceData {
    private final Template fOriginalTemplate;
    private final String fId;
    private final boolean fOriginalIsEnabled;
    private Template fCustomTemplate = null;
    private boolean fIsDeleted = false;
    private boolean fCustomIsEnabled = true;

    public TemplatePersistenceData(Template template, boolean enabled) {
        this(template, enabled, null);
    }

    public TemplatePersistenceData(Template template, boolean enabled, String id) {
        Assert.isNotNull((Object)template);
        this.fOriginalTemplate = template;
        this.fCustomTemplate = template;
        this.fOriginalIsEnabled = enabled;
        this.fCustomIsEnabled = enabled;
        this.fId = id;
    }

    public String getId() {
        return this.fId;
    }

    public boolean isDeleted() {
        return this.fIsDeleted;
    }

    public void setDeleted(boolean isDeleted) {
        this.fIsDeleted = isDeleted;
    }

    public Template getTemplate() {
        return this.fCustomTemplate;
    }

    public void setTemplate(Template template) {
        this.fCustomTemplate = template;
    }

    public boolean isCustom() {
        return this.fId == null || this.fIsDeleted || this.fOriginalIsEnabled != this.fCustomIsEnabled || !this.fOriginalTemplate.equals((Object)this.fCustomTemplate);
    }

    public boolean isModified() {
        return this.isCustom() && !this.isUserAdded();
    }

    public boolean isUserAdded() {
        return this.fId == null;
    }

    public void revert() {
        this.fCustomTemplate = this.fOriginalTemplate;
        this.fCustomIsEnabled = this.fOriginalIsEnabled;
        this.fIsDeleted = false;
    }

    public boolean isEnabled() {
        return this.fCustomIsEnabled;
    }

    public void setEnabled(boolean isEnabled) {
        this.fCustomIsEnabled = isEnabled;
    }
}

