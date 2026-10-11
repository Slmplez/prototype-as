/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import java.util.StringTokenizer;
import java.util.TreeMap;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.IFileContentManager;
import org.eclipse.team.core.IFileTypeInfo;
import org.eclipse.team.core.IIgnoreInfo;
import org.eclipse.team.core.IProjectSetSerializer;
import org.eclipse.team.core.IStringMapping;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.importing.provisional.IBundleImporter;
import org.eclipse.team.core.mapping.IStorageMerger;
import org.eclipse.team.internal.core.FileContentManager;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.StorageMergerRegistry;
import org.eclipse.team.internal.core.StringMatcher;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.TeamResourceChangeListener;
import org.eclipse.team.internal.core.importing.BundleImporterExtension;

public final class Team {
    private static final String PREF_TEAM_IGNORES = "ignore_files";
    private static final String PREF_TEAM_SEPARATOR = "\n";
    public static final Status OK_STATUS = new Status(0, "org.eclipse.team.core", 0, Messages.ok, null);
    public static final int UNKNOWN = 0;
    public static final int TEXT = 1;
    public static final int BINARY = 2;
    protected static SortedMap globalIgnore;
    protected static SortedMap pluginIgnore;
    private static StringMatcher[] ignoreMatchers;
    private static final FileContentManager fFileContentManager;
    private static List fBundleImporters;

    static {
        fFileContentManager = new FileContentManager();
    }

    public static int getType(IStorage storage) {
        return fFileContentManager.getType(storage);
    }

    public static boolean isIgnoredHint(IResource resource) {
        if (resource.isDerived()) {
            return true;
        }
        return Team.matchesEnabledIgnore(resource);
    }

    public static boolean isIgnoredHint(IFile file) {
        if (file.isDerived()) {
            return true;
        }
        return Team.matchesEnabledIgnore((IResource)file);
    }

