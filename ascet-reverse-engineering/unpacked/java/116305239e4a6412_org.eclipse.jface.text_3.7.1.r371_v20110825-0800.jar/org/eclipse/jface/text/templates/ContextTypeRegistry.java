/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.templates.TemplateContextType
 */
package org.eclipse.jface.text.templates;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.jface.text.templates.TemplateContextType;

public class ContextTypeRegistry {
    private final Map fContextTypes = new LinkedHashMap();

    public void addContextType(TemplateContextType contextType) {
        this.fContextTypes.put(contextType.getId(), contextType);
    }

    public TemplateContextType getContextType(String id) {
        return (TemplateContextType)this.fContextTypes.get(id);
    }

    public Iterator contextTypes() {
        return this.fContextTypes.values().iterator();
    }
}

