/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.storage;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.internal.security.storage.Base64;
import org.eclipse.equinox.internal.security.storage.CallbacksProvider;
import org.eclipse.equinox.internal.security.storage.CryptoData;
import org.eclipse.equinox.internal.security.storage.PasswordExt;
import org.eclipse.equinox.internal.security.storage.PersistedPath;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesContainer;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesRoot;
import org.eclipse.equinox.internal.security.storage.StorageUtils;
import org.eclipse.equinox.internal.security.storage.friends.InternalExchangeUtils;
import org.eclipse.equinox.security.storage.StorageException;
import org.eclipse.osgi.util.NLS;

public class SecurePreferences {
    protected static final String DEFAULT_PASSWORD_ID = "org.eclipse.equinox.security.noModule";
    private static final String PATH_SEPARATOR = String.valueOf('/');
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final String FALSE = "false";
    private static final String TRUE = "true";
    private boolean removed = false;
    protected final SecurePreferences parent;
    private final String name;
    protected Map children;
    private Map values;
    private SecurePreferencesRoot root = null;

    public SecurePreferences(SecurePreferences parent, String name) {
        this.parent = parent;
        this.name = name;
    }

    public SecurePreferences parent() {
        this.checkRemoved();
        return this.parent;
    }

    public String name() {
        this.checkRemoved();
        return this.name;
    }

    public String absolutePath() {
        this.checkRemoved();
        if (this.parent == null) {
            return PATH_SEPARATOR;
        }
        String parentPath = this.parent.absolutePath();
        if (PATH_SEPARATOR.equals(parentPath)) {
            return String.valueOf(parentPath) + this.name;
        }
        return String.valueOf(parentPath) + PATH_SEPARATOR + this.name;
    }

    public SecurePreferences node(String pathName) {
        this.checkRemoved();
        this.validatePath(pathName);
        return this.navigateToNode(pathName, true);
    }

    public boolean nodeExists(String pathName) {
        this.checkRemoved();
        this.validatePath(pathName);
        return this.navigateToNode(pathName, false) != null;
    }

    public String[] keys() {
        this.checkRemoved();
        if (this.values == null) {
            return EMPTY_STRING_ARRAY;
        }
        Set keys = this.values.keySet();
        int size = keys.size();
        String[] result = new String[size];
        int pos = 0;
        Iterator i = keys.iterator();
        while (i.hasNext()) {
            result[pos++] = (String)i.next();
        }
        return result;
    }

    public String[] childrenNames() {
        this.checkRemoved();
        if (this.children == null) {
            return EMPTY_STRING_ARRAY;
        }
        Set keys = this.children.keySet();
        int size = keys.size();
        String[] result = new String[size];
        int pos = 0;
        Iterator i = keys.iterator();
        while (i.hasNext()) {
            result[pos++] = (String)i.next();
        }
        return result;
    }

    protected SecurePreferencesRoot getRoot() {
        if (this.root == null) {
            SecurePreferences result = this;
            while (result.parent() != null) {
                result = result.parent();
            }
            this.root = (SecurePreferencesRoot)result;
        }
        return this.root;
    }

    protected SecurePreferences navigateToNode(String pathName, boolean create) {
        if (pathName == null || pathName.length() == 0) {
            return this;
        }
        int pos = pathName.indexOf(47);
        if (pos == -1) {
            return this.getChild(pathName, create);
        }
        if (pos == 0) {
            return this.getRoot().navigateToNode(pathName.substring(1), create);
        }
        String topSegment = pathName.substring(0, pos);
        String otherSegments = pathName.substring(pos + 1);
        SecurePreferences child = this.getChild(topSegment, create);
        if (child == null && !create) {
            return null;
        }
        return child.navigateToNode(otherSegments, create);
    }

    private synchronized SecurePreferences getChild(String segment, boolean create) {
        if (this.children == null) {
            if (create) {
                this.children = new HashMap(5);
            } else {
                return null;
            }
        }
        SecurePreferences child = (SecurePreferences)this.children.get(segment);
        if (!create || child != null) {
            return child;
        }
        child = new SecurePreferences(this, segment);
        this.children.put(segment, child);
        return child;
    }

    public void flush() throws IOException {
        this.getRoot().flush();
    }

