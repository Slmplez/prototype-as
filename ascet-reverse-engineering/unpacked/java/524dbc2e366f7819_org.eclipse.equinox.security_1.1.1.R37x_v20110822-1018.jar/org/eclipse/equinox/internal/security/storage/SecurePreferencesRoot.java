/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.storage;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.PBEKeySpec;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.internal.security.storage.CallbacksProvider;
import org.eclipse.equinox.internal.security.storage.CryptoData;
import org.eclipse.equinox.internal.security.storage.JavaEncryption;
import org.eclipse.equinox.internal.security.storage.PasswordExt;
import org.eclipse.equinox.internal.security.storage.PasswordProviderModuleExt;
import org.eclipse.equinox.internal.security.storage.PasswordProviderSelector;
import org.eclipse.equinox.internal.security.storage.PersistedPath;
import org.eclipse.equinox.internal.security.storage.SecurePreferences;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesContainer;
import org.eclipse.equinox.internal.security.storage.StorageUtils;
import org.eclipse.equinox.internal.security.storage.friends.IStorageConstants;
import org.eclipse.equinox.internal.security.storage.friends.IUICallbacks;
import org.eclipse.equinox.internal.security.storage.friends.InternalExchangeUtils;
import org.eclipse.equinox.security.storage.StorageException;
import org.eclipse.equinox.security.storage.provider.IPreferencesContainer;
import org.eclipse.osgi.util.NLS;

