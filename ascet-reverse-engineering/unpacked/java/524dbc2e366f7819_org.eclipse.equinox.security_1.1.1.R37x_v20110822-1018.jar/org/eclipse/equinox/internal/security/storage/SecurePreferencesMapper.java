/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.environment.EnvironmentInfo
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.storage;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.spec.PBEKeySpec;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesContainer;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesRoot;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesWrapper;
import org.eclipse.equinox.internal.security.storage.StorageUtils;
import org.eclipse.equinox.security.storage.ISecurePreferences;
import org.eclipse.osgi.service.environment.EnvironmentInfo;
import org.eclipse.osgi.util.NLS;

public class SecurePreferencesMapper {
    private static final String KEYRING_ARGUMENT = "-eclipse.keyring";
    private static final String PASSWORD_ARGUMENT = "-eclipse.password";
    private static ISecurePreferences defaultPreferences = null;
    private static Map preferences = new HashMap();

    public static ISecurePreferences getDefault() {
        if (defaultPreferences == null) {
            try {
                defaultPreferences = SecurePreferencesMapper.open(null, null);
            }
            catch (IOException e) {
                AuthPlugin.getDefault().logError(SecAuthMessages.keyringNotAvailable, e);
            }
        }
        return defaultPreferences;
    }

    public static void clearDefault() {
        if (defaultPreferences == null) {
            return;
        }
        try {
            defaultPreferences.flush();
        }
        catch (IOException iOException) {}
        SecurePreferencesMapper.close(((SecurePreferencesWrapper)defaultPreferences).getContainer().getRootData());
        defaultPreferences = null;
    }

    public static ISecurePreferences open(URL location, Map options) throws IOException {
        SecurePreferencesRoot root;
        String[] args;
        EnvironmentInfo infoService = AuthPlugin.getDefault().getEnvironmentInfoService();
        if (infoService != null && (args = infoService.getNonFrameworkArgs()) != null && args.length != 0) {
            int i = 0;
            while (i < args.length - 1) {
                if (!args[i + 1].startsWith("-")) {
                    if (location == null && KEYRING_ARGUMENT.equalsIgnoreCase(args[i])) {
                        location = new File(args[i + 1]).toURL();
                    } else if (PASSWORD_ARGUMENT.equalsIgnoreCase(args[i])) {
                        options = SecurePreferencesMapper.processPassword(options, args[i + 1]);
                    }
                }
                ++i;
            }
        }
        if (location == null) {
            location = StorageUtils.getDefaultLocation();
        }
        if (!StorageUtils.isFile(location)) {
            throw new IOException(NLS.bind((String)SecAuthMessages.loginFileURL, (Object)location.toString()));
        }
        String key = location.toString();
        if (preferences.containsKey(key)) {
            root = (SecurePreferencesRoot)preferences.get(key);
        } else {
            root = new SecurePreferencesRoot(location);
            preferences.put(key, root);
        }
        SecurePreferencesContainer container = new SecurePreferencesContainer(root, options);
        return container.getPreferences();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void stop() {
        Map map = preferences;
        synchronized (map) {
            Iterator i = preferences.values().iterator();
            while (i.hasNext()) {
                SecurePreferencesRoot provider = (SecurePreferencesRoot)i.next();
                try {
                    provider.flush();
                }
                catch (IOException e) {
                    AuthPlugin.getDefault().frameworkLogError(SecAuthMessages.errorOnSave, 4, e);
                }
            }
            preferences.clear();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void clearPasswordCache() {
        Map map = preferences;
        synchronized (map) {
            Iterator i = preferences.values().iterator();
            while (i.hasNext()) {
                SecurePreferencesRoot provider = (SecurePreferencesRoot)i.next();
                provider.clearPasswordCache();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void close(SecurePreferencesRoot root) {
        if (root == null) {
            return;
        }
        Map map = preferences;
        synchronized (map) {
            Iterator i = preferences.values().iterator();
            while (i.hasNext()) {
                SecurePreferencesRoot provider = (SecurePreferencesRoot)i.next();
                if (!root.equals(provider)) continue;
                i.remove();
                break;
            }
        }
    }

    private static Map processPassword(Map options, String arg) {
        if (arg == null || arg.length() == 0) {
            return options;
        }
        File file = new File(arg);
        if (!file.canRead()) {
            String msg = NLS.bind((String)SecAuthMessages.unableToReadPswdFile, (Object)arg);
            AuthPlugin.getDefault().logError(msg, null);
            return options;
        }
        BufferedReader is = null;
        try {
            String tmp;
            is = new BufferedReader(new FileReader(file));
            StringBuffer buffer = new StringBuffer();
            while ((tmp = is.readLine()) != null) {
                buffer.append(tmp);
            }
            if (buffer.length() == 0) {
                HashMap<String, PBEKeySpec> hashMap = options;
                return hashMap;
            }
            try {
                if (options == null) {
                    options = new HashMap<String, PBEKeySpec>(1);
                }
                if (!options.containsKey("org.eclipse.equinox.security.storage.defaultPassword")) {
                    options.put("org.eclipse.equinox.security.storage.defaultPassword", new PBEKeySpec(buffer.toString().toCharArray()));
                }
            }
            catch (IOException e) {
                String msg = NLS.bind((String)SecAuthMessages.unableToReadPswdFile, (Object)arg);
                AuthPlugin.getDefault().logError(msg, e);
            }
        }
        finally {
            if (is != null) {
                try {
                    is.close();
                }
                catch (IOException e) {
                    String msg = NLS.bind((String)SecAuthMessages.unableToReadPswdFile, (Object)arg);
                    AuthPlugin.getDefault().logError(msg, e);
                }
            }
        }
        return options;
    }
}

