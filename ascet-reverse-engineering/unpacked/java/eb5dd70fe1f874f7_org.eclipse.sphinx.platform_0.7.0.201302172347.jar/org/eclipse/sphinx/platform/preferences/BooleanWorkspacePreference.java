/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.platform.preferences;

import org.eclipse.sphinx.platform.preferences.AbstractWorkspacePreference;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BooleanWorkspacePreference
extends AbstractWorkspacePreference<Boolean> {
    public BooleanWorkspacePreference(String qualifier, String key, Boolean defaultValue) {
        super(qualifier, key, Boolean.toString(defaultValue));
    }

    @Override
    protected Boolean toObject(String valueAsString) {
        return Boolean.valueOf(valueAsString);
    }
}

