/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.storage.friends;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesContainer;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesWrapper;
import org.eclipse.equinox.security.storage.ISecurePreferences;
import org.eclipse.equinox.security.storage.StorageException;
import org.eclipse.osgi.util.NLS;

public class ReEncrypter {
    private final ISecurePreferences root;
    private final String moduleID;
    private boolean processedOK = true;
    private ArrayList elements = new ArrayList();

    public ReEncrypter(ISecurePreferences prefs, String moduleID) {
        this.moduleID = moduleID;
        this.root = prefs.node("/");
    }

    public boolean decrypt() {
        this.decrypt(this.root);
        return this.processedOK;
    }

    private void decrypt(ISecurePreferences node) {
        int i;
        String[] keys = node.keys();
        if (keys.length > 0) {
            HashMap<String, String> map = new HashMap<String, String>(keys.length);
            i = 0;
            while (i < keys.length) {
                try {
                    String encryptionModule;
                    if (node.isEncrypted(keys[i]) && node instanceof SecurePreferencesWrapper && (encryptionModule = ((SecurePreferencesWrapper)node).getModule(keys[i])) != null && encryptionModule.equals(this.moduleID)) {
                        map.put(keys[i], node.get(keys[i], null));
                    }
                }
                catch (StorageException e) {
                    String msg = NLS.bind((String)SecAuthMessages.decryptingError, (Object)keys[i], (Object)node.absolutePath());
                    AuthPlugin.getDefault().logError(msg, e);
                    this.processedOK = false;
                }
                ++i;
            }
            if (map.size() != 0) {
                this.elements.add(new TmpElement(node.absolutePath(), map));
            }
        }
        String[] childrenNames = node.childrenNames();
        i = 0;
        while (i < childrenNames.length) {
            this.decrypt(node.node(childrenNames[i]));
            ++i;
        }
    }

    public boolean switchToNewPassword() {
        return ((SecurePreferencesWrapper)this.root).passwordChanging(this.moduleID);
    }

    public boolean encrypt() {
        boolean result = true;
        SecurePreferencesContainer container = ((SecurePreferencesWrapper)this.root).getContainer();
        Object originalProperty = container.getOption("org.eclipse.equinox.security.storage.requiredID");
        container.setOption("org.eclipse.equinox.security.storage.requiredID", this.moduleID);
        Iterator i = this.elements.iterator();
        while (i.hasNext()) {
            TmpElement element = (TmpElement)i.next();
            ISecurePreferences node = this.root.node(element.getPath());
            Map values = element.getValues();
            Iterator j = values.keySet().iterator();
            while (j.hasNext()) {
                String key = (String)j.next();
                try {
                    node.put(key, (String)values.get(key), true);
                }
                catch (StorageException e) {
                    String msg = NLS.bind((String)SecAuthMessages.encryptingError, (Object)key, (Object)node.absolutePath());
                    AuthPlugin.getDefault().logError(msg, e);
                    result = false;
                }
            }
        }
        if (originalProperty != null) {
            container.setOption("org.eclipse.equinox.security.storage.requiredID", originalProperty);
        } else {
            container.removeOption("org.eclipse.equinox.security.storage.requiredID");
        }
        return result;
    }

    private class TmpElement {
        private String path;
        private Map values;

        public TmpElement(String path, Map values) {
            this.path = path;
            this.values = values;
        }

        public String getPath() {
            return this.path;
        }

        public Map getValues() {
            return this.values;
        }
    }
}

