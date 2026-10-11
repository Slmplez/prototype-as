/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.jface.text.formatter;

import java.util.Map;
import org.eclipse.jface.preference.IPreferenceStore;

public interface IFormattingContext {
    public void dispose();

    public String[] getPreferenceKeys();

    public Object getProperty(Object var1);

    public boolean isBooleanPreference(String var1);

    public boolean isDoublePreference(String var1);

    public boolean isFloatPreference(String var1);

    public boolean isIntegerPreference(String var1);

    public boolean isLongPreference(String var1);

    public boolean isStringPreference(String var1);

    public void mapToStore(Map var1, IPreferenceStore var2);

    public void setProperty(Object var1, Object var2);

    public void storeToMap(IPreferenceStore var1, Map var2, boolean var3);
}

