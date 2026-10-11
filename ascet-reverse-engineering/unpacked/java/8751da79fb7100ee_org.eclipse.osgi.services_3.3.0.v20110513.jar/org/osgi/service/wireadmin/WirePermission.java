/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.wireadmin;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.BasicPermission;
import java.security.Permission;
import java.security.PermissionCollection;
import org.osgi.service.wireadmin.WirePermissionCollection;

public final class WirePermission
extends BasicPermission {
    static final long serialVersionUID = -5583709391516569321L;
    public static final String PRODUCE = "produce";
    public static final String CONSUME = "consume";
    private static final int ACTION_PRODUCE = 1;
    private static final int ACTION_CONSUME = 2;
    private static final int ACTION_ALL = 3;
    private static final int ACTION_NONE = 0;
    private transient int action_mask;
    private volatile String actions = null;

    public WirePermission(String name, String actions) {
        this(name, WirePermission.parseActions(actions));
    }

    WirePermission(String name, int mask) {
        super(name);
        this.setTransients(mask);
    }

    private synchronized void setTransients(int mask) {
        if (mask == 0 || (mask & 3) != mask) {
            throw new IllegalArgumentException("invalid action string");
        }
        this.action_mask = mask;
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
            if (!(i < 6 || a[i - 6] != 'p' && a[i - 6] != 'P' || a[i - 5] != 'r' && a[i - 5] != 'R' || a[i - 4] != 'o' && a[i - 4] != 'O' || a[i - 3] != 'd' && a[i - 3] != 'D' || a[i - 2] != 'u' && a[i - 2] != 'U' || a[i - 1] != 'c' && a[i - 1] != 'C' || a[i] != 'e' && a[i] != 'E')) {
                matchlen = 7;
                mask |= 1;
            } else if (!(i < 6 || a[i - 6] != 'c' && a[i - 6] != 'C' || a[i - 5] != 'o' && a[i - 5] != 'O' || a[i - 4] != 'n' && a[i - 4] != 'N' || a[i - 3] != 's' && a[i - 3] != 'S' || a[i - 2] != 'u' && a[i - 2] != 'U' || a[i - 1] != 'm' && a[i - 1] != 'M' || a[i] != 'e' && a[i] != 'E')) {
                matchlen = 7;
                mask |= 2;
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
        if (p instanceof WirePermission) {
            WirePermission requested = (WirePermission)p;
            int requestedMask = requested.getActionsMask();
            return (this.getActionsMask() & requestedMask) == requestedMask && super.implies(p);
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
                sb.append(PRODUCE);
                comma = true;
            }
            if ((mask & 2) == 2) {
                if (comma) {
                    sb.append(',');
                }
                sb.append(CONSUME);
            }
            this.actions = result = sb.toString();
        }
        return result;
    }

    public PermissionCollection newPermissionCollection() {
        return new WirePermissionCollection();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof WirePermission)) {
            return false;
        }
        WirePermission wp = (WirePermission)obj;
        return this.getActionsMask() == wp.getActionsMask() && this.getName().equals(wp.getName());
    }

    public int hashCode() {
        int h = 527 + this.getName().hashCode();
        h = 31 * h + this.getActions().hashCode();
        return h;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append('(');
        sb.append(this.getClass().getName());
        sb.append(" \"");
        sb.append(this.getName());
        String a = this.getActions();
        if (a.length() > 0) {
            sb.append("\" \"");
            sb.append(a);
        }
        sb.append("\")");
        return sb.toString();
    }

    private synchronized void writeObject(ObjectOutputStream s) throws IOException {
        if (this.actions == null) {
            this.getActions();
        }
        s.defaultWriteObject();
    }

    private synchronized void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException {
        s.defaultReadObject();
        this.setTransients(WirePermission.parseActions(this.actions));
    }
}

