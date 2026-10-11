/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.platform.preferences;

import org.eclipse.sphinx.platform.preferences.AbstractWorkspacePreference;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StringWorkspacePreference
extends AbstractWorkspacePreference<String> {
    public StringWorkspacePreference(String qualifier, String key, String defaultValue) {
        super(qualifier, key, defaultValue);
    }

    @Override
    protected String toObject(String valueAsString) {
        return valueAsString;
    }
}

