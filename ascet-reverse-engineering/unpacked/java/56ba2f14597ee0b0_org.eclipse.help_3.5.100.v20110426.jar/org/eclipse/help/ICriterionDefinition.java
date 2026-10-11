/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.ICriterionValueDefinition;
import org.eclipse.help.IUAElement;

public interface ICriterionDefinition
extends IUAElement {
    public String getId();

    public String getName();

    public ICriterionValueDefinition[] getCriterionValueDefinitions();
}

