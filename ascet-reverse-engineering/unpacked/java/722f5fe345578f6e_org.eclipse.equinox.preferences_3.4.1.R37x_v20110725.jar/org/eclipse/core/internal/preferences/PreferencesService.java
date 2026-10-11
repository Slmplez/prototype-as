/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.PluginVersionIdentifier
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.preferences;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import org.eclipse.core.internal.preferences.Base64;
import org.eclipse.core.internal.preferences.BundleDefaultPreferences;
import org.eclipse.core.internal.preferences.ConfigurationPreferences;
import org.eclipse.core.internal.preferences.DefaultPreferences;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.ExportedPreferences;
import org.eclipse.core.internal.preferences.InstancePreferences;
import org.eclipse.core.internal.preferences.LookupOrder;
import org.eclipse.core.internal.preferences.PreferenceServiceRegistryHelper;
import org.eclipse.core.internal.preferences.PreferencesOSGiUtils;
import org.eclipse.core.internal.preferences.PrefsMessages;
import org.eclipse.core.internal.preferences.RootPreferences;
import org.eclipse.core.internal.preferences.StringPool;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.PluginVersionIdentifier;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IExportedPreferences;
import org.eclipse.core.runtime.preferences.IPreferenceFilter;
import org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.core.runtime.preferences.IScope;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.PreferenceFilterEntry;
import org.eclipse.core.runtime.preferences.PreferenceModifyListener;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class PreferencesService
implements IPreferencesService {
    private static final long STRING_SHARING_INTERVAL = 300000L;
    private static final String MATCH_TYPE_PREFIX = "prefix";
    private static String[] DEFAULT_DEFAULT_LOOKUP_ORDER = new String[]{"instance", "configuration", "default"};
    private static final char EXPORT_ROOT_PREFIX = '!';
    private static final char BUNDLE_VERSION_PREFIX = '@';
    private static final float EXPORT_VERSION = 3.0f;
    private static final String VERSION_KEY = "file_export_version";
    private static final String EMPTY_STRING = "";
    private static PreferencesService instance;
    static final RootPreferences root;
    private static final Map defaultsRegistry;
    private Object registryHelper = null;
    private Map defaultScopes = new HashMap();
    private long lastStringSharing = 0L;

    static {
        root = new RootPreferences();
        defaultsRegistry = Collections.synchronizedMap(new HashMap());
    }

    private static IStatus createStatusError(String message, Exception e) {
        return new Status(4, "org.eclipse.equinox.preferences", 4, message, (Throwable)e);
    }

    public static PreferencesService getDefault() {
        if (instance == null) {
            instance = new PreferencesService();
        }
        return instance;
    }

    static void log(IStatus status) {
        RuntimeLog.log((IStatus)status);
    }

    PreferencesService() {
        this.initializeDefaultScopes();
    }

    public void applyPreferences(IEclipsePreferences tree, IPreferenceFilter[] filters) throws CoreException {
        if (filters == null || filters.length == 0) {
            return;
        }
        try {
            this.internalApply(tree, filters);
            try {
                this.getRootNode().node(tree.absolutePath()).flush();
            }
            catch (BackingStoreException e) {
                throw new CoreException(PreferencesService.createStatusError(PrefsMessages.preferences_saveProblems, e));
            }
            this.lastStringSharing = 0L;
            this.shareStrings();
        }
        catch (BackingStoreException e) {
            throw new CoreException(PreferencesService.createStatusError(PrefsMessages.preferences_applyProblems, e));
        }
    }

    public IStatus applyPreferences(IExportedPreferences preferences) throws CoreException {
        if (preferences == null) {
            throw new IllegalArgumentException();
        }
        if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Applying exported preferences: " + ((ExportedPreferences)preferences).toDeepDebugString());
        }
        MultiStatus result = new MultiStatus("org.eclipse.equinox.preferences", 0, PrefsMessages.preferences_applyProblems, null);
        IEclipsePreferences modifiedNode = this.firePreApplyEvent(preferences);
        IPreferenceNodeVisitor visitor = new IPreferenceNodeVisitor(){

            public boolean visit(IEclipsePreferences node) throws BackingStoreException {
                IEclipsePreferences globalNode = node.parent() == null ? root : (IEclipsePreferences)root.node(node.absolutePath());
                ExportedPreferences epNode = (ExportedPreferences)node;
                boolean removed = false;
                if (epNode.isExportRoot()) {
                    if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                        PrefsMessages.message("Found export root: " + epNode.absolutePath());
                    }
                    globalNode.removeNode();
                    removed = true;
                }
                String[] keys = epNode.properties.keys();
                if (removed) {
                    globalNode = (IEclipsePreferences)root.node(node.absolutePath());
                }
                ArrayList<String> propsToRemove = new ArrayList<String>();
                int i = 0;
                while (i < globalNode.keys().length) {
                    propsToRemove.add(globalNode.keys()[i]);
                    ++i;
                }
                if (keys.length > 0) {
                    String key = null;
                    int i2 = 0;
                    while (i2 < keys.length) {
                        key = keys[i2];
                        propsToRemove.remove(key);
                        key = key.intern();
                        String value = node.get(key, null);
                        if (value != null) {
                            if (EclipsePreferences.DEBUG_PREFERENCE_SET) {
                                PrefsMessages.message("Setting: " + globalNode.absolutePath() + '/' + key + '=' + value);
                            }
                            globalNode.put(key, value);
                        }
                        ++i2;
                    }
                }
                String keyToRemove = null;
                Iterator it = propsToRemove.iterator();
                while (it.hasNext()) {
                    keyToRemove = (String)it.next();
                    keyToRemove = keyToRemove.intern();
                    if (EclipsePreferences.DEBUG_PREFERENCE_SET) {
                        PrefsMessages.message("Removing: " + globalNode.absolutePath() + '/' + keyToRemove);
                    }
                    globalNode.remove(keyToRemove);
                }
                return true;
            }
        };
        try {
            modifiedNode.accept(visitor);
        }
        catch (BackingStoreException e) {
            throw new CoreException(PreferencesService.createStatusError(PrefsMessages.preferences_applyProblems, e));
        }
        try {
            this.getRootNode().node(modifiedNode.absolutePath()).flush();
        }
        catch (BackingStoreException e) {
            throw new CoreException(PreferencesService.createStatusError(PrefsMessages.preferences_saveProblems, e));
        }
        if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Current list of all settings: " + ((EclipsePreferences)this.getRootNode()).toDeepDebugString());
        }
        this.lastStringSharing = 0L;
        this.shareStrings();
        return result;
    }

    private boolean containsKeys(IEclipsePreferences aRoot) throws BackingStoreException {
        final boolean[] result = new boolean[1];
        IPreferenceNodeVisitor visitor = new IPreferenceNodeVisitor(){

            public boolean visit(IEclipsePreferences node) throws BackingStoreException {
                if (node.keys().length != 0) {
                    result[0] = true;
                }
                return !result[0];
            }
        };
        aRoot.accept(visitor);
        return result[0];
    }

    private Properties convertFromLegacy(Properties properties) {
        Properties result = new Properties();
        String prefix = "/instance/";
        Iterator i = properties.keySet().iterator();
        while (i.hasNext()) {
            String key = (String)i.next();
            String value = properties.getProperty(key);
            if (value == null) continue;
            int index = key.indexOf(47);
            if (index == -1) {
                result.put(String.valueOf('@') + key, value);
                result.put(String.valueOf('!') + prefix + key, EMPTY_STRING);
                continue;
            }
            String path = key.substring(0, index);
            key = key.substring(index + 1);
            result.put(EclipsePreferences.encodePath(String.valueOf(prefix) + path, key), value);
        }
        return result;
    }

    private IExportedPreferences convertFromProperties(Properties properties) {
        IExportedPreferences result = ExportedPreferences.newRoot();
        Iterator i = properties.keySet().iterator();
        while (i.hasNext()) {
            ExportedPreferences current;
            String path = (String)i.next();
            String value = properties.getProperty(path);
            if (path.charAt(0) == '!') {
                current = (ExportedPreferences)result.node(path.substring(1));
                current.setExportRoot();
                continue;
            }
            if (path.charAt(0) == '@') {
                current = (ExportedPreferences)result.node("instance").node(path.substring(1));
                current.setVersion(value);
                continue;
            }
            String[] decoded = EclipsePreferences.decodePath(path);
            path = decoded[0] == null ? EMPTY_STRING : decoded[0];
            ExportedPreferences current2 = (ExportedPreferences)result.node(path);
            String key = decoded[1];
            current2.put(key, value);
        }
        if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Converted preferences file to IExportedPreferences tree: " + ((ExportedPreferences)result).toDeepDebugString());
        }
        return result;
    }

    private Properties convertToProperties(IEclipsePreferences preferences, final String[] excludesList) throws BackingStoreException {
        final Properties result = new Properties();
        final int baseLength = preferences.absolutePath().length();
        IPreferenceNodeVisitor visitor = new IPreferenceNodeVisitor(){

            public boolean visit(IEclipsePreferences node) throws BackingStoreException {
                String absolutePath = node.absolutePath();
                String scope = PreferencesService.this.getScope(absolutePath);
                if ("default".equals(scope)) {
                    return false;
                }
                String path = absolutePath.length() <= baseLength ? PreferencesService.EMPTY_STRING : EclipsePreferences.makeRelative(absolutePath.substring(baseLength));
                int i = 0;
                while (i < excludesList.length) {
                    String exclusion = EclipsePreferences.makeRelative(excludesList[i]);
                    if (path.startsWith(exclusion)) {
                        return false;
                    }
                    ++i;
                }
                boolean needToAddVersion = "instance".equals(scope);
                String[] keys = node.keys();
                int i2 = 0;
                while (i2 < keys.length) {
                    String value;
                    String key = keys[i2];
                    boolean ignore = false;
                    int j = 0;
                    while (!ignore && j < excludesList.length) {
                        if (EclipsePreferences.encodePath(path, key).startsWith(EclipsePreferences.makeRelative(excludesList[j]))) {
                            ignore = true;
                        }
                        ++j;
                    }
                    if (!ignore && (value = node.get(key, null)) != null) {
                        if (needToAddVersion) {
                            String version;
                            String bundle = PreferencesService.this.getBundleName(absolutePath);
                            if (bundle != null && (version = PreferencesService.this.getBundleVersion(bundle)) != null) {
                                result.put(String.valueOf('@') + bundle, version);
                            }
                            needToAddVersion = false;
                        }
                        result.put(EclipsePreferences.encodePath(absolutePath, key), value);
                    }
                    ++i2;
                }
                return true;
            }
        };
        preferences.accept(visitor);
        return result;
    }

    void copyFromTo(Preferences source, Preferences destination, String[] keys, int depth) throws BackingStoreException {
        String[] keysToCopy = keys == null ? source.keys() : keys;
        int i = 0;
        while (i < keysToCopy.length) {
            String value = source.get(keysToCopy[i], null);
            if (value != null) {
                destination.put(keysToCopy[i], value);
            }
            ++i;
        }
        if (depth == 0) {
            return;
        }
        String[] children = source.childrenNames();
        int i2 = 0;
        while (i2 < children.length) {
            this.copyFromTo(source.node(children[i2]), destination.node(children[i2]), keys, depth);
            ++i2;
        }
    }

    public WeakReference applyRuntimeDefaults(String name, WeakReference pluginReference) {
        if (this.registryHelper == null) {
            return null;
        }
        return ((PreferenceServiceRegistryHelper)this.registryHelper).applyRuntimeDefaults(name, pluginReference);
    }

    private void initializeDefaultScopes() {
        this.defaultScopes.put("bundle_defaults", new BundleDefaultPreferences());
        root.addChild("bundle_defaults", null);
        this.defaultScopes.put("default", new DefaultPreferences());
        root.addChild("default", null);
        this.defaultScopes.put("instance", new InstancePreferences());
        root.addChild("instance", null);
        this.defaultScopes.put("configuration", new ConfigurationPreferences());
        root.addChild("configuration", null);
    }

    public IEclipsePreferences createNode(String key) {
        IScope scope = (IScope)this.defaultScopes.get(key);
        if (scope == null) {
            if (this.registryHelper == null) {
                return new EclipsePreferences(root, key);
            }
            return ((PreferenceServiceRegistryHelper)this.registryHelper).createNode(root, key);
        }
        return scope.create(root, key);
    }

    public void exportPreferences(IEclipsePreferences node, IPreferenceFilter[] filters, OutputStream stream) throws CoreException {
        if (filters == null || filters.length == 0) {
            return;
        }
        try {
            this.internalExport(node, filters, stream);
        }
        catch (BackingStoreException e) {
            throw new CoreException(PreferencesService.createStatusError(PrefsMessages.preferences_exportProblems, e));
        }
    }

    public IStatus exportPreferences(IEclipsePreferences node, OutputStream output, String[] excludesList) throws CoreException {
        if (node == null || output == null) {
            throw new IllegalArgumentException();
        }
        Properties properties = null;
        if (excludesList == null) {
            excludesList = new String[]{};
        }
        try {
            properties = this.convertToProperties(node, excludesList);
            if (properties.isEmpty()) {
                return Status.OK_STATUS;
            }
            properties.put(VERSION_KEY, Float.toString(3.0f));
            properties.put(String.valueOf('!') + node.absolutePath(), EMPTY_STRING);
        }
        catch (BackingStoreException e) {
            throw new CoreException(PreferencesService.createStatusError(e.getMessage(), e));
        }
        try {
            properties.store(output, null);
        }
        catch (IOException e) {
            throw new CoreException(PreferencesService.createStatusError(PrefsMessages.preferences_exportProblems, e));
        }
        return Status.OK_STATUS;
    }

    private IEclipsePreferences firePreApplyEvent(IEclipsePreferences tree) {
        if (this.registryHelper == null) {
            return tree;
        }
        final IEclipsePreferences[] result = new IEclipsePreferences[]{tree};
        PreferenceModifyListener[] listeners = ((PreferenceServiceRegistryHelper)this.registryHelper).getModifyListeners();
        int i = 0;
        while (i < listeners.length) {
            final PreferenceModifyListener listener = listeners[i];
            ISafeRunnable job = new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    result[0] = listener.preApply(result[0]);
                }
            };
            SafeRunner.run((ISafeRunnable)job);
            ++i;
        }
        return result[0];
    }

    public String get(String key, String defaultValue, Preferences[] nodes) {
        if (nodes == null) {
            return defaultValue;
        }
        int i = 0;
        while (i < nodes.length) {
            String result;
            Preferences node = nodes[i];
            if (node != null && (result = node.get(key, null)) != null) {
                return result;
            }
            ++i;
        }
        return defaultValue;
    }

    public boolean getBoolean(String qualifier, String key, boolean defaultValue, IScopeContext[] scopes) {
        String result = this.get(EclipsePreferences.decodePath(key)[1], null, this.getNodes(qualifier, key, scopes));
        return result == null ? defaultValue : Boolean.valueOf(result);
    }

    String getBundleName(String path) {
        if (path.length() == 0 || path.charAt(0) != '/') {
            return null;
        }
        int first = path.indexOf(47, 1);
        if (first == -1) {
            return null;
        }
        int second = path.indexOf(47, first + 1);
        return second == -1 ? path.substring(first + 1) : path.substring(first + 1, second);
    }

    String getBundleVersion(String bundleName) {
        Object version;
        Bundle bundle = PreferencesOSGiUtils.getDefault().getBundle(bundleName);
        if (bundle != null && (version = bundle.getHeaders(EMPTY_STRING).get("Bundle-Version")) != null && version instanceof String) {
            return (String)version;
        }
        return null;
    }

    public byte[] getByteArray(String qualifier, String key, byte[] defaultValue, IScopeContext[] scopes) {
        String result = this.get(EclipsePreferences.decodePath(key)[1], null, this.getNodes(qualifier, key, scopes));
        return result == null ? defaultValue : Base64.decode(result.getBytes());
    }

    public String[] getDefaultLookupOrder(String qualifier, String key) {
        LookupOrder order = (LookupOrder)defaultsRegistry.get(this.getRegistryKey(qualifier, key));
        return order == null ? null : order.getOrder();
    }

    public double getDouble(String qualifier, String key, double defaultValue, IScopeContext[] scopes) {
        String value = this.get(EclipsePreferences.decodePath(key)[1], null, this.getNodes(qualifier, key, scopes));
        if (value == null) {
            return defaultValue;
        }
        try {
            return Double.parseDouble(value);
        }
        catch (NumberFormatException numberFormatException) {
            return defaultValue;
        }
    }

    public float getFloat(String qualifier, String key, float defaultValue, IScopeContext[] scopes) {
        String value = this.get(EclipsePreferences.decodePath(key)[1], null, this.getNodes(qualifier, key, scopes));
        if (value == null) {
            return defaultValue;
        }
        try {
            return Float.parseFloat(value);
        }
        catch (NumberFormatException numberFormatException) {
            return defaultValue;
        }
    }

    public int getInt(String qualifier, String key, int defaultValue, IScopeContext[] scopes) {
        String value = this.get(EclipsePreferences.decodePath(key)[1], null, this.getNodes(qualifier, key, scopes));
        if (value == null) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(value);
        }
        catch (NumberFormatException numberFormatException) {
            return defaultValue;
        }
    }

    public long getLong(String qualifier, String key, long defaultValue, IScopeContext[] scopes) {
        String value = this.get(EclipsePreferences.decodePath(key)[1], null, this.getNodes(qualifier, key, scopes));
        if (value == null) {
            return defaultValue;
        }
        try {
            return Long.parseLong(value);
        }
        catch (NumberFormatException numberFormatException) {
            return defaultValue;
        }
    }

    public String[] getLookupOrder(String qualifier, String key) {
        String[] order = this.getDefaultLookupOrder(qualifier, key);
        if (order == null && key != null) {
            order = this.getDefaultLookupOrder(qualifier, null);
        }
        if (order == null) {
            order = DEFAULT_DEFAULT_LOOKUP_ORDER;
        }
        return order;
    }

    private Preferences[] getNodes(final String qualifier, String key, final IScopeContext[] contexts) {
        String[] order = this.getLookupOrder(qualifier, key);
        final String childPath = EclipsePreferences.makeRelative(EclipsePreferences.decodePath(key)[0]);
        final ArrayList result = new ArrayList();
        int i = 0;
        while (i < order.length) {
            final String scopeString = order[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void run() throws Exception {
                    boolean found = false;
                    int j = 0;
                    while (contexts != null && j < contexts.length) {
                        Preferences node;
                        IScopeContext context = contexts[j];
                        if (context != null && context.getName().equals(scopeString) && (node = context.getNode(qualifier)) != null) {
                            found = true;
                            if (childPath != null) {
                                node = node.node(childPath);
                            }
                            result.add(node);
                        }
                        ++j;
                    }
                    if (!found) {
                        Preferences node = PreferencesService.this.getRootNode().node(scopeString).node(qualifier);
                        if (childPath != null) {
                            node = node.node(childPath);
                        }
                        result.add(node);
                    }
                    found = false;
                }

                public void handleException(Throwable exception) {
                    PreferencesService.log((IStatus)new Status(4, "org.eclipse.equinox.preferences", PrefsMessages.preferences_contextError, exception));
                }
            });
            ++i;
        }
        return result.toArray(new Preferences[result.size()]);
    }

    private String getRegistryKey(String qualifier, String key) {
        if (qualifier == null) {
            throw new IllegalArgumentException();
        }
        if (key == null) {
            return qualifier;
        }
        return String.valueOf(qualifier) + '/' + key;
    }

    public IEclipsePreferences getRootNode() {
        return root;
    }

    String getScope(String path) {
        if (path == null || path.length() == 0) {
            return EMPTY_STRING;
        }
        int startIndex = path.indexOf(47);
        if (startIndex == -1) {
            return path;
        }
        if (path.length() == 1) {
            return EMPTY_STRING;
        }
        int endIndex = path.indexOf(47, startIndex + 1);
        if (endIndex == -1) {
            endIndex = path.length();
        }
        return path.substring(startIndex + 1, endIndex);
    }

    public String getString(String qualifier, String key, String defaultValue, IScopeContext[] scopes) {
        return this.get(EclipsePreferences.decodePath(key)[1], defaultValue, this.getNodes(qualifier, key, scopes));
    }

    public IStatus importPreferences(InputStream input) throws CoreException {
        if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Importing preferences...");
        }
        return this.applyPreferences(this.readPreferences(input));
    }

    private void internalApply(IEclipsePreferences tree, IPreferenceFilter[] filters) throws BackingStoreException {
        ArrayList<IEclipsePreferences> trees = new ArrayList<IEclipsePreferences>();
        int i = 0;
        while (i < filters.length) {
            trees.add(this.trimTree(tree, filters[i]));
            ++i;
        }
        IEclipsePreferences toApply = this.mergeTrees(trees.toArray(new IEclipsePreferences[trees.size()]));
        toApply = this.firePreApplyEvent(toApply);
        IPreferenceNodeVisitor visitor = new IPreferenceNodeVisitor(){

            public boolean visit(IEclipsePreferences node) throws BackingStoreException {
                String[] keys = node.keys();
                if (keys.length == 0) {
                    return true;
                }
                PreferencesService.this.copyFromTo(node, PreferencesService.this.getRootNode().node(node.absolutePath()), keys, 0);
                return true;
            }
        };
        toApply.accept(visitor);
    }

    private void internalExport(IEclipsePreferences node, IPreferenceFilter[] filters, OutputStream output) throws BackingStoreException, CoreException {
        ArrayList<IEclipsePreferences> trees = new ArrayList<IEclipsePreferences>();
        int i = 0;
        while (i < filters.length) {
            trees.add(this.trimTree(node, filters[i]));
            ++i;
        }
        IEclipsePreferences toExport = this.mergeTrees(trees.toArray(new IEclipsePreferences[trees.size()]));
        this.exportPreferences(toExport, output, null);
    }

    private boolean internalMatches(IEclipsePreferences tree, IPreferenceFilter filter) throws BackingStoreException {
        String[] scopes = filter.getScopes();
        if (scopes == null) {
            throw new IllegalArgumentException();
        }
        String treePath = tree.absolutePath();
        int i = 0;
        while (i < scopes.length) {
            String scope = scopes[i];
            Map mapping = filter.getMapping(scope);
            if (mapping == null) {
                if (tree.parent() == null && tree.nodeExists(scope) && this.containsKeys((IEclipsePreferences)tree.node(scope))) {
                    return true;
                }
                if (this.scopeMatches(scope, tree) && this.containsKeys(tree)) {
                    return true;
                }
            } else {
                Iterator iter = mapping.keySet().iterator();
                while (iter.hasNext()) {
                    PreferenceFilterEntry[] entries;
                    String nodePath = (String)iter.next();
                    String nodeFullPath = String.valueOf('/') + scope + '/' + nodePath;
                    if (!nodeFullPath.startsWith(treePath)) continue;
                    String childPath = nodeFullPath.substring(treePath.length());
                    if (!tree.nodeExists(childPath = EclipsePreferences.makeRelative(childPath))) continue;
                    try {
                        entries = (PreferenceFilterEntry[])mapping.get(nodePath);
                    }
                    catch (ClassCastException e) {
                        PreferencesService.log(PreferencesService.createStatusError(PrefsMessages.preferences_classCastFilterEntry, e));
                        continue;
                    }
                    Preferences child = tree.node(childPath);
                    if (entries == null) {
                        if (child.keys().length == 0 && child.childrenNames().length == 0) continue;
                        return true;
                    }
                    int j = 0;
                    while (j < entries.length) {
                        if (entries[j] != null && (entries[j].getMatchType() == null ? child.get(entries[j].getKey(), null) != null : this.internalMatchesWithMatchType(entries[j], child.keys()))) {
                            return true;
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
        return false;
    }

    private IPreferenceFilter[] internalMatches(IEclipsePreferences tree, IPreferenceFilter[] filters) throws BackingStoreException {
        ArrayList<IPreferenceFilter> result = new ArrayList<IPreferenceFilter>();
        int i = 0;
        while (i < filters.length) {
            if (this.internalMatches(tree, filters[i])) {
                result.add(filters[i]);
            }
            ++i;
        }
        return result.toArray(new IPreferenceFilter[result.size()]);
    }

    private boolean internalMatchesWithMatchType(PreferenceFilterEntry entry, String[] keys) {
        if (keys == null || keys.length == 0) {
            return false;
        }
        String key = entry.getKey();
        String matchType = entry.getMatchType();
        if (!matchType.equalsIgnoreCase(MATCH_TYPE_PREFIX)) {
            return false;
        }
        int i = 0;
        while (i < keys.length) {
            if (keys[i].startsWith(key)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean isLegacy(Properties properties) {
        return properties.getProperty(VERSION_KEY) == null;
    }

    public IPreferenceFilter[] matches(IEclipsePreferences tree, IPreferenceFilter[] filters) throws CoreException {
        if (filters == null || filters.length == 0) {
            return new IPreferenceFilter[0];
        }
        try {
            return this.internalMatches(tree, filters);
        }
        catch (BackingStoreException e) {
            throw new CoreException(PreferencesService.createStatusError(PrefsMessages.preferences_matching, e));
        }
    }

    private IEclipsePreferences mergeTrees(IEclipsePreferences[] trees) throws BackingStoreException {
        if (trees.length == 1) {
            return trees[0];
        }
        final IExportedPreferences result = ExportedPreferences.newRoot();
        if (trees.length == 0) {
            return result;
        }
        IPreferenceNodeVisitor visitor = new IPreferenceNodeVisitor(){

            public boolean visit(IEclipsePreferences node) throws BackingStoreException {
                Preferences destination = result.node(node.absolutePath());
                PreferencesService.this.copyFromTo(node, destination, null, 0);
                return true;
            }
        };
        int i = 0;
        while (i < trees.length) {
            trees[i].accept(visitor);
            ++i;
        }
        return result;
    }

    public IExportedPreferences readPreferences(InputStream input) throws CoreException {
        if (input == null) {
            throw new IllegalArgumentException();
        }
        if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Reading preferences from stream...");
        }
        Properties properties = new Properties();
        try {
            try {
                properties.load(input);
            }
            catch (IOException e) {
                throw new CoreException(PreferencesService.createStatusError(PrefsMessages.preferences_importProblems, e));
            }
        }
        catch (Throwable throwable) {
            try {
                input.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            input.close();
        }
        catch (IOException iOException) {}
        if (properties.isEmpty()) {
            throw new CoreException(PreferencesService.createStatusError(PrefsMessages.preferences_invalidFileFormat, null));
        }
        if (this.isLegacy(properties)) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Read legacy preferences file, converting to 3.0 format...");
            }
            properties = this.convertFromLegacy(properties);
        } else {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Read preferences file.");
            }
            properties.remove(VERSION_KEY);
        }
        return this.convertFromProperties(properties);
    }

    private boolean scopeMatches(String scope, IEclipsePreferences tree) {
        String path;
        if (tree.parent() == null) {
            return false;
        }
        int index = (path = tree.absolutePath()).indexOf(47, 1);
        String sub = path.substring(1, index == -1 ? path.length() : index);
        return scope.equals(sub);
    }

    public void setDefaultLookupOrder(String qualifier, String key, String[] order) {
        String registryKey = this.getRegistryKey(qualifier, key);
        if (order == null) {
            defaultsRegistry.remove(registryKey);
        } else {
            LookupOrder obj = new LookupOrder(order);
            defaultsRegistry.put(registryKey, obj);
        }
    }

    public void setRegistryHelper(Object registryHelper) {
        if (this.registryHelper != null && this.registryHelper != registryHelper) {
            ((PreferenceServiceRegistryHelper)this.registryHelper).stop();
        }
        this.registryHelper = registryHelper;
    }

    void shareStrings() {
        long now = System.currentTimeMillis();
        if (now - this.lastStringSharing < 300000L) {
            return;
        }
        StringPool pool = new StringPool();
        root.shareStrings(pool);
        if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            System.out.println("Preference string sharing saved: " + pool.getSavedStringCount());
        }
        this.lastStringSharing = now;
    }

    private IEclipsePreferences trimTree(IEclipsePreferences tree, IPreferenceFilter filter) throws BackingStoreException {
        IEclipsePreferences result = (IEclipsePreferences)ExportedPreferences.newRoot().node(tree.absolutePath());
        String[] scopes = filter.getScopes();
        if (scopes == null) {
            throw new IllegalArgumentException();
        }
        String treePath = tree.absolutePath();
        int i = 0;
        while (i < scopes.length) {
            block10: {
                Map mapping;
                String scope;
                block8: {
                    block9: {
                        scope = scopes[i];
                        mapping = filter.getMapping(scope);
                        if (mapping != null) break block8;
                        if (tree.parent() != null || !tree.nodeExists(scope)) break block9;
                        this.copyFromTo(tree.node(scope), result.node(scope), null, -1);
                        break block10;
                    }
                    if (!this.scopeMatches(scope, tree)) break block10;
                    this.copyFromTo(tree, result, null, -1);
                    break block10;
                }
                Iterator iter = mapping.keySet().iterator();
                while (iter.hasNext()) {
                    PreferenceFilterEntry[] entries;
                    String nodePath = (String)iter.next();
                    String nodeFullPath = String.valueOf('/') + scope + '/' + nodePath;
                    if (!nodeFullPath.startsWith(treePath)) continue;
                    String childPath = nodeFullPath.substring(treePath.length());
                    if (!tree.nodeExists(childPath = EclipsePreferences.makeRelative(childPath))) continue;
                    Preferences child = tree.node(childPath);
                    try {
                        entries = (PreferenceFilterEntry[])mapping.get(nodePath);
                    }
                    catch (ClassCastException e) {
                        PreferencesService.log(PreferencesService.createStatusError(PrefsMessages.preferences_classCastFilterEntry, e));
                        continue;
                    }
                    String[] keys = null;
                    if (entries != null) {
                        ArrayList list = new ArrayList();
                        int j = 0;
                        while (j < entries.length) {
                            if (entries[j] != null) {
                                this.addMatchedKeys(list, entries[j], child.keys());
                            }
                            ++j;
                        }
                        keys = list.toArray(new String[list.size()]);
                    }
                    this.copyFromTo(tree.node(childPath), result.node(childPath), keys, keys == null ? -1 : 0);
                }
            }
            ++i;
        }
        return result;
    }

    private void addMatchedKeys(ArrayList list, PreferenceFilterEntry entry, String[] keys) {
        String matchType = entry.getMatchType();
        if (matchType == null) {
            list.add(entry.getKey());
            return;
        }
        if (keys == null) {
            return;
        }
        String key = entry.getKey();
        int i = 0;
        while (i < keys.length) {
            if (matchType.equals(MATCH_TYPE_PREFIX) && keys[i].startsWith(key)) {
                list.add(keys[i]);
            }
            ++i;
        }
    }

    IStatus validatePluginVersions(String bundle, PluginVersionIdentifier pref, PluginVersionIdentifier installed) {
        if (installed.getMajorComponent() == pref.getMajorComponent() && installed.getMinorComponent() == pref.getMinorComponent()) {
            return null;
        }
        int severity = installed.getMajorComponent() < pref.getMajorComponent() ? 4 : 2;
        String msg = NLS.bind((String)PrefsMessages.preferences_incompatible, (Object[])new Object[]{pref, bundle, installed});
        return new Status(severity, "org.eclipse.equinox.preferences", 1, msg, null);
    }

    public IStatus validateVersions(IPath path) {
        final MultiStatus result = new MultiStatus("org.eclipse.equinox.preferences", 1, PrefsMessages.preferences_validate, null);
        IPreferenceNodeVisitor visitor = new IPreferenceNodeVisitor(){

            public boolean visit(IEclipsePreferences node) {
                if (!(node instanceof ExportedPreferences)) {
                    return false;
                }
                ExportedPreferences realNode = (ExportedPreferences)node;
                String version = realNode.getVersion();
                if (version == null || !PluginVersionIdentifier.validateVersion((String)version).isOK()) {
                    return true;
                }
                PluginVersionIdentifier versionInFile = new PluginVersionIdentifier(version);
                String bundleName = PreferencesService.this.getBundleName(node.absolutePath());
                if (bundleName == null) {
                    return true;
                }
                String stringVersion = PreferencesService.this.getBundleVersion(bundleName);
                if (stringVersion == null || !PluginVersionIdentifier.validateVersion((String)stringVersion).isOK()) {
                    return true;
                }
                PluginVersionIdentifier versionInMemory = new PluginVersionIdentifier(stringVersion);
                IStatus verification = PreferencesService.this.validatePluginVersions(bundleName, versionInFile, versionInMemory);
                if (verification != null) {
                    result.add(verification);
                }
                return true;
            }
        };
        BufferedInputStream input = null;
        try {
            input = new BufferedInputStream(new FileInputStream(path.toFile()));
            IExportedPreferences prefs = this.readPreferences(input);
            prefs.accept(visitor);
        }
        catch (FileNotFoundException fileNotFoundException) {
        }
        catch (CoreException e) {
            result.add(PreferencesService.createStatusError(PrefsMessages.preferences_validationException, (Exception)((Object)e)));
        }
        catch (BackingStoreException e) {
            result.add(PreferencesService.createStatusError(PrefsMessages.preferences_validationException, e));
        }
        return result;
    }

    public String[] getDefaultDefaultLookupOrder() {
        return DEFAULT_DEFAULT_LOOKUP_ORDER;
    }

    public void setDefaultDefaultLookupOrder(String[] order) {
        if (order == null) {
            order = new String[]{};
        }
        DEFAULT_DEFAULT_LOOKUP_ORDER = order;
    }
}

