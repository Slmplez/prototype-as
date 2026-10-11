/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.preferences;

import java.util.EventObject;
import org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public interface IEclipsePreferences
extends Preferences {
    public void addNodeChangeListener(INodeChangeListener var1);

    public void removeNodeChangeListener(INodeChangeListener var1);

    public void addPreferenceChangeListener(IPreferenceChangeListener var1);

    public void removePreferenceChangeListener(IPreferenceChangeListener var1);

    public void removeNode() throws BackingStoreException;

    public Preferences node(String var1);

    public void accept(IPreferenceNodeVisitor var1) throws BackingStoreException;

    public static interface INodeChangeListener {
        public void added(NodeChangeEvent var1);

        public void removed(NodeChangeEvent var1);
    }

    public static interface IPreferenceChangeListener {
        public void preferenceChange(PreferenceChangeEvent var1);
    }

    public static final class NodeChangeEvent
    extends EventObject {
        private static final long serialVersionUID = 1L;
        private Preferences child;

        public NodeChangeEvent(Preferences parent, Preferences child) {
            super(parent);
            this.child = child;
        }

        public Preferences getParent() {
            return (Preferences)this.getSource();
        }

        public Preferences getChild() {
            return this.child;
        }
    }

    public static final class PreferenceChangeEvent
    extends EventObject {
        private static final long serialVersionUID = 1L;
        private String key;
        private Object newValue;
        private Object oldValue;

        public PreferenceChangeEvent(Object node, String key, Object oldValue, Object newValue) {
            super(node);
            if (key == null || !(node instanceof Preferences)) {
                throw new IllegalArgumentException();
            }
            this.key = key;
            this.newValue = newValue;
            this.oldValue = oldValue;
        }

        public Preferences getNode() {
            return (Preferences)this.source;
        }

        public String getKey() {
            return this.key;
        }

        public Object getNewValue() {
            return this.newValue;
        }

        public Object getOldValue() {
            return this.oldValue;
        }
    }
}

