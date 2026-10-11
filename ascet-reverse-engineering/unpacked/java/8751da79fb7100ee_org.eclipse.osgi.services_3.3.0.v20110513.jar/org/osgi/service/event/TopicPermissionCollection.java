/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.event;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.security.Permission;
import java.security.PermissionCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import org.osgi.service.event.TopicPermission;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class TopicPermissionCollection
extends PermissionCollection {
    static final long serialVersionUID = -614647783533924048L;
    private transient Map<String, TopicPermission> permissions = new HashMap<String, TopicPermission>();
    private boolean all_allowed = false;
    private static final ObjectStreamField[] serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("permissions", class$java$util$Hashtable == null ? (class$java$util$Hashtable = TopicPermissionCollection.class$("java.util.Hashtable")) : class$java$util$Hashtable), new ObjectStreamField("all_allowed", Boolean.TYPE)};
    static /* synthetic */ Class class$java$util$Hashtable;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void add(Permission permission) {
        if (!(permission instanceof TopicPermission)) {
            throw new IllegalArgumentException(((Object)new StringBuffer().append("invalid permission: ").append(permission)).toString());
        }
        if (this.isReadOnly()) {
            throw new SecurityException("attempt to add a Permission to a readonly PermissionCollection");
        }
        TopicPermission tp = (TopicPermission)permission;
        String name = tp.getName();
        int newMask = tp.getActionsMask();
        TopicPermissionCollection topicPermissionCollection = this;
        synchronized (topicPermissionCollection) {
            TopicPermission existing = this.permissions.get(name);
            if (existing != null) {
                int oldMask = existing.getActionsMask();
                if (oldMask != newMask) {
                    this.permissions.put(name, new TopicPermission(name, oldMask | newMask));
                }
            } else {
                this.permissions.put(name, tp);
            }
            if (!this.all_allowed && name.equals("*")) {
                this.all_allowed = true;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean implies(Permission permission) {
        int last;
        TopicPermission x;
        if (!(permission instanceof TopicPermission)) {
            return false;
        }
        TopicPermission requested = (TopicPermission)permission;
        String name = requested.getName();
        int desired = requested.getActionsMask();
        int effective = 0;
        TopicPermissionCollection topicPermissionCollection = this;
        synchronized (topicPermissionCollection) {
            if (this.all_allowed && (x = this.permissions.get("*")) != null && ((effective |= x.getActionsMask()) & desired) == desired) {
                return true;
            }
            x = this.permissions.get(name);
        }
        if (x != null && ((effective |= x.getActionsMask()) & desired) == desired) {
            return true;
        }
        int offset = name.length() - 1;
        while ((last = name.lastIndexOf("/", offset)) != -1) {
            name = ((Object)new StringBuffer().append(name.substring(0, last + 1)).append("*")).toString();
            TopicPermissionCollection topicPermissionCollection2 = this;
            synchronized (topicPermissionCollection2) {
                x = this.permissions.get(name);
            }
            if (x != null && ((effective |= x.getActionsMask()) & desired) == desired) {
                return true;
            }
            offset = last - 1;
        }
        return false;
    }

    @Override
    public synchronized Enumeration<Permission> elements() {
        ArrayList<TopicPermission> all = new ArrayList<TopicPermission>(this.permissions.values());
        return Collections.enumeration(all);
    }

    private synchronized void writeObject(ObjectOutputStream out) throws IOException {
        Hashtable<String, TopicPermission> hashtable = new Hashtable<String, TopicPermission>(this.permissions);
        ObjectOutputStream.PutField pfields = out.putFields();
        pfields.put("permissions", hashtable);
        pfields.put("all_allowed", this.all_allowed);
        out.writeFields();
    }

    private synchronized void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        ObjectInputStream.GetField gfields = in.readFields();
        Hashtable hashtable = (Hashtable)gfields.get("permissions", null);
        this.permissions = new HashMap<String, TopicPermission>(hashtable);
        this.all_allowed = gfields.get("all_allowed", false);
    }

    static /* synthetic */ Class class$(String x0) {
        try {
            return Class.forName(x0);
        }
        catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError().initCause(x1);
        }
    }
}