    private static boolean matchesEnabledIgnore(IResource resource) {
        StringMatcher[] matchers = Team.getStringMatchers();
        int i = 0;
        while (i < matchers.length) {
            String resourceName = resource.getName();
            if (matchers[i].isPathPattern()) {
                resourceName = resource.getFullPath().toString();
            }
            if (matchers[i].match(resourceName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static boolean isIgnored(IFile file) {
        return Team.matchesEnabledIgnore((IResource)file);
    }

    public static IFileTypeInfo[] getAllTypes() {
        IStringMapping[] mappings = fFileContentManager.getExtensionMappings();
        IFileTypeInfo[] infos = new IFileTypeInfo[mappings.length];
        int i = 0;
        while (i < infos.length) {
            infos[i] = new StringMappingWrapper(mappings[i]);
            ++i;
        }
        return infos;
    }

    public static synchronized IIgnoreInfo[] getAllIgnores() {
        Team.initializeIgnores();
        IIgnoreInfo[] result = Team.getIgnoreInfo(globalIgnore);
        return result;
    }

    private static void initializeIgnores() {
        if (globalIgnore == null) {
            globalIgnore = new TreeMap();
            pluginIgnore = new TreeMap();
            ignoreMatchers = null;
            try {
                Team.readIgnoreState();
            }
            catch (TeamException e) {
                TeamPlugin.log(4, Messages.Team_Error_loading_ignore_state_from_disk_1, (Throwable)((Object)e));
            }
            Team.initializePluginIgnores(pluginIgnore, globalIgnore);
        }
    }

    private static IIgnoreInfo[] getIgnoreInfo(Map gIgnore) {
        IIgnoreInfo[] result = new IIgnoreInfo[gIgnore.size()];
        Iterator e = gIgnore.entrySet().iterator();
        int i = 0;
        while (e.hasNext()) {
            Map.Entry entry = e.next();
            String pattern = (String)entry.getKey();
            boolean enabled = (Boolean)entry.getValue();
            result[i++] = new IIgnoreInfo(pattern, enabled){
                private String p;
                private boolean e1;
                {
                    this.p = string;
                    this.e1 = bl;
                }

                public String getPattern() {
                    return this.p;
                }

                public boolean getEnabled() {
                    return this.e1;
                }
            };
        }
        return result;
    }

    private static synchronized StringMatcher[] getStringMatchers() {
        if (ignoreMatchers == null) {
            IIgnoreInfo[] ignorePatterns = Team.getAllIgnores();
            ArrayList<StringMatcher> matchers = new ArrayList<StringMatcher>(ignorePatterns.length);
            int i = 0;
            while (i < ignorePatterns.length) {
                if (ignorePatterns[i].getEnabled()) {
                    matchers.add(new StringMatcher(ignorePatterns[i].getPattern(), true, false));
                }
                ++i;
            }
            ignoreMatchers = new StringMatcher[matchers.size()];
            ignoreMatchers = matchers.toArray(ignoreMatchers);
        }
        return ignoreMatchers;
    }

    public static void setAllTypes(String[] extensions, int[] types) {
        fFileContentManager.addExtensionMappings(extensions, types);
    }

    public static void setAllIgnores(String[] patterns, boolean[] enabled) {
        Team.initializeIgnores();
        globalIgnore = new TreeMap();
        ignoreMatchers = null;
        int i = 0;
        while (i < patterns.length) {
            globalIgnore.put(patterns[i], enabled[i]);
            ++i;
        }
        StringBuffer buf = new StringBuffer();
        Iterator e = globalIgnore.entrySet().iterator();
        while (e.hasNext()) {
            boolean isCustom;
            Map.Entry entry = e.next();
            String pattern = (String)entry.getKey();
            Boolean value = (Boolean)entry.getValue();
            boolean bl = isCustom = !pluginIgnore.containsKey(pattern) || !((Boolean)pluginIgnore.get(pattern)).equals(value);
            if (!isCustom) continue;
            buf.append(pattern);
            buf.append(PREF_TEAM_SEPARATOR);
            boolean en = value;
            buf.append(en);
            buf.append(PREF_TEAM_SEPARATOR);
        }
        TeamPlugin.getPlugin().getPluginPreferences().setValue(PREF_TEAM_IGNORES, buf.toString());
    }

    private static void initializePluginIgnores(SortedMap pIgnore, SortedMap gIgnore) {
        IExtensionPoint extension;
        TeamPlugin plugin = TeamPlugin.getPlugin();
        if (plugin != null && (extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.team.core", "ignore")) != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String pattern = configElements[j].getAttribute("pattern");
                    if (pattern != null) {
                        boolean enabled;
                        String selected = configElements[j].getAttribute("enabled");
                        if (selected == null) {
                            selected = configElements[j].getAttribute("selected");
                        }
                        boolean bl = enabled = selected != null && selected.equalsIgnoreCase("true");
                        if (!pIgnore.containsKey(pattern)) {
                            pIgnore.put(pattern, enabled);
                        } else if (!Boolean.valueOf(enabled).equals(pIgnore.get(pattern))) {
                            if (TeamPlugin.getPlugin().isDebugging()) {
                                TeamPlugin.log(2, NLS.bind((String)Messages.Team_Conflict_occured_for_ignored_resources_pattern, (Object[])new Object[]{pattern, Team.collectContributingExtentionsToDisplay(pattern, extensions)}), null);
                            }
                            if (!enabled) {
                                pIgnore.put(pattern, Boolean.FALSE);
                            }
                        }
                    }
                    ++j;
                }
                ++i;
            }
            Iterator it = pIgnore.keySet().iterator();
            while (it.hasNext()) {
                Object pattern = it.next();
                if (gIgnore.containsKey(pattern)) continue;
                gIgnore.put(pattern, pIgnore.get(pattern));
            }
        }
    }

    private static String collectContributingExtentionsToDisplay(String patternToFind, IExtension[] extensions) {
        StringBuffer sb = new StringBuffer();
        boolean isFirst = true;
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < configElements.length) {
                if (patternToFind.equals(configElements[j].getAttribute("pattern"))) {
                    if (!isFirst) {
                        sb.append(", ");
                    }
                    isFirst = false;
                    sb.append(extensions[i].getContributor().getName());
                }
                ++j;
            }
            ++i;
        }
        return sb.toString();
    }

    private static void readIgnoreState() throws TeamException {
        if (Team.readBackwardCompatibleIgnoreState()) {
            return;
        }
        Preferences pref = TeamPlugin.getPlugin().getPluginPreferences();
        if (!pref.contains(PREF_TEAM_IGNORES)) {
            return;
        }
        pref.addPropertyChangeListener(new Preferences.IPropertyChangeListener(){

            public void propertyChange(Preferences.PropertyChangeEvent event) {
                if (event.getProperty().equals(Team.PREF_TEAM_IGNORES)) {
                    globalIgnore = null;
                }
            }
        });
        String prefIgnores = pref.getString(PREF_TEAM_IGNORES);
        StringTokenizer tok = new StringTokenizer(prefIgnores, PREF_TEAM_SEPARATOR);
        try {
            while (true) {
                String pattern;
                if ((pattern = tok.nextToken()).length() == 0) {
                    return;
                }
                String enabled = tok.nextToken();
                globalIgnore.put(pattern, Boolean.valueOf(enabled));
            }
        }
        catch (NoSuchElementException noSuchElementException) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static boolean readBackwardCompatibleIgnoreState() throws TeamException {
        String GLOBALIGNORE_FILE = ".globalIgnores";
        IPath pluginStateLocation = TeamPlugin.getPlugin().getStateLocation().append(GLOBALIGNORE_FILE);
        File f = pluginStateLocation.toFile();
        if (!f.exists()) {
            return false;
        }
        try {
            DataInputStream dis = new DataInputStream(new FileInputStream(f));
            try {
                int ignoreCount = 0;
                try {
                    ignoreCount = dis.readInt();
                }
                catch (EOFException eOFException) {
                    dis.close();
                    return false;
                }
                int i = 0;
                while (i < ignoreCount) {
                    String pattern = dis.readUTF();
                    boolean enabled = dis.readBoolean();
                    globalIgnore.put(pattern, enabled);
                    ++i;
                }
            }
            finally {
                dis.close();
            }
            f.delete();
            return true;
        }
        catch (FileNotFoundException fileNotFoundException) {
            return true;
        }
        catch (IOException ex) {
            throw new TeamException((IStatus)new Status(4, "org.eclipse.team.core", 0, Messages.Team_readError, (Throwable)ex));
        }
    }

    public static void startup() {
        ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)new TeamResourceChangeListener(), 1);
    }