public class SecurePreferencesRoot
extends SecurePreferences
implements IStorageConstants {
    private static final String VERSION_KEY = "org.eclipse.equinox.security.preferences.version";
    private static final String VERSION_VALUE = "1";
    public static final String PROVIDER_PATH = "org.eclipse.equinox.security.storage.impl";
    private static final String description = "Equinox secure storage version 1.0";
    private static final String PROVIDER_NODE = "/org.eclipse.equinox.secure.storage";
    private static final String PASSWORD_VERIFICATION_NODE = "/org.eclipse.equinox.secure.storage/verification";
    private static final String PASSWORD_VERIFICATION_SAMPLE = "-> brown fox jumped over lazy dog <-";
    protected static final int MAX_ATTEMPTS = 20;
    private static ILock lock = Job.getJobManager().newLock();
    private URL location;
    private long timestamp = 0L;
    private boolean modified = false;
    private JavaEncryption cipher = new JavaEncryption();
    private Map passwordCache = new HashMap(5);

    public SecurePreferencesRoot(URL location) throws IOException {
        super(null, null);
        this.location = location;
        this.load();
    }

    public URL getLocation() {
        return this.location;
    }

    public JavaEncryption getCipher() {
        return this.cipher;
    }

    public boolean isModified() {
        return this.modified;
    }

    public void setModified(boolean modified) {
        this.modified = modified;
    }

    public void load() throws IOException {
        if (this.location == null) {
            return;
        }
        Properties properties = new Properties();
        InputStream is = null;
        try {
            try {
                is = StorageUtils.getInputStream(this.location);
                if (is != null) {
                    properties.load(is);
                    this.timestamp = this.getLastModified();
                }
            }
            catch (IllegalArgumentException e) {
                String msg = NLS.bind((String)SecAuthMessages.badStorageURL, (Object)this.location.toString());
                AuthPlugin.getDefault().logError(msg, e);
                this.location = null;
                if (is != null) {
                    is.close();
                }
                return;
            }
        }
        finally {
            if (is != null) {
                is.close();
            }
        }
        Object version = properties.get(VERSION_KEY);
        if (version != null && !VERSION_VALUE.equals(version)) {
            return;
        }
        properties.remove(VERSION_KEY);
        if (properties.containsKey("org.eclipse.equinox.security.preferences.cipher") && properties.containsKey("org.eclipse.equinox.security.preferences.keyFactory")) {
            Object cipherAlgorithm = properties.get("org.eclipse.equinox.security.preferences.cipher");
            Object keyFactoryAlgorithm = properties.get("org.eclipse.equinox.security.preferences.keyFactory");
            if (cipherAlgorithm instanceof String && keyFactoryAlgorithm instanceof String) {
                this.cipher.setAlgorithms((String)cipherAlgorithm, (String)keyFactoryAlgorithm);
            }
            properties.remove("org.eclipse.equinox.security.preferences.cipher");
            properties.remove("org.eclipse.equinox.security.preferences.keyFactory");
        }
        Iterator i = properties.keySet().iterator();
        while (i.hasNext()) {
            PersistedPath storedPath;
            Object externalKey = i.next();
            Object value = properties.get(externalKey);
            if (!(externalKey instanceof String) || !(value instanceof String) || (storedPath = new PersistedPath((String)externalKey)).getKey() == null) continue;
            SecurePreferences node = this.node(storedPath.getPath());
            node.internalPut(storedPath.getKey(), (String)value);
        }
    }

    public synchronized void flush() throws IOException {
        IUICallbacks callback;
        if (this.location == null) {
            return;
        }
        if (!this.modified) {
            return;
        }
        if (this.timestamp != 0L && this.timestamp != this.getLastModified() && (callback = CallbacksProvider.getDefault().getCallback()) != null) {
            Boolean response = callback.ask(SecAuthMessages.fileModifiedMsg);
            if (response == null) {
                AuthPlugin.getDefault().frameworkLogError(SecAuthMessages.fileModifiedNote, 2, null);
            } else if (!response.booleanValue()) {
                return;
            }
        }
        Properties properties = new Properties();
        properties.put(VERSION_KEY, VERSION_VALUE);
        String cipherAlgorithm = this.cipher.getCipherAlgorithm();
        if (cipherAlgorithm != null) {
            properties.put("org.eclipse.equinox.security.preferences.cipher", cipherAlgorithm);
            properties.put("org.eclipse.equinox.security.preferences.keyFactory", this.cipher.getKeyFactoryAlgorithm());
        }
        this.flush(properties, null);
        OutputStream stream = null;
        try {
            stream = StorageUtils.getOutputStream(this.location);
            properties.store(stream, description);
            this.modified = false;
        }
        finally {
            if (stream != null) {
                stream.close();
            }
        }
        this.timestamp = this.getLastModified();
    }

    public PasswordExt getPassword(String moduleID, IPreferencesContainer container, boolean encryption) throws StorageException {
        if (encryption) {
            PasswordExt defaultPassword = this.getDefaultPassword(container);
            if (defaultPassword != null) {
                return defaultPassword;
            }
            moduleID = this.getDefaultModuleID(container);
        } else {
            if (moduleID == null) {
                throw new StorageException(1, SecAuthMessages.invalidEntryFormat);
            }
            if ("org.eclipse.equinox.security.noModule".equals(moduleID)) {
                PasswordExt defaultPassword = this.getDefaultPassword(container);
                if (defaultPassword != null) {
                    return defaultPassword;
                }
                throw new StorageException(1, SecAuthMessages.noDefaultPassword);
            }
        }
        return this.getModulePassword(moduleID, container);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private PasswordExt getModulePassword(String moduleID, IPreferencesContainer container) throws StorageException {
        boolean setupPasswordRecovery;
        boolean validPassword;
        PasswordExt passwordExt;
        String key;
        block25: {
            if ("org.eclipse.equinox.security.noModule".equals(moduleID)) {
                throw new StorageException(4, SecAuthMessages.loginNoPassword);
            }
            PasswordProviderModuleExt moduleExt = PasswordProviderSelector.getInstance().findStorageModule(moduleID);
            key = moduleExt.getID();
            passwordExt = null;
            validPassword = false;
            setupPasswordRecovery = false;
            boolean addedNoPrompt = false;
            try {
                SecurePreferences node;
                boolean supressPrompts;
                lock.acquire();
                Map map = this.passwordCache;
                synchronized (map) {
                    if (this.passwordCache.containsKey(key)) {
                        PasswordExt passwordExt2 = (PasswordExt)this.passwordCache.get(key);
                        return passwordExt2;
                    }
                }
                boolean bl = supressPrompts = !CallbacksProvider.getDefault().runningUI() || InternalExchangeUtils.isJUnitApp();
                if (supressPrompts && container != null && !container.hasOption("org.eclipse.equinox.security.storage.promptUser")) {
                    ((SecurePreferencesContainer)container).setOption("org.eclipse.equinox.security.storage.promptUser", new Boolean(false));
                    addedNoPrompt = true;
                }
                boolean newPassword = !(node = this.node(PASSWORD_VERIFICATION_NODE)).hasKey(key);
                int passwordType = newPassword ? 1 : 0;
                int i = 0;
                while (i < 20) {
                    PBEKeySpec password = moduleExt.getPassword(container, passwordType);
                    if (password == null) {
                        return null;
                    }
                    passwordExt = new PasswordExt(password, key);
                    if (newPassword) {
                        String test = this.createTestString();
                        CryptoData encryptedValue = this.getCipher().encrypt(passwordExt, StorageUtils.getBytes(test));
                        node.internalPut(key, encryptedValue.toString());
                        this.markModified();
                        setupPasswordRecovery = true;
                        validPassword = true;
                        break;
                    }
                    String encryptedData = node.internalGet(key);
                    CryptoData data = new CryptoData(encryptedData);
                    try {
                        byte[] decryptedData = this.getCipher().decrypt(passwordExt, data);
                        String test = StorageUtils.getString(decryptedData);
                        if (this.verifyTestString(test)) {
                            validPassword = true;
                        }
                    }
                    catch (IllegalBlockSizeException e) {
                        if (!moduleExt.changePassword(e, container)) {
                        }
                    }
                    catch (BadPaddingException e) {
                        if (!moduleExt.changePassword(e, container)) break;
                    }
                    ++i;
                }
                if (!validPassword) break block25;
                Map map2 = this.passwordCache;
                synchronized (map2) {
                    this.passwordCache.put(key, passwordExt);
                }
            }
            finally {
                if (addedNoPrompt) {
                    ((SecurePreferencesContainer)container).removeOption("org.eclipse.equinox.security.storage.promptUser");
                    addedNoPrompt = false;
                }
                lock.release();
            }
        }
        if (!validPassword) {
            throw new StorageException(4, SecAuthMessages.loginNoPassword);
        }
        if (!setupPasswordRecovery) return passwordExt;
        CallbacksProvider.getDefault().setupChallengeResponse(key, container);
        return passwordExt;
    }

    private PasswordExt getDefaultPassword(IPreferencesContainer container) {
        Object passwordHint;
        if (container.hasOption("org.eclipse.equinox.security.storage.defaultPassword") && (passwordHint = container.getOption("org.eclipse.equinox.security.storage.defaultPassword")) instanceof PBEKeySpec) {
            return new PasswordExt((PBEKeySpec)passwordHint, "org.eclipse.equinox.security.noModule");
        }
        return null;
    }

    private String getDefaultModuleID(IPreferencesContainer container) {
        Object idHint;
        if (container.hasOption("org.eclipse.equinox.security.storage.requiredID") && (idHint = container.getOption("org.eclipse.equinox.security.storage.requiredID")) instanceof String) {
            return (String)idHint;
        }
        return null;
    }

    public boolean onChangePassword(IPreferencesContainer container, String moduleID) {
        CryptoData encryptedValue;
        PasswordProviderModuleExt moduleExt;
        try {
            moduleExt = PasswordProviderSelector.getInstance().findStorageModule(moduleID);
        }
        catch (StorageException storageException) {
            return false;
        }
        int passwordType = 3;
        PBEKeySpec password = moduleExt.getPassword(container, passwordType);
        if (password == null) {
            return false;
        }
        String key = moduleExt.getID();
        PasswordExt passwordExt = new PasswordExt(password, key);
        try {
            String test = this.createTestString();
            encryptedValue = this.getCipher().encrypt(passwordExt, StorageUtils.getBytes(test));
        }
        catch (StorageException e) {
            String msg = NLS.bind((String)SecAuthMessages.encryptingError, (Object)key, (Object)PASSWORD_VERIFICATION_NODE);
            AuthPlugin.getDefault().logError(msg, e);
            return false;
        }
        SecurePreferences node = this.node(PASSWORD_VERIFICATION_NODE);
        node.internalPut(key, encryptedValue.toString());
        this.markModified();
        try {
            this.flush();
        }
        catch (IOException e) {
            String msg = NLS.bind((String)SecAuthMessages.encryptingError, (Object)key, (Object)PASSWORD_VERIFICATION_NODE);
            AuthPlugin.getDefault().logError(msg, e);
            return false;
        }
        this.cachePassword(key, passwordExt);
        CallbacksProvider.getDefault().setupChallengeResponse(key, container);
        return true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void cachePassword(String moduleID, PasswordExt passwordExt) {
        Map map = this.passwordCache;
        synchronized (map) {
            this.passwordCache.put(moduleID, passwordExt);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void clearPasswordCache() {
        Map map = this.passwordCache;
        synchronized (map) {
            this.passwordCache.clear();
        }
    }

    private long getLastModified() {
        File file = new File(this.location.getPath());
        return file.lastModified();
    }

    private String createTestString() {
        SecureRandom rand = new SecureRandom();
        rand.setSeed(System.currentTimeMillis());
        long num1 = rand.nextInt(10000);
        long num2 = rand.nextInt(10000);
        StringBuffer tmp = new StringBuffer();
        tmp.append(num1);
        tmp.append('\t');
        tmp.append(num2);
        tmp.append('\t');
        tmp.append(num2);
        tmp.append('\t');
        tmp.append(num1);
        return tmp.toString();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean verifyTestString(String test) {
        if (test == null || test.length() == 0) {
            return false;
        }
        if (PASSWORD_VERIFICATION_SAMPLE.equals(test)) {
            return true;
        }
        String[] parts = test.split("\t");
        if (parts == null || parts.length == 0) {
            return false;
        }
        if (parts.length != 4) {
            return false;
        }
        long num1 = -1L;
        long num2 = -1L;
        int i = 0;
        while (i < 4) {
            if (parts[i] == null || parts[i].length() == 0) {
                return false;
            }
            try {
                switch (i) {
                    case 0: {
                        num1 = Long.decode(parts[i]);
                        break;
                    }
                    case 1: {
                        num2 = Long.decode(parts[i]);
                        break;
                    }
                    case 2: {
                        long tmp = Long.decode(parts[i]);
                        if (tmp != num2) {
                            return false;
                        }
                        break;
                    }
                    case 3: {
                        long tmp = Long.decode(parts[i]);
                        if (tmp != num1) {
                            return false;
                        }
                        break;
                    }
                }
            }
            catch (NumberFormatException numberFormatException) {
                return false;
            }
            ++i;
        }
        return true;
    }
}

