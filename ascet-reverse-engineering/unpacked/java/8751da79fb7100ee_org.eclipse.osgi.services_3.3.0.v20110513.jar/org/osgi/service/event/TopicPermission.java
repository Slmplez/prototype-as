/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.event;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.Permission;
import java.security.PermissionCollection;
import org.osgi.service.event.TopicPermissionCollection;

public final class TopicPermission
extends Permission {
    static final long serialVersionUID = -5855563886961618300L;
    public static final String PUBLISH = "publish";
    public static final String SUBSCRIBE = "subscribe";
    private static final int ACTION_PUBLISH = 1;
    private static final int ACTION_SUBSCRIBE = 2;
    private static final int ACTION_ALL = 3;
    private static final int ACTION_NONE = 0;
    private transient int action_mask;
    private volatile transient String prefix;
    private volatile String actions = null;

    public TopicPermission(String name, String actions) {
        this(name, TopicPermission.parseActions(actions));
    }

    TopicPermission(String name, int mask) {
        super(name);
        this.setTransients(mask);
    }

    private synchronized void setTransients(int mask) {
        String name = this.getName();
        if (name == null || name.length() == 0) {
            throw new IllegalArgumentException("invalid name");
        }
        if (mask == 0 || (mask & 3) != mask) {
            throw new IllegalArgumentException("invalid action string");
        }
        this.action_mask = mask;
        this.prefix = name.equals("*") ? "" : (name.endsWith("/*") ? name.substring(0, name.length() - 1) : null);
    }

    synchronized int getActionsMask() {
        return this.action_mask;
    }

    private static int parseActions(String actions) {
        boolean seencomma = false;
        int mask = 0;
        if (actions == null) {
            return mask;
        }
        char[] a = actions.toCharArray();
        int i = a.length - 1;
        if (i < 0) {
            return mask;
        }
        while (i != -1) {
            int matchlen;
            char c;
            while (i != -1 && ((c = a[i]) == ' ' || c == '\r' || c == '\n' || c == '\f' || c == '\t')) {
                --i;
            }
            if (!(i < 8 || a[i - 8] != 's' && a[i - 8] != 'S' || a[i - 7] != 'u' && a[i - 7] != 'U' || a[i - 6] != 'b' && a[i - 6] != 'B' || a[i - 5] != 's' && a[i - 5] != 'S' || a[i - 4] != 'c' && a[i - 4] != 'C' || a[i - 3] != 'r' && a[i - 3] != 'R' || a[i - 2] != 'i' && a[i - 2] != 'I' || a[i - 1] != 'b' && a[i - 1] != 'B' || a[i] != 'e' && a[i] != 'E')) {
                matchlen = 9;
                mask |= 2;
            } else if (!(i < 6 || a[i - 6] != 'p' && a[i - 6] != 'P' || a[i - 5] != 'u' && a[i - 5] != 'U' || a[i - 4] != 'b' && a[i - 4] != 'B' || a[i - 3] != 'l' && a[i - 3] != 'L' || a[i - 2] != 'i' && a[i - 2] != 'I' || a[i - 1] != 's' && a[i - 1] != 'S' || a[i] != 'h' && a[i] != 'H')) {
                matchlen = 7;
                mask |= 1;
            } else {
                throw new IllegalArgumentException("invalid permission: " + actions);
            }
            seencomma = false;
            while (i >= matchlen && !seencomma) {
                switch (a[i - matchlen]) {
                    case ',': {
                        seencomma = true;
                    }
                    case '\t': 
                    case '\n': 
                    case '\f': 
                    case '\r': 
                    case ' ': {
                        break;
                    }
                    default: {
                        throw new IllegalArgumentException("invalid permission: " + actions);
                    }
                }
                --i;
            }
            i -= matchlen;
        }
        if (seencomma) {
            throw new IllegalArgumentException("invalid permission: " + actions);
        }
        return mask;
    }

    public boolean implies(Permission p) {
        if (p instanceof TopicPermission) {
            TopicPermission requested = (TopicPermission)p;
            int requestedMask = requested.getActionsMask();
            if ((this.getActionsMask() & requestedMask) == requestedMask) {
                String requestedName = requested.getName();
                String pre = this.prefix;
                if (pre != null) {
                    return requestedName.startsWith(pre);
                }
                return requestedName.equals(this.getName());
            }
        }
        return false;
    }

    public String getActions() {
        String result = this.actions;
        if (result == null) {
            StringBuffer sb = new StringBuffer();
            boolean comma = false;
            int mask = this.getActionsMask();
            if ((mask & 1) == 1) {
                sb.append(PUBLISH);
                comma = true;
            }
            if ((mask & 2) == 2) {
                if (comma) {
                    sb.append(',');
                }
                sb.append(SUBSCRIBE);
            }
            this.actions = result = ((Object)sb).toString();
        }
        return result;
    }

    public PermissionCollection newPermissionCollection() {
        return new TopicPermissionCollection();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TopicPermission)) {
            return false;
        }
        TopicPermission tp = (TopicPermission)obj;
        return this.getActionsMask() == tp.getActionsMask() && this.getName().equals(tp.getName());
    }

    public int hashCode() {
        int h = 527 + this.getName().hashCode();
        h = 31 * h + this.getActions().hashCode();
        return h;
    }

    private synchronized void writeObject(ObjectOutputStream s) throws IOException {
        if (this.actions == null) {
            this.getActions();
        }
        s.defaultWriteObject();
    }

    private synchronized void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException {
        s.defaultReadObject();
        this.setTransients(TopicPermission.parseActions(this.actions));
    }
}

