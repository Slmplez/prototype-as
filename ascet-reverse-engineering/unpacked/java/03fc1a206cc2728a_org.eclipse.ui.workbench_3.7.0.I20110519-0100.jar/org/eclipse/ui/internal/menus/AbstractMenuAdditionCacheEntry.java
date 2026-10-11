/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.menus.AbstractContributionFactory;

public abstract class AbstractMenuAdditionCacheEntry
extends AbstractContributionFactory {
    private IConfigurationElement additionElement;

    public AbstractMenuAdditionCacheEntry(String location, String namespace, IConfigurationElement element) {
        super(location, namespace);
        this.additionElement = element;
    }

    public final IConfigurationElement getConfigElement() {
        return this.additionElement;
    }
}

