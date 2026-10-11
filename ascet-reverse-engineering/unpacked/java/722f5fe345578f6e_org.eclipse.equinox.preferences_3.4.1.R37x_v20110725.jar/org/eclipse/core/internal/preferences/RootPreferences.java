/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.preferences;

import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class RootPreferences
extends EclipsePreferences {
    public RootPreferences() {
        super(null, "");
    }

    public void flush() throws BackingStoreException {
        BackingStoreException exception = null;
        String[] names = this.childrenNames();
        int i = 0;
        while (i < names.length) {
            block4: {
                try {
                    this.node(names[i]).flush();
                }
                catch (BackingStoreException e) {
                    if (exception != null) break block4;
                    exception = e;
                }
            }
            ++i;
        }
        if (exception != null) {
            throw exception;
        }
    }

    protected synchronized IEclipsePreferences getChild(String key, Object context) {
        Object value = null;
        IEclipsePreferences child = null;
        if (this.children != null) {
            value = this.children.get(key);
        }
        if (value != null) {
            if (value instanceof IEclipsePreferences) {
                return value;
            }
            child = PreferencesService.getDefault().createNode(key);
            this.addChild(key, child);
        }
        return child;
    }

    protected synchronized IEclipsePreferences[] getChildren() {
        String[] childNames = this.childrenNames();
        IEclipsePreferences[] childNodes = new IEclipsePreferences[childNames.length];
        int i = 0;
        while (i < childNames.length) {
            childNodes[i] = this.getChild(childNames[i], null);
            ++i;
        }
        return childNodes;
    }

    public Preferences node(String path) {
        return this.getNode(path, true);
    }

    public Preferences getNode(String path, boolean create) {
        IEclipsePreferences child;
        if (path.length() == 0 || path.length() == 1 && path.charAt(0) == '/') {
            return this;
        }
        int startIndex = path.charAt(0) == '/' ? 1 : 0;
        int endIndex = path.indexOf(47, startIndex + 1);
        String scope = path.substring(startIndex, endIndex == -1 ? path.length() : endIndex);
        if (create) {
            child = this.getChild(scope, null);
            if (child == null) {
                child = new EclipsePreferences(this, scope);
                this.addChild(scope, child);
            }
        } else {
            child = this.getChild(scope, null, false);
            if (child == null) {
                return null;
            }
        }
        return child.node(endIndex == -1 ? "" : path.substring(endIndex + 1));
    }

    public void sync() throws BackingStoreException {
        BackingStoreException exception = null;
        String[] names = this.childrenNames();
        int i = 0;
        while (i < names.length) {
            block4: {
                try {
                    this.node(names[i]).sync();
                }
                catch (BackingStoreException e) {
                    if (exception != null) break block4;
                    exception = e;
                }
            }
            ++i;
        }
        if (exception != null) {
            throw exception;
        }
    }
}

