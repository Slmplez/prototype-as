/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.internal.adaptor.PluginParser;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPluginInfo {
    public Map<String, List<String>> getLibraries();

    public String[] getLibrariesName();

    public ArrayList<PluginParser.Prerequisite> getRequires();

    public String getMasterId();

    public String getMasterVersion();

    public String getMasterMatch();

    public String getPluginClass();

    public String getUniqueId();

    public String getVersion();

    public boolean isFragment();

    public Set<String> getPackageFilters();

    public String getPluginName();

    public String getProviderName();

    public boolean isSingleton();

    public boolean hasExtensionExtensionPoints();

    public String validateForm();
}

