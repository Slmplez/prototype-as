/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.preferences;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.internal.preferences.Base64;
import org.eclipse.core.internal.preferences.ImmutableMap;
import org.eclipse.core.internal.preferences.PreferencesOSGiUtils;
import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.internal.preferences.PrefsMessages;
import org.eclipse.core.internal.preferences.RootPreferences;
import org.eclipse.core.internal.preferences.StringPool;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor;
import org.eclipse.core.runtime.preferences.IScope;
import org.eclipse.osgi.util.NLS;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class EclipsePreferences
implements IEclipsePreferences,
IScope {
    public static final String DEFAULT_PREFERENCES_DIRNAME = ".settings";
    public static final String PREFS_FILE_EXTENSION = "prefs";
    protected static final IEclipsePreferences[] EMPTY_NODE_ARRAY = new IEclipsePreferences[0];
    protected static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final String FALSE = "false";
    private static final String TRUE = "true";
    protected static final String VERSION_KEY = "eclipse.preferences.version";
    protected static final String VERSION_VALUE = "1";
    protected static final String PATH_SEPARATOR = String.valueOf('/');
    protected static final String DOUBLE_SLASH = "//";
    protected static final String EMPTY_STRING = "";
    private String cachedPath;
    protected Map children;
    protected boolean dirty = false;
    protected boolean loading = false;
    protected final String name;
    protected final EclipsePreferences parent;
    protected ImmutableMap properties = ImmutableMap.EMPTY;
    protected boolean removed = false;
    private ListenerList nodeChangeListeners;
    private ListenerList preferenceChangeListeners;
    public static boolean DEBUG_PREFERENCE_GENERAL = false;
    public static boolean DEBUG_PREFERENCE_SET = false;
    public static boolean DEBUG_PREFERENCE_GET = false;
    protected static final String debugPluginName = "org.eclipse.equinox.preferences";

    static {
        DEBUG_PREFERENCE_GENERAL = PreferencesOSGiUtils.getDefault().getBooleanDebugOption("org.eclipse.equinox.preferences/general", false);
        DEBUG_PREFERENCE_SET = PreferencesOSGiUtils.getDefault().getBooleanDebugOption("org.eclipse.equinox.preferences/set", false);
        DEBUG_PREFERENCE_GET = PreferencesOSGiUtils.getDefault().getBooleanDebugOption("org.eclipse.equinox.preferences/get", false);
    }

    public EclipsePreferences() {
        this(null, null);
    }

    protected EclipsePreferences(EclipsePreferences parent, String name) {
        this.parent = parent;
        this.name = name;
        this.cachedPath = null;
    }

    public String absolutePath() {
        if (this.cachedPath == null) {
            String parentPath;
            this.cachedPath = this.parent == null ? PATH_SEPARATOR : ((parentPath = this.parent.absolutePath()).length() == 1 ? String.valueOf(parentPath) + this.name() : String.valueOf(parentPath) + PATH_SEPARATOR + this.name());
        }
        return this.cachedPath;
    }

    public void accept(IPreferenceNodeVisitor visitor) throws BackingStoreException {
        if (!visitor.visit(this)) {
            return;
        }
        IEclipsePreferences[] toVisit = this.getChildren(true);
        int i = 0;
        while (i < toVisit.length) {
            toVisit[i].accept(visitor);
            ++i;
        }
    }

    protected synchronized IEclipsePreferences addChild(String childName, IEclipsePreferences child) {
        if (this.children == null) {
            this.children = Collections.synchronizedMap(new HashMap());
        }
        this.children.put(childName, child == null ? childName : child);
        return child;
    }

    public void addNodeChangeListener(IEclipsePreferences.INodeChangeListener listener) {
        this.checkRemoved();
        if (this.nodeChangeListeners == null) {
            this.nodeChangeListeners = new ListenerList();
        }
        this.nodeChangeListeners.add((Object)listener);
        if (DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Added preference node change listener: " + listener + " to: " + this.absolutePath());
        }
    }

    public void addPreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener listener) {
        this.checkRemoved();
        if (this.preferenceChangeListeners == null) {
            this.preferenceChangeListeners = new ListenerList();
        }
        this.preferenceChangeListeners.add((Object)listener);
        if (DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Added preference property change listener: " + listener + " to: " + this.absolutePath());
        }
    }

    private IEclipsePreferences calculateRoot() {
        IEclipsePreferences result = this;
        while (result.parent() != null) {
            result = (IEclipsePreferences)result.parent();
        }
        return result;
    }

    protected void checkRemoved() {
        if (this.removed) {
            throw new IllegalStateException(NLS.bind((String)PrefsMessages.preferences_removedNode, (Object)this.name));
        }
    }

    public String[] childrenNames() {
        this.checkRemoved();
        return this.internalChildNames();
    }

    protected String[] internalChildNames() {
        Map temp = this.children;
        if (temp == null || temp.size() == 0) {
            return EMPTY_STRING_ARRAY;
        }
        return temp.keySet().toArray(EMPTY_STRING_ARRAY);
    }

    public void clear() {
        this.checkRemoved();
        String[] keys = this.properties.keys();
        int i = 0;
        while (i < keys.length) {
            this.remove(keys[i]);
            ++i;
        }
        this.makeDirty();
    }

    protected String[] computeChildren(IPath root) {
        if (root == null) {
            return EMPTY_STRING_ARRAY;
        }
        IPath dir = root.append(DEFAULT_PREFERENCES_DIRNAME);
        ArrayList<String> result = new ArrayList<String>();
        File file = dir.toFile();
        File[] totalFiles = file.listFiles();
        if (totalFiles != null) {
            int i = 0;
            while (i < totalFiles.length) {
                String filename;
                if (totalFiles[i].isFile() && (filename = totalFiles[i].getName()).endsWith(".prefs")) {
                    String shortName = filename.substring(0, filename.length() - ".prefs".length());
                    result.add(shortName);
                }
                ++i;
            }
        }
        return result.toArray(EMPTY_STRING_ARRAY);
    }

    protected IPath computeLocation(IPath root, String qualifier) {
        return root == null ? null : root.append(DEFAULT_PREFERENCES_DIRNAME).append(qualifier).addFileExtension(PREFS_FILE_EXTENSION);
    }

    protected static void convertFromProperties(EclipsePreferences node, Properties table, boolean notify) {
        String version = table.getProperty(VERSION_KEY);
        if (version != null) {
            VERSION_VALUE.equals(version);
        }
        table.remove(VERSION_KEY);
        Iterator i = table.keySet().iterator();
        while (i.hasNext()) {
            String fullKey = (String)i.next();
            String value = table.getProperty(fullKey);
            if (value == null) continue;
            String[] splitPath = EclipsePreferences.decodePath(fullKey);
            String path = splitPath[0];
            path = EclipsePreferences.makeRelative(path);
            String key = splitPath[1];
            if (DEBUG_PREFERENCE_SET) {
                PrefsMessages.message("Setting preference: " + path + '/' + key + '=' + value);
            }
            EclipsePreferences childNode = (EclipsePreferences)node.internalNode(path, false, null);
            String oldValue = childNode.internalPut(key, value);
            if (!notify || value.equals(oldValue)) continue;
            childNode.firePreferenceEvent(key, oldValue, value);
        }
        PreferencesService.getDefault().shareStrings();
    }

    protected Properties convertToProperties(Properties result, String prefix) throws BackingStoreException {
        boolean addSeparator = prefix.length() != 0;
        ImmutableMap temp = this.properties;
        String[] keys = temp.keys();
        int i = 0;
        int imax = keys.length;
        while (i < imax) {
            String value = temp.get(keys[i]);
            if (value != null) {
                result.put(EclipsePreferences.encodePath(prefix, keys[i]), value);
            }
            ++i;
        }
        IEclipsePreferences[] childNodes = this.getChildren(true);
        int i2 = 0;
        while (i2 < childNodes.length) {
            EclipsePreferences child = (EclipsePreferences)childNodes[i2];
            String fullPath = addSeparator ? String.valueOf(prefix) + PATH_SEPARATOR + child.name() : child.name();
            child.convertToProperties(result, fullPath);
            ++i2;
        }
        PreferencesService.getDefault().shareStrings();
        return result;
    }

    public IEclipsePreferences create(IEclipsePreferences nodeParent, String nodeName) {
        return this.create((EclipsePreferences)nodeParent, nodeName, null);
    }

    protected boolean isLoading() {
        return this.loading;
    }

    protected void setLoading(boolean isLoading) {
        this.loading = isLoading;
    }

    public IEclipsePreferences create(EclipsePreferences nodeParent, String nodeName, Object context) {
        EclipsePreferences result = this.internalCreate(nodeParent, nodeName, context);
        nodeParent.addChild(nodeName, result);
        IEclipsePreferences loadLevel = result.getLoadLevel();
        if (loadLevel == null) {
            return result;
        }
        if (result != loadLevel) {
            return result;
        }
        if (this.isAlreadyLoaded(result) || result.isLoading()) {
            return result;
        }
        try {
            try {
                result.setLoading(true);
                result.loadLegacy();
                result.load();
                result.loaded();
                result.flush();
            }
            catch (BackingStoreException e) {
                IPath location = result.getLocation();
                String message = NLS.bind((String)PrefsMessages.preferences_loadException, (Object)(location == null ? EMPTY_STRING : location.toString()));
                Status status = new Status(4, debugPluginName, 4, message, (Throwable)e);
                RuntimeLog.log((IStatus)status);
                result.setLoading(false);
            }
        }
        finally {
            result.setLoading(false);
        }
        return result;
    }

    public synchronized void flush() throws BackingStoreException {
        this.checkRemoved();
        IEclipsePreferences loadLevel = this.getLoadLevel();
        if (loadLevel == null) {
            String[] childrenNames = this.childrenNames();
            int i = 0;
            while (i < childrenNames.length) {
                this.node(childrenNames[i]).flush();
                ++i;
            }
            return;
        }
        if (this != loadLevel) {
            loadLevel.flush();
            return;
        }
        if (!this.dirty) {
            return;
        }
        this.dirty = false;
        try {
            this.save();
        }
        catch (BackingStoreException e) {
            this.dirty = true;
            throw e;
        }
    }

    public String get(String key, String defaultValue) {
        String value = this.internalGet(key);
        return value == null ? defaultValue : value;
    }

    public boolean getBoolean(String key, boolean defaultValue) {
        String value = this.internalGet(key);
        return value == null ? defaultValue : TRUE.equalsIgnoreCase(value);
    }

    public byte[] getByteArray(String key, byte[] defaultValue) {
        String value = this.internalGet(key);
        return value == null ? defaultValue : Base64.decode(value.getBytes());
    }

    protected synchronized boolean childExists(String childName) {
        if (this.children == null) {
            return false;
        }
        return this.children.get(childName) != null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected IEclipsePreferences getChild(String key, Object context, boolean create) {
        EclipsePreferences eclipsePreferences = this;
        synchronized (eclipsePreferences) {
            block9: {
                Object value;
                block8: {
                    block7: {
                        if (this.children != null) break block7;
                        return null;
                    }
                    value = this.children.get(key);
                    if (value != null) break block8;
                    return null;
                }
                if (value instanceof IEclipsePreferences) {
                    return (IEclipsePreferences)value;
                }
                if (create) break block9;
                return null;
            }
        }
        return this.addChild(key, this.create(this, key, context));
    }

    protected IEclipsePreferences[] getChildren(boolean create) {
        ArrayList<IEclipsePreferences> result = new ArrayList<IEclipsePreferences>();
        String[] names = this.internalChildNames();
        int i = 0;
        while (i < names.length) {
            IEclipsePreferences child = this.getChild(names[i], null, create);
            if (child != null) {
                result.add(child);
            }
            ++i;
        }
        return result.toArray(EMPTY_NODE_ARRAY);
    }

    public double getDouble(String key, double defaultValue) {
        String value = this.internalGet(key);
        double result = defaultValue;
        if (value != null) {
            try {
                result = Double.parseDouble(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public float getFloat(String key, float defaultValue) {
        String value = this.internalGet(key);
        float result = defaultValue;
        if (value != null) {
            try {
                result = Float.parseFloat(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public int getInt(String key, int defaultValue) {
        String value = this.internalGet(key);
        int result = defaultValue;
        if (value != null) {
            try {
                result = Integer.parseInt(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    protected IEclipsePreferences getLoadLevel() {
        return null;
    }

    protected IPath getLocation() {
        return null;
    }

    public long getLong(String key, long defaultValue) {
        String value = this.internalGet(key);
        long result = defaultValue;
        if (value != null) {
            try {
                result = Long.parseLong(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    protected EclipsePreferences internalCreate(EclipsePreferences nodeParent, String nodeName, Object context) {
        return new EclipsePreferences(nodeParent, nodeName);
    }

    protected String internalGet(String key) {
        if (key == null) {
            throw new NullPointerException();
        }
        this.checkRemoved();
        String result = this.properties.get(key);
        if (DEBUG_PREFERENCE_GET) {
            PrefsMessages.message("Getting preference value: " + this.absolutePath() + '/' + key + "->" + result);
        }
        return result;
    }

    protected IEclipsePreferences internalNode(String path, boolean notify, Object context) {
        this.checkRemoved();
        if (path.length() == 0) {
            return this;
        }
        if (path.charAt(0) == '/') {
            return (IEclipsePreferences)this.calculateRoot().node(path.substring(1));
        }
        int index = path.indexOf(47);
        String key = index == -1 ? path : path.substring(0, index);
        boolean added = false;
        IEclipsePreferences child = this.getChild(key, context, true);
        if (child == null) {
            child = this.create(this, key, context);
            added = true;
        }
        if (added && notify) {
            this.fireNodeEvent(new IEclipsePreferences.NodeChangeEvent(this, child), true);
        }
        return (IEclipsePreferences)child.node(index == -1 ? EMPTY_STRING : path.substring(index + 1));
    }

    protected String internalPut(String key, String newValue) {
        this.checkRemoved();
        String oldValue = this.properties.get(key);
        if (oldValue != null && oldValue.equals(newValue)) {
            return oldValue;
        }
        if (DEBUG_PREFERENCE_SET) {
            PrefsMessages.message("Setting preference: " + this.absolutePath() + '/' + key + '=' + newValue);
        }
        this.properties = this.properties.put(key, newValue);
        return oldValue;
    }

    protected boolean isAlreadyLoaded(IEclipsePreferences node) {
        return true;
    }

    public String[] keys() {
        this.checkRemoved();
        return this.properties.keys();
    }

    protected void load() throws BackingStoreException {
        this.load(this.getLocation());
    }

    protected static Properties loadProperties(IPath location) throws BackingStoreException {
        Properties result;
        block16: {
            if (DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Loading preferences from file: " + location);
            }
            InputStream input = null;
            result = new Properties();
            try {
                input = new BufferedInputStream(new FileInputStream(location.toFile()));
                result.load(input);
            }
            catch (FileNotFoundException fileNotFoundException) {
                if (DEBUG_PREFERENCE_GENERAL) {
                    PrefsMessages.message("Preference file does not exist: " + location);
                }
                Properties properties = result;
                if (input != null) {
                    try {
                        input.close();
                    }
                    catch (IOException iOException) {}
                }
                return properties;
            }
            catch (IOException e) {
                try {
                    String message = NLS.bind((String)PrefsMessages.preferences_loadException, (Object)location);
                    EclipsePreferences.log((IStatus)new Status(1, debugPluginName, 1, message, (Throwable)e));
                    throw new BackingStoreException(message);
                }
                catch (Throwable throwable) {
                    if (input != null) {
                        try {
                            input.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
            }
            if (input == null) break block16;
            try {
                input.close();
            }
            catch (IOException iOException) {}
        }
        return result;
    }

    protected void load(IPath location) throws BackingStoreException {
        if (location == null) {
            if (DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Unable to determine location of preference file for node: " + this.absolutePath());
            }
            return;
        }
        Properties fromDisk = EclipsePreferences.loadProperties(location);
        EclipsePreferences.convertFromProperties(this, fromDisk, false);
    }

    protected void loaded() {
    }

    protected void loadLegacy() {
    }

    public static void log(IStatus status) {
        RuntimeLog.log((IStatus)status);
    }

    protected void makeDirty() {
        EclipsePreferences node = this;
        while (node != null && !node.removed) {
            node.dirty = true;
            node = (EclipsePreferences)node.parent();
        }
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public String name() {
        return this.name;
    }

    public Preferences node(String pathName) {
        return this.internalNode(pathName, true, null);
    }

    protected void fireNodeEvent(final IEclipsePreferences.NodeChangeEvent event, final boolean added) {
        if (this.nodeChangeListeners == null) {
            return;
        }
        Object[] listeners = this.nodeChangeListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IEclipsePreferences.INodeChangeListener listener = (IEclipsePreferences.INodeChangeListener)listeners[i];
            ISafeRunnable job = new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    if (added) {
                        listener.added(event);
                    } else {
                        listener.removed(event);
                    }
                }
            };
            SafeRunner.run((ISafeRunnable)job);
            ++i;
        }
    }

    public boolean nodeExists(String path) throws BackingStoreException {
        boolean noSlash;
        if (path.length() == 0) {
            return !this.removed;
        }
        this.checkRemoved();
        if (path.charAt(0) == '/') {
            return this.calculateRoot().nodeExists(path.substring(1));
        }
        int index = path.indexOf(47);
        boolean bl = noSlash = index == -1;
        if (noSlash) {
            return this.childExists(path);
        }
        String childName = path.substring(0, index);
        if (!this.childExists(childName)) {
            return false;
        }
        IEclipsePreferences child = this.getChild(childName, null, true);
        if (child == null) {
            return false;
        }
        return child.nodeExists(path.substring(index + 1));
    }

    public Preferences parent() {
        this.checkRemoved();
        return this.parent;
    }

    protected void firePreferenceEvent(String key, Object oldValue, Object newValue) {
        if (this.preferenceChangeListeners == null) {
            return;
        }
        Object[] listeners = this.preferenceChangeListeners.getListeners();
        final IEclipsePreferences.PreferenceChangeEvent event = new IEclipsePreferences.PreferenceChangeEvent(this, key, oldValue, newValue);
        int i = 0;
        while (i < listeners.length) {
            final IEclipsePreferences.IPreferenceChangeListener listener = (IEclipsePreferences.IPreferenceChangeListener)listeners[i];
            ISafeRunnable job = new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    listener.preferenceChange(event);
                }
            };
            SafeRunner.run((ISafeRunnable)job);
            ++i;
        }
    }

    public void put(String key, String newValue) {
        if (key == null || newValue == null) {
            throw new NullPointerException();
        }
        String oldValue = this.internalPut(key, newValue);
        if (!newValue.equals(oldValue)) {
            this.makeDirty();
            this.firePreferenceEvent(key, oldValue, newValue);
        }
    }

    public void putBoolean(String key, boolean value) {
        String oldValue;
        if (key == null) {
            throw new NullPointerException();
        }
        String newValue = value ? TRUE : FALSE;
        if (!newValue.equals(oldValue = this.internalPut(key, newValue))) {
            this.makeDirty();
            this.firePreferenceEvent(key, oldValue, newValue);
        }
    }

    public void putByteArray(String key, byte[] value) {
        String oldValue;
        if (key == null || value == null) {
            throw new NullPointerException();
        }
        String newValue = new String(Base64.encode(value));
        if (!newValue.equals(oldValue = this.internalPut(key, newValue))) {
            this.makeDirty();
            this.firePreferenceEvent(key, oldValue, newValue);
        }
    }

    public void putDouble(String key, double value) {
        String oldValue;
        if (key == null) {
            throw new NullPointerException();
        }
        String newValue = Double.toString(value);
        if (!newValue.equals(oldValue = this.internalPut(key, newValue))) {
            this.makeDirty();
            this.firePreferenceEvent(key, oldValue, newValue);
        }
    }

    public void putFloat(String key, float value) {
        String oldValue;
        if (key == null) {
            throw new NullPointerException();
        }
        String newValue = Float.toString(value);
        if (!newValue.equals(oldValue = this.internalPut(key, newValue))) {
            this.makeDirty();
            this.firePreferenceEvent(key, oldValue, newValue);
        }
    }

    public void putInt(String key, int value) {
        String oldValue;
        if (key == null) {
            throw new NullPointerException();
        }
        String newValue = Integer.toString(value);
        if (!newValue.equals(oldValue = this.internalPut(key, newValue))) {
            this.makeDirty();
            this.firePreferenceEvent(key, oldValue, newValue);
        }
    }

    public void putLong(String key, long value) {
        String oldValue;
        if (key == null) {
            throw new NullPointerException();
        }
        String newValue = Long.toString(value);
        if (!newValue.equals(oldValue = this.internalPut(key, newValue))) {
            this.makeDirty();
            this.firePreferenceEvent(key, oldValue, newValue);
        }
    }

    public void remove(String key) {
        this.checkRemoved();
        String oldValue = this.properties.get(key);
        if (oldValue == null) {
            return;
        }
        this.properties = this.properties.removeKey(key);
        this.makeDirty();
        this.firePreferenceEvent(key, oldValue, null);
    }

    public void removeNode() throws BackingStoreException {
        this.checkRemoved();
        String[] keys = this.keys();
        int i = 0;
        while (i < keys.length) {
            this.remove(keys[i]);
            ++i;
        }
        if (this.parent != null && !(this.parent instanceof RootPreferences)) {
            this.removed = true;
            this.parent.removeNode(this);
        }
        IEclipsePreferences[] childNodes = this.getChildren(false);
        int i2 = 0;
        while (i2 < childNodes.length) {
            try {
                childNodes[i2].removeNode();
            }
            catch (IllegalStateException illegalStateException) {}
            ++i2;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void removeNode(IEclipsePreferences child) {
        boolean wasRemoved = false;
        EclipsePreferences eclipsePreferences = this;
        synchronized (eclipsePreferences) {
            if (this.children != null) {
                boolean bl = wasRemoved = this.children.remove(child.name()) != null;
                if (wasRemoved) {
                    this.makeDirty();
                }
                if (this.children.isEmpty()) {
                    this.children = null;
                }
            }
        }
        if (wasRemoved) {
            this.fireNodeEvent(new IEclipsePreferences.NodeChangeEvent(this, child), false);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void removeNode(String key) {
        EclipsePreferences eclipsePreferences = this;
        synchronized (eclipsePreferences) {
            if (this.children != null) {
                boolean wasRemoved;
                boolean bl = wasRemoved = this.children.remove(key) != null;
                if (wasRemoved) {
                    this.makeDirty();
                }
                if (this.children.isEmpty()) {
                    this.children = null;
                }
            }
        }
    }

    public void removeNodeChangeListener(IEclipsePreferences.INodeChangeListener listener) {
        this.checkRemoved();
        if (this.nodeChangeListeners == null) {
            return;
        }
        this.nodeChangeListeners.remove((Object)listener);
        if (this.nodeChangeListeners.size() == 0) {
            this.nodeChangeListeners = null;
        }
        if (DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Removed preference node change listener: " + listener + " from: " + this.absolutePath());
        }
    }

    public void removePreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener listener) {
        this.checkRemoved();
        if (this.preferenceChangeListeners == null) {
            return;
        }
        this.preferenceChangeListeners.remove((Object)listener);
        if (this.preferenceChangeListeners.size() == 0) {
            this.preferenceChangeListeners = null;
        }
        if (DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Removed preference property change listener: " + listener + " from: " + this.absolutePath());
        }
    }

    protected void save() throws BackingStoreException {
        this.save(this.getLocation());
    }

    protected void save(IPath location) throws BackingStoreException {
        File parentFile;
        FileOutputStream fos;
        OutputStream output;
        Properties table;
        block18: {
            block19: {
                if (location == null) {
                    if (DEBUG_PREFERENCE_GENERAL) {
                        PrefsMessages.message("Unable to determine location of preference file for node: " + this.absolutePath());
                    }
                    return;
                }
                if (DEBUG_PREFERENCE_GENERAL) {
                    PrefsMessages.message("Saving preferences to file: " + location);
                }
                if ((table = this.convertToProperties(new Properties(), EMPTY_STRING)).isEmpty()) {
                    if (location.toFile().exists() && !location.toFile().delete()) {
                        String message = NLS.bind((String)PrefsMessages.preferences_failedDelete, (Object)location);
                        EclipsePreferences.log((IStatus)new Status(2, debugPluginName, 2, message, null));
                    }
                    return;
                }
                table.put(VERSION_KEY, VERSION_VALUE);
                output = null;
                fos = null;
                parentFile = location.toFile().getParentFile();
                if (parentFile != null) break block18;
                if (output == null) break block19;
                try {
                    output.close();
                }
                catch (IOException iOException) {}
            }
            return;
        }
        try {
            try {
                parentFile.mkdirs();
                fos = new FileOutputStream(location.toOSString(), false);
                output = new BufferedOutputStream(fos);
                table.store(output, null);
                output.flush();
                fos.getFD().sync();
            }
            catch (IOException e) {
                String message = NLS.bind((String)PrefsMessages.preferences_saveException, (Object)location);
                EclipsePreferences.log((IStatus)new Status(4, debugPluginName, 4, message, (Throwable)e));
                throw new BackingStoreException(message);
            }
        }
        catch (Throwable throwable) {
            if (output != null) {
                try {
                    output.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (output != null) {
            try {
                output.close();
            }
            catch (IOException iOException) {}
        }
    }

    public void shareStrings(StringPool pool) {
        this.properties.shareStrings(pool);
        IEclipsePreferences[] myChildren = this.getChildren(false);
        int i = 0;
        while (i < myChildren.length) {
            if (myChildren[i] instanceof EclipsePreferences) {
                ((EclipsePreferences)myChildren[i]).shareStrings(pool);
            }
            ++i;
        }
    }

    public static String encodePath(String path, String key) {
        int pathLength;
        int n = pathLength = path == null ? 0 : path.length();
        String result = key.indexOf(47) == -1 ? (pathLength == 0 ? key : String.valueOf(path) + '/' + key) : (pathLength == 0 ? DOUBLE_SLASH + key : String.valueOf(path) + DOUBLE_SLASH + key);
        return result;
    }

    public static String getSegment(String path, int segment) {
        int start = path.indexOf(47) == 0 ? 1 : 0;
        int end = path.indexOf(47, start);
        if (end == path.length() - 1) {
            end = -1;
        }
        int i = 0;
        while (i < segment) {
            if (end == -1) {
                return null;
            }
            start = end + 1;
            end = path.indexOf(47, start);
            ++i;
        }
        if (end == -1) {
            end = path.length();
        }
        return path.substring(start, end);
    }

    public static int getSegmentCount(String path) {
        StringTokenizer tokenizer = new StringTokenizer(path, String.valueOf('/'));
        return tokenizer.countTokens();
    }

    public static String makeRelative(String path) {
        String result = path;
        if (path == null) {
            return EMPTY_STRING;
        }
        if (path.length() > 0 && path.charAt(0) == '/') {
            result = path.length() == 0 ? EMPTY_STRING : path.substring(1);
        }
        return result;
    }

    public static String[] decodePath(String fullPath) {
        String key = null;
        String path = null;
        int index = fullPath.indexOf(DOUBLE_SLASH);
        if (index == -1) {
            int lastIndex = fullPath.lastIndexOf(47);
            if (lastIndex == -1) {
                key = fullPath;
            } else {
                path = fullPath.substring(0, lastIndex);
                key = fullPath.substring(lastIndex + 1);
            }
        } else {
            path = fullPath.substring(0, index);
            key = fullPath.substring(index + 2);
        }
        if (path != null) {
            if (path.length() == 0) {
                path = null;
            } else if (path.charAt(0) == '/') {
                path = path.substring(1);
            }
        }
        return new String[]{path, key};
    }

    public void sync() throws BackingStoreException {
        this.checkRemoved();
        IEclipsePreferences node = this.getLoadLevel();
        if (node == null) {
            if (DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Preference node is not a load root: " + this.absolutePath());
            }
            return;
        }
        if (node instanceof EclipsePreferences) {
            ((EclipsePreferences)node).load();
            node.flush();
        }
    }

    public String toDeepDebugString() {
        final StringBuffer buffer = new StringBuffer();
        IPreferenceNodeVisitor visitor = new IPreferenceNodeVisitor(){

            public boolean visit(IEclipsePreferences node) throws BackingStoreException {
                buffer.append(node);
                buffer.append('\n');
                String[] keys = node.keys();
                int i = 0;
                while (i < keys.length) {
                    buffer.append(node.absolutePath());
                    buffer.append(PATH_SEPARATOR);
                    buffer.append(keys[i]);
                    buffer.append('=');
                    buffer.append(node.get(keys[i], "*default*"));
                    buffer.append('\n');
                    ++i;
                }
                return true;
            }
        };
        try {
            this.accept(visitor);
        }
        catch (BackingStoreException e) {
            System.out.println("Exception while calling #toDeepDebugString()");
            e.printStackTrace();
        }
        return buffer.toString();
    }

    public String toString() {
        return this.absolutePath();
    }
}

