/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.wizards;

import org.eclipse.ui.internal.wizards.AbstractExtensionWizardRegistry;

public class ImportWizardRegistry
extends AbstractExtensionWizardRegistry {
    private static ImportWizardRegistry singleton;

    public static synchronized ImportWizardRegistry getInstance() {
        if (singleton == null) {
            singleton = new ImportWizardRegistry();
        }
        return singleton;
    }

    protected String getExtensionPoint() {
        return "importWizards";
    }

    protected String getPlugin() {
        return "org.eclipse.ui";
    }
}