    public static void shutdown() {
        TeamPlugin.getPlugin().savePluginPreferences();
    }

    public static IProjectSetSerializer getProjectSetSerializer(String id) {
        IExtensionPoint extension;
        TeamPlugin plugin = TeamPlugin.getPlugin();
        if (plugin != null && (extension = RegistryFactory.getRegistry().getExtensionPoint("org.eclipse.team.core", "projectSets")) != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String extensionId = configElements[j].getAttribute("id");
                    if (extensionId != null && extensionId.equals(id)) {
                        try {
                            return (IProjectSetSerializer)configElements[j].createExecutableExtension("class");
                        }
                        catch (CoreException e) {
                            TeamPlugin.log(e);
                            return null;
                        }
                    }
                    ++j;
                }
                ++i;
            }
        }
        return null;
    }

    public static IIgnoreInfo[] getDefaultIgnores() {
        TreeMap gIgnore = new TreeMap();
        TreeMap pIgnore = new TreeMap();
        Team.initializePluginIgnores(pIgnore, gIgnore);
        return Team.getIgnoreInfo(gIgnore);
    }

    public static IFileTypeInfo[] getDefaultTypes() {
        return Team.asFileTypeInfo(Team.getFileContentManager().getDefaultExtensionMappings());
    }

    private static IFileTypeInfo[] asFileTypeInfo(IStringMapping[] mappings) {
        IFileTypeInfo[] infos = new IFileTypeInfo[mappings.length];
        int i = 0;
        while (i < infos.length) {
            infos[i] = new StringMappingWrapper(mappings[i]);
            ++i;
        }
        return infos;
    }

    public static IFileContentManager getFileContentManager() {
        return fFileContentManager;
    }

    public static IStorageMerger createMerger(IContentType type) {
        return StorageMergerRegistry.getInstance().createStreamMerger(type);
    }

    public static IStorageMerger createMerger(String extension) {
        return StorageMergerRegistry.getInstance().createStreamMerger(extension);
    }

    public IStorageMerger createStorageMerger(IContentType type) {
        return Team.createMerger(type);
    }

    public IStorageMerger createStorageMerger(String extension) {
        return Team.createMerger(extension);
    }

    public static synchronized IBundleImporter[] getBundleImporters() {
        if (fBundleImporters == null) {
            fBundleImporters = new ArrayList();
            IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.team.core.bundleImporters");
            if (point != null) {
                IConfigurationElement[] infos = point.getConfigurationElements();
                int i = 0;
                while (i < infos.length) {
                    fBundleImporters.add(new BundleImporterExtension(infos[i]));
                    ++i;
                }
            }
        }
        return fBundleImporters.toArray(new IBundleImporter[fBundleImporters.size()]);
    }

    private static class StringMappingWrapper
    implements IFileTypeInfo {
        private final IStringMapping fMapping;

        public StringMappingWrapper(IStringMapping mapping) {
            this.fMapping = mapping;
        }

        public String getExtension() {
            return this.fMapping.getString();
        }

        public int getType() {
            return this.fMapping.getType();
        }
    }
}

