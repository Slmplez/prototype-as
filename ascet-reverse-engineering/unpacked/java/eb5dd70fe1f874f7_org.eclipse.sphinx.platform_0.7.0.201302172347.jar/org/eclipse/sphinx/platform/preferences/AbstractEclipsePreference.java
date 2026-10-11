/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.sphinx.platform.preferences;

import org.eclipse.core.runtime.Assert;
import org.eclipse.sphinx.platform.preferences.IEclipsePreference;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractEclipsePreference<T>
implements IEclipsePreference<T> {
    protected final String qualifier;
    protected final String key;
    protected final String defaultValueAsString;

    public AbstractEclipsePreference(String qualifier, String key, String defaultValueAsString) {
        Assert.isNotNull((Object)qualifier);
        Assert.isNotNull((Object)key);
        this.qualifier = qualifier;
        this.key = key;
        this.defaultValueAsString = defaultValueAsString;
    }

    @Override
    public String getQualifier() {
        return this.qualifier;
    }

    @Override
    public String getKey() {
        return this.key;
    }

    @Override
    public String getDefaultValueAsString() {
        return this.defaultValueAsString;
    }
}

