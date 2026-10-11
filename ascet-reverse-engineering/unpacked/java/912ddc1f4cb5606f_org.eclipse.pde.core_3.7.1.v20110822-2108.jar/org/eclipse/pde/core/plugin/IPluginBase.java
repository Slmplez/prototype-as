/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IIdentifiable;
import org.eclipse.pde.core.plugin.IExtensions;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;

public interface IPluginBase
extends IExtensions,
IIdentifiable {
    public static final String P_PROVIDER = "provider-name";
    public static final String P_VERSION = "version";
    public static final String P_LIBRARY_ORDER = "library_order";
    public static final String P_IMPORT_ORDER = "import_order";
    public static final String P_SCHEMA_VERSION = "schema-version";

    public void add(IPluginLibrary var1) throws CoreException;

    public void add(IPluginImport var1) throws CoreException;

    public void remove(IPluginImport var1) throws CoreException;

    public IPluginLibrary[] getLibraries();

    public IPluginImport[] getImports();

    public String getProviderName();

    public String getVersion();

    public void remove(IPluginLibrary var1) throws CoreException;

    public void setProviderName(String var1) throws CoreException;

    public void setVersion(String var1) throws CoreException;

    public void swap(IPluginLibrary var1, IPluginLibrary var2) throws CoreException;

    public void swap(IPluginImport var1, IPluginImport var2) throws CoreException;

    public String getSchemaVersion();

    public void setSchemaVersion(String var1) throws CoreException;
}

