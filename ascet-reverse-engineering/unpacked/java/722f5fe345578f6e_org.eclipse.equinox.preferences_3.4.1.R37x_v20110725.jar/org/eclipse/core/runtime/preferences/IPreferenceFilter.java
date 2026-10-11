/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.preferences;

import java.util.Map;

public interface IPreferenceFilter {
    public String[] getScopes();

    public Map getMapping(String var1);
}

