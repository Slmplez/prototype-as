/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.runtime.preferences;

import java.io.InputStream;
import java.io.OutputStream;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IExportedPreferences;
import org.eclipse.core.runtime.preferences.IPreferenceFilter;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.osgi.service.prefs.Preferences;

public interface IPreferencesService {
    public String get(String var1, String var2, Preferences[] var3);

    public boolean getBoolean(String var1, String var2, boolean var3, IScopeContext[] var4);

    public byte[] getByteArray(String var1, String var2, byte[] var3, IScopeContext[] var4);

    public double getDouble(String var1, String var2, double var3, IScopeContext[] var5);

    public float getFloat(String var1, String var2, float var3, IScopeContext[] var4);

    public int getInt(String var1, String var2, int var3, IScopeContext[] var4);

    public long getLong(String var1, String var2, long var3, IScopeContext[] var5);

    public String getString(String var1, String var2, String var3, IScopeContext[] var4);

    public IEclipsePreferences getRootNode();

    public IStatus exportPreferences(IEclipsePreferences var1, OutputStream var2, String[] var3) throws CoreException;

    public IStatus importPreferences(InputStream var1) throws CoreException;

    public IStatus applyPreferences(IExportedPreferences var1) throws CoreException;

    public IExportedPreferences readPreferences(InputStream var1) throws CoreException;

    public String[] getDefaultLookupOrder(String var1, String var2);

    public String[] getLookupOrder(String var1, String var2);

    public void setDefaultLookupOrder(String var1, String var2, String[] var3);

    public void exportPreferences(IEclipsePreferences var1, IPreferenceFilter[] var2, OutputStream var3) throws CoreException;

    public IPreferenceFilter[] matches(IEclipsePreferences var1, IPreferenceFilter[] var2) throws CoreException;

    public void applyPreferences(IEclipsePreferences var1, IPreferenceFilter[] var2) throws CoreException;
}

