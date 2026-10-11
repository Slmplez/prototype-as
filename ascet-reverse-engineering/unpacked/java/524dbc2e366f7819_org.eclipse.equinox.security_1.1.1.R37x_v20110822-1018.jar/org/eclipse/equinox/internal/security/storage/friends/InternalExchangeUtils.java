/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.security.storage.friends;

import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.crypto.spec.PBEKeySpec;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.storage.JavaEncryption;
import org.eclipse.equinox.internal.security.storage.PasswordExt;
import org.eclipse.equinox.internal.security.storage.PasswordManagement;
import org.eclipse.equinox.internal.security.storage.PasswordProviderSelector;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesMapper;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesRoot;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesWrapper;
import org.eclipse.equinox.internal.security.storage.StorageUtils;
import org.eclipse.equinox.internal.security.storage.friends.PasswordProviderDescription;
import org.eclipse.equinox.security.storage.ISecurePreferences;
import org.eclipse.equinox.security.storage.SecurePreferencesFactory;
import org.eclipse.equinox.security.storage.provider.IPreferencesContainer;
import org.osgi.framework.BundleContext;

public class InternalExchangeUtils {
    public static final String HINT_PASSWORD_AUTOGEN = "AutomaticPasswordGeneration";
    private static final String JUNIT_APPS1 = "org.eclipse.pde.junit.runtime.";
    private static final String JUNIT_APPS2 = "org.eclipse.test.";

    public static Map ciphersDetectAvailable() {
        return new JavaEncryption().detect();
    }

    public static List passwordProvidersFind() {
        List availableModules = PasswordProviderSelector.getInstance().findAvailableModules(null);
        ArrayList<PasswordProviderDescription> result = new ArrayList<PasswordProviderDescription>(availableModules.size());
        Iterator i = availableModules.iterator();
        while (i.hasNext()) {
            PasswordProviderSelector.ExtStorageModule module = (PasswordProviderSelector.ExtStorageModule)i.next();
            result.add(new PasswordProviderDescription(module.name, module.moduleID, module.priority, module.description, module.hints));
        }
        return result;
    }

    public static void passwordProvidersReset() {
        PasswordProviderSelector.getInstance().clearCaches();
    }

    public static boolean isLoggedIn() {
        return PasswordProviderSelector.getInstance().isLoggedIn();
    }

    public static URL defaultStorageLocation() {
        ISecurePreferences defaultStorage = SecurePreferencesFactory.getDefault();
        if (defaultStorage == null) {
            return null;
        }
        return ((SecurePreferencesWrapper)defaultStorage).getContainer().getLocation();
    }

    public static void defaultStorageDelete() {
        ISecurePreferences defaultStorage = SecurePreferencesFactory.getDefault();
        if (defaultStorage == null) {
            return;
        }
        URL location = InternalExchangeUtils.defaultStorageLocation();
        if (location == null) {
            return;
        }
        SecurePreferencesMapper.clearDefault();
        if (StorageUtils.exists(location)) {
            StorageUtils.delete(location);
        }
    }

    public static void setupRecovery(String[][] userParts, String moduleID, IPreferencesContainer container) {
        PasswordManagement.setupRecovery(userParts, moduleID, container);
    }

    public static String[] getPasswordRecoveryQuestions(ISecurePreferences node, String moduleID) {
        SecurePreferencesRoot rootNode = ((SecurePreferencesWrapper)node).getContainer().getRootData();
        return PasswordManagement.getPasswordRecoveryQuestions(rootNode, moduleID);
    }

    public static String recoverPassword(String[] answers, ISecurePreferences node, String moduleID) {
        SecurePreferencesRoot rootNode = ((SecurePreferencesWrapper)node).getContainer().getRootData();
        String password = PasswordManagement.recoverPassword(answers, rootNode, moduleID);
        if (password != null) {
            rootNode.cachePassword(moduleID, new PasswordExt(new PBEKeySpec(password.toCharArray()), moduleID));
        }
        return password;
    }

    public static boolean isModified(ISecurePreferences node) {
        SecurePreferencesRoot rootData = ((SecurePreferencesWrapper)node).getContainer().getRootData();
        return rootData.isModified();
    }

    public static boolean isJUnitApp() {
        BundleContext context = AuthPlugin.getDefault().getBundleContext();
        if (context == null) {
            return false;
        }
        String app = context.getProperty("eclipse.application");
        if (app == null) {
            return false;
        }
        if (app.startsWith(JUNIT_APPS1)) {
            return true;
        }
        return app.startsWith(JUNIT_APPS2);
    }
}

