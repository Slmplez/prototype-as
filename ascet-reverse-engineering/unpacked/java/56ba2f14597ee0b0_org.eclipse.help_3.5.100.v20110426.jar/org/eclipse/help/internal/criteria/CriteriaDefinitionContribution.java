/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import org.eclipse.help.ICriteriaDefinition;
import org.eclipse.help.ICriteriaDefinitionContribution;

public class CriteriaDefinitionContribution
implements ICriteriaDefinitionContribution {
    private String id;
    private ICriteriaDefinition criteriaDefinition;
    private String locale;

    public String getId() {
        return this.id;
    }

    public ICriteriaDefinition getCriteriaDefinition() {
        return this.criteriaDefinition;
    }

    public String getLocale() {
        return this.locale;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setCriteriaDefinition(ICriteriaDefinition criteriaDefinition) {
        this.criteriaDefinition = criteriaDefinition;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }
}