    public void flush(Properties properties, String parentsPath) {
        Iterator<Object> i;
        String thisNodePath = this.name == null ? null : (parentsPath == null ? String.valueOf(PATH_SEPARATOR) + this.name : String.valueOf(parentsPath) + PATH_SEPARATOR + this.name);
        if (this.values != null) {
            i = this.values.keySet().iterator();
            while (i.hasNext()) {
                String key = (String)i.next();
                PersistedPath extenalTag = new PersistedPath(thisNodePath, key);
                properties.setProperty(extenalTag.toString(), (String)this.values.get(key));
            }
        }
        if (this.children != null) {
            i = this.children.entrySet().iterator();
            while (i.hasNext()) {
                Map.Entry entry = (Map.Entry)i.next();
                SecurePreferences child = (SecurePreferences)entry.getValue();
                child.flush(properties, thisNodePath);
            }
        }
    }

    public void put(String key, String value, boolean encrypt, SecurePreferencesContainer container) throws StorageException {
        if (key == null) {
            throw new NullPointerException();
        }
        this.checkRemoved();
        if (!encrypt || value == null) {
            CryptoData clearValue = new CryptoData(null, null, StorageUtils.getBytes(value));
            this.internalPut(key, clearValue.toString());
            this.markModified();
            return;
        }
        PasswordExt passwordExt = this.getRoot().getPassword(null, container, true);
        if (passwordExt == null) {
            boolean storeDecrypted;
            boolean bl = storeDecrypted = !CallbacksProvider.getDefault().runningUI() || InternalExchangeUtils.isJUnitApp();
            if (storeDecrypted) {
                CryptoData clearValue = new CryptoData(null, null, StorageUtils.getBytes(value));
                this.internalPut(key, clearValue.toString());
                this.markModified();
                String msg = NLS.bind((String)SecAuthMessages.storedClearText, (Object)key, (Object)this.absolutePath());
                System.out.println(msg);
                AuthPlugin.getDefault().logError(msg, new StorageException(4, msg));
                return;
            }
            throw new StorageException(4, SecAuthMessages.loginNoPassword);
        }
        CryptoData encryptedValue = this.getRoot().getCipher().encrypt(this.getRoot().getPassword(null, container, true), StorageUtils.getBytes(value));
        this.internalPut(key, encryptedValue.toString());
        this.markModified();
    }

    public String get(String key, String def, SecurePreferencesContainer container) throws StorageException {
        this.checkRemoved();
        if (!this.hasKey(key)) {
            return def;
        }
        String encryptedValue = this.internalGet(key);
        if (encryptedValue == null) {
            return null;
        }
        CryptoData data = new CryptoData(encryptedValue);
        String moduleID = data.getModuleID();
        if (moduleID == null) {
            if (data.getData() == null) {
                return null;
            }
            return StorageUtils.getString(data.getData());
        }
        PasswordExt passwordExt = this.getRoot().getPassword(moduleID, container, false);
        if (passwordExt == null) {
            throw new StorageException(4, SecAuthMessages.loginNoPassword);
        }
        try {
            byte[] clearText = this.getRoot().getCipher().decrypt(passwordExt, data);
            return StorageUtils.getString(clearText);
        }
        catch (IllegalBlockSizeException e) {
            throw new StorageException(3, (Throwable)e);
        }
        catch (BadPaddingException e) {
            throw new StorageException(3, (Throwable)e);
        }
    }

    public String getModule(String key) {
        String moduleID;
        block5: {
            if (!this.hasKey(key)) {
                return null;
            }
            String encryptedValue = this.internalGet(key);
            if (encryptedValue == null) {
                return null;
            }
            try {
                CryptoData data = new CryptoData(encryptedValue);
                moduleID = data.getModuleID();
                if (!DEFAULT_PASSWORD_ID.equals(moduleID)) break block5;
                return null;
            }
            catch (StorageException storageException) {
                return null;
            }
        }
        return moduleID;
    }

    protected synchronized void internalPut(String key, String value) {
        if (this.values == null) {
            this.values = new HashMap(5);
        }
        this.values.put(key, value);
    }

    protected String internalGet(String key) {
        if (this.values == null) {
            return null;
        }
        return (String)this.values.get(key);
    }

    protected void markModified() {
        this.getRoot().setModified(true);
    }

    public synchronized void clear() {
        this.checkRemoved();
        if (this.values != null) {
            this.values.clear();
        }
        this.markModified();
    }

    public synchronized void remove(String key) {
        this.checkRemoved();
        if (this.values != null) {
            this.values.remove(key);
            this.markModified();
        }
    }

    public void removeNode() {
        this.checkRemoved();
        if (this.parent != null) {
            this.parent.removeNode(this.name);
        }
        this.markRemoved();
    }

    public void markRemoved() {
        this.removed = true;
        if (this.children == null) {
            return;
        }
        Iterator i = this.children.entrySet().iterator();
        while (i.hasNext()) {
            Map.Entry entry = i.next();
            SecurePreferences child = (SecurePreferences)entry.getValue();
            child.markRemoved();
        }
    }

