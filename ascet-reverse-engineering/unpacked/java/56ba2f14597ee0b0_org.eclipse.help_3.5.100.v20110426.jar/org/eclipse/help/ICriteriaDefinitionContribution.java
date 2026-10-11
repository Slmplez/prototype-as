/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.ICriteriaDefinition;

public interface ICriteriaDefinitionContribution {
    public String getId();

    public ICriteriaDefinition getCriteriaDefinition();

    public String getLocale();
}

