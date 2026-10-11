/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.wizards;

import org.eclipse.ui.internal.wizards.AbstractExtensionWizardRegistry;

public class ExportWizardRegistry
extends AbstractExtensionWizardRegistry {
    private static ExportWizardRegistry singleton;

    public static synchronized ExportWizardRegistry getInstance() {
        if (singleton == null) {
            singleton = new ExportWizardRegistry();
        }
        return singleton;
    }

    protected String getExtensionPoint() {
        return "exportWizards";
    }

    protected String getPlugin() {
        return "org.eclipse.ui";
    }
}

