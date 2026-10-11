/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.wizards;

import org.eclipse.ui.internal.wizards.AbstractExtensionWizardRegistry;

public final class NewWizardRegistry
extends AbstractExtensionWizardRegistry {
    private static NewWizardRegistry singleton;

    public static synchronized NewWizardRegistry getInstance() {
        if (singleton == null) {
            singleton = new NewWizardRegistry();
        }
        return singleton;
    }

    private NewWizardRegistry() {
    }

    protected String getExtensionPoint() {
        return "newWizards";
    }

    protected String getPlugin() {
        return "org.eclipse.ui";
    }
}

