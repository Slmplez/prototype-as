/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.texteditor.spelling;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.internal.texteditor.spelling.EmptySpellingPreferenceBlock;
import org.eclipse.ui.texteditor.spelling.ISpellingEngine;
import org.eclipse.ui.texteditor.spelling.ISpellingPreferenceBlock;
import org.osgi.framework.Bundle;

public class SpellingEngineDescriptor {
    private static final String LABEL_ATTRIBUTE = "label";
    private static final String CLASS_ATTRIBUTE = "class";
    private static final String ID_ATTRIBUTE = "id";
    private static final String DEFAULT_ATTRIBUTE = "default";
    private static final String PREFERENCES_CLASS_ATTRIBUTE = "preferencesClass";
    private IConfigurationElement fConfiguration;
    private String fLabel;
    private String fId;
    private Boolean fDefault;
    private Bundle fBundle;
    private Boolean fHasPreferences;

    public SpellingEngineDescriptor(IConfigurationElement element) {
        Assert.isLegal((element != null ? 1 : 0) != 0);
        this.fConfiguration = element;
    }

    public String getLabel() {
        if (this.fLabel == null) {
            this.fLabel = this.fConfiguration.getAttribute(LABEL_ATTRIBUTE);
            Assert.isNotNull((Object)this.fLabel);
        }
        return this.fLabel;
    }

    public String getId() {
        if (this.fId == null) {
            this.fId = this.fConfiguration.getAttribute(ID_ATTRIBUTE);
            Assert.isNotNull((Object)this.fId);
        }
        return this.fId;
    }

    public ISpellingEngine createEngine() throws CoreException {
        return (ISpellingEngine)this.fConfiguration.createExecutableExtension(CLASS_ATTRIBUTE);
    }

    private boolean hasPreferences() {
        if (this.fHasPreferences == null) {
            this.fHasPreferences = this.fConfiguration.getAttribute(PREFERENCES_CLASS_ATTRIBUTE) == null ? Boolean.FALSE : Boolean.TRUE;
        }
        return this.fHasPreferences;
    }

    public ISpellingPreferenceBlock createPreferences() throws CoreException {
        if (this.hasPreferences()) {
            return (ISpellingPreferenceBlock)this.fConfiguration.createExecutableExtension(PREFERENCES_CLASS_ATTRIBUTE);
        }
        return new EmptySpellingPreferenceBlock();
    }

    public boolean isPluginLoaded() {
        if (this.fBundle == null) {
            this.fBundle = Platform.getBundle((String)this.fConfiguration.getContributor().getName());
        }
        return this.fBundle != null && this.fBundle.getState() == 32;
    }

    public boolean isDefault() {
        if (this.fDefault == null) {
            String def = this.fConfiguration.getAttribute(DEFAULT_ATTRIBUTE);
            this.fDefault = "true".equalsIgnoreCase(def) ? Boolean.TRUE : Boolean.FALSE;
        }
        return this.fDefault;
    }
}

