/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.StringTokenizer;
import java.util.Vector;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.AbstractModelManager;
import org.eclipse.pde.internal.core.ExternalLibraryCache;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEPreferencesManager;
import org.eclipse.pde.internal.core.PluginPathFinder;
import org.eclipse.pde.internal.core.target.P2TargetUtils;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;

public class ExternalModelManager
extends AbstractModelManager {
    private IPluginModelBase[] fModels = new IPluginModelBase[0];
    private ExternalLibraryCache fLibCache = new ExternalLibraryCache();

    protected IPluginModelBase[] getAllModels() {
        return this.fModels;
    }

    protected void initializeModels(IPluginModelBase[] models) {
        this.fModels = models;
        PDEPreferencesManager pref = PDECore.getDefault().getPreferencesManager();
        String saved = pref.getString("checkedPlugins");
        if (saved.equals("[savedAll]")) {
            int i = 0;
            while (i < this.fModels.length) {
                this.fModels[i].setEnabled(true);
                ++i;
            }
        } else if (!saved.equals("[savedNone]")) {
            String versionString = pref.getString("checkedVersionPlugins");
            HashSet<NameVersionDescriptor> versions = new HashSet<NameVersionDescriptor>();
            HashSet<String> versionIds = new HashSet<String>();
            if (versionString != null && versionString.trim().length() > 0 && !versionString.equals("[savedNone]")) {
                StringTokenizer stok = new StringTokenizer(versionString);
                while (stok.hasMoreTokens()) {
                    NameVersionDescriptor desc = NameVersionDescriptor.fromPortableString(stok.nextToken());
                    versions.add(desc);
                    versionIds.add(desc.getId());
                }
            }
            Vector<String> result = new Vector<String>();
            StringTokenizer stok = new StringTokenizer(saved);
            while (stok.hasMoreTokens()) {
                result.add(stok.nextToken());
            }
            int i = 0;
            while (i < this.fModels.length) {
                String id = this.fModels[i].getPluginBase().getId();
                if (versionIds.contains(id)) {
                    this.fModels[i].setEnabled(!versions.contains(new NameVersionDescriptor(id, this.fModels[i].getPluginBase().getVersion())));
                } else {
                    this.fModels[i].setEnabled(!result.contains(id));
                }
                ++i;
            }
        }
        this.fLibCache.cleanExtractedLibraries(this.fModels);
    }

    public void setModels(IPluginModelBase[] models) {
        this.fModels = models;
        this.fLibCache.cleanExtractedLibraries(this.fModels);
    }

    public URL[] getPluginPaths() {
        String pooled;
        PDEPreferencesManager pref = PDECore.getDefault().getPreferencesManager();
        boolean addPool = false;
        String baseLocation = pref.getString("platform_path");
        URL[] base = null;
        if (P2TargetUtils.BUNDLE_POOL.isPrefixOf((IPath)new Path(baseLocation))) {
            addPool = true;
            base = new URL[]{};
        } else {
            base = PluginPathFinder.getPluginPaths(baseLocation);
        }
        String value = pref.getString("additional_locations");
        StringTokenizer tokenizer = new StringTokenizer(value, ",");
        if (!addPool && tokenizer.countTokens() == 0) {
            return base;
        }
        ArrayList<File> extraLocations = new ArrayList<File>(tokenizer.countTokens());
        while (tokenizer.hasMoreTokens()) {
            String location = tokenizer.nextToken();
            if (P2TargetUtils.BUNDLE_POOL.isPrefixOf((IPath)new Path(location))) {
                addPool = true;
                continue;
            }
            File dir = new File(location, "plugins");
            if (!dir.exists() || !dir.isDirectory()) {
                dir = new File(location);
            }
            extraLocations.add(dir);
        }
        URL[] additional = PluginPathFinder.scanLocations(extraLocations.toArray(new File[extraLocations.size()]));
        URL[] result = this.append(base, additional);
        if (addPool && (pooled = pref.getString("pooled_urls")) != null && pooled.trim().length() > 0 && !"[savedNone]".equals(pooled)) {
            tokenizer = new StringTokenizer(pooled, ",");
            ArrayList<URL> urls = new ArrayList<URL>(tokenizer.countTokens());
            while (tokenizer.hasMoreTokens()) {
                String fileName = tokenizer.nextToken();
                try {
                    urls.add(P2TargetUtils.BUNDLE_POOL.append("plugins").append(fileName).toFile().toURL());
                }
                catch (MalformedURLException e) {
                    PDECore.log(e);
                }
            }
            additional = urls.toArray(new URL[urls.size()]);
            result = this.append(result, additional);
        }
        return result;
    }

    public File[] getExtractedLibraries(IPluginModelBase model) {
        return this.fLibCache.getExtractedLibraries(model);
    }

    private URL[] append(URL[] base, URL[] additional) {
        if (additional.length == 0) {
            return base;
        }
        URL[] result = new URL[base.length + additional.length];
        System.arraycopy(base, 0, result, 0, base.length);
        System.arraycopy(additional, 0, result, base.length, additional.length);
        return result;
    }
}