    protected synchronized void removeNode(String childName) {
        if (this.children == null) {
            return;
        }
        if (this.children.remove(childName) != null) {
            this.markModified();
        }
    }

    private void checkRemoved() {
        if (this.removed) {
            throw new IllegalStateException(NLS.bind((String)SecAuthMessages.removedNode, (Object)this.name));
        }
    }

    private void validatePath(String path) {
        if (this.isValid(path)) {
            return;
        }
        String msg = NLS.bind((String)SecAuthMessages.invalidNodePath, (Object)path);
        throw new IllegalArgumentException(msg);
    }

    private boolean isValid(String path) {
        if (path == null || path.length() == 0) {
            return true;
        }
        char[] chars = path.toCharArray();
        boolean lastSlash = false;
        int i = 0;
        while (i < chars.length) {
            boolean isSlash;
            if (chars[i] <= '\u001f' || chars[i] >= '\u007f') {
                return false;
            }
            boolean bl = isSlash = chars[i] == '/';
            if (lastSlash && isSlash) {
                return false;
            }
            lastSlash = isSlash;
            ++i;
        }
        return chars.length > 1 ? chars[chars.length - 1] != '/' : true;
    }

    public boolean getBoolean(String key, boolean defaultValue, SecurePreferencesContainer container) throws StorageException {
        if (!this.hasKey(key)) {
            return defaultValue;
        }
        String value = this.get(key, null, container);
        return value == null ? defaultValue : TRUE.equalsIgnoreCase(value);
    }

    public void putBoolean(String key, boolean value, boolean encrypt, SecurePreferencesContainer container) throws StorageException {
        this.put(key, value ? TRUE : FALSE, encrypt, container);
    }

    public int getInt(String key, int defaultValue, SecurePreferencesContainer container) throws StorageException {
        if (!this.hasKey(key)) {
            return defaultValue;
        }
        String value = this.get(key, null, container);
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

    public void putInt(String key, int value, boolean encrypt, SecurePreferencesContainer container) throws StorageException {
        this.put(key, Integer.toString(value), encrypt, container);
    }

    public long getLong(String key, long defaultValue, SecurePreferencesContainer container) throws StorageException {
        if (!this.hasKey(key)) {
            return defaultValue;
        }
        String value = this.get(key, null, container);
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

    public void putLong(String key, long value, boolean encrypt, SecurePreferencesContainer container) throws StorageException {
        this.put(key, Long.toString(value), encrypt, container);
    }

    public float getFloat(String key, float defaultValue, SecurePreferencesContainer container) throws StorageException {
        if (!this.hasKey(key)) {
            return defaultValue;
        }
        String value = this.get(key, null, container);
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

    public void putFloat(String key, float value, boolean encrypt, SecurePreferencesContainer container) throws StorageException {
        this.put(key, Float.toString(value), encrypt, container);
    }

    public double getDouble(String key, double defaultValue, SecurePreferencesContainer container) throws StorageException {
        if (!this.hasKey(key)) {
            return defaultValue;
        }
        String value = this.get(key, null, container);
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

    public void putDouble(String key, double value, boolean encrypt, SecurePreferencesContainer container) throws StorageException {
        this.put(key, Double.toString(value), encrypt, container);
    }

    public byte[] getByteArray(String key, byte[] defaultValue, SecurePreferencesContainer container) throws StorageException {
        if (!this.hasKey(key)) {
            return defaultValue;
        }
        String value = this.get(key, null, container);
        return Base64.decode(value);
    }

    public void putByteArray(String key, byte[] value, boolean encrypt, SecurePreferencesContainer container) throws StorageException {
        this.put(key, Base64.encode(value), encrypt, container);
    }

    protected boolean hasKey(String key) {
        this.checkRemoved();
        return this.values == null ? false : this.values.containsKey(key);
    }

    public boolean isModified() {
        return this.getRoot().isModified();
    }

    public boolean isEncrypted(String key) throws StorageException {
        this.checkRemoved();
        if (!this.hasKey(key)) {
            return false;
        }
        String encryptedValue = this.internalGet(key);
        if (encryptedValue == null) {
            return false;
        }
        CryptoData data = new CryptoData(encryptedValue);
        String moduleID = data.getModuleID();
        return moduleID != null;
    }

    public boolean passwordChanging(SecurePreferencesContainer container, String moduleID) {
        return this.getRoot().onChangePassword(container, moduleID);
    }
}

