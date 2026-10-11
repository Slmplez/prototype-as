/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.menus;

import org.eclipse.ui.menus.IContributionRoot;
import org.eclipse.ui.services.IServiceLocator;

public abstract class AbstractContributionFactory {
    private String location = null;
    private String namespace;

    public AbstractContributionFactory(String location, String namespace) {
        this.location = location;
        this.namespace = namespace;
    }

    public String getLocation() {
        return this.location;
    }

    public abstract void createContributionItems(IServiceLocator var1, IContributionRoot var2);

    public String getNamespace() {
        return this.namespace;
    }
}

