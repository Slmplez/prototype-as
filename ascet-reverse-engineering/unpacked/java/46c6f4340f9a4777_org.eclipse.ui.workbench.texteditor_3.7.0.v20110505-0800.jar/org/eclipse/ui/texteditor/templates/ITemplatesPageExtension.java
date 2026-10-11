/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.templates.persistence.TemplatePersistenceData
 *  org.eclipse.jface.text.templates.persistence.TemplateStore
 */
package org.eclipse.ui.texteditor.templates;

import org.eclipse.jface.text.templates.persistence.TemplatePersistenceData;
import org.eclipse.jface.text.templates.persistence.TemplateStore;

public interface ITemplatesPageExtension {
    public TemplateStore getTemplateStore();

    public TemplatePersistenceData[] getSelectedTemplates();
}

