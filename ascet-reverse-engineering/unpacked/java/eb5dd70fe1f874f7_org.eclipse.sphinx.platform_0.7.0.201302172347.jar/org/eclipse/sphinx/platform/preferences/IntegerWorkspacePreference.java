/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.platform.preferences;

import org.eclipse.sphinx.platform.preferences.AbstractWorkspacePreference;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IntegerWorkspacePreference
extends AbstractWorkspacePreference<Integer> {
    public IntegerWorkspacePreference(String qualifier, String key, Integer defaultValue) {
        super(qualifier, key, Integer.toString(defaultValue));
    }

    @Override
    protected Integer toObject(String valueAsString) {
        return Integer.valueOf(valueAsString);
    }
}

