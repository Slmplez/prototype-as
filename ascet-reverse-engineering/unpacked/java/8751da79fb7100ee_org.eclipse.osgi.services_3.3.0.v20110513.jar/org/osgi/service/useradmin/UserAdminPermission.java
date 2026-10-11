/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.useradmin;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.BasicPermission;
import java.security.Permission;
import java.security.PermissionCollection;
import org.osgi.service.useradmin.UserAdminPermissionCollection;

public final class UserAdminPermission
extends BasicPermission {
    static final long serialVersionUID = -1179971692401603789L;
    public static final String ADMIN = "admin";
    public static final String CHANGE_PROPERTY = "changeProperty";
    private static final int ACTION_CHANGE_PROPERTY = 1;
    public static final String CHANGE_CREDENTIAL = "changeCredential";
    private static final int ACTION_CHANGE_CREDENTIAL = 2;
    public static final String GET_CREDENTIAL = "getCredential";
    private static final int ACTION_GET_CREDENTIAL = 4;
    private static final int ACTION_ALL = 7;
    static final int ACTION_NONE = 0;
    private volatile String actions = null;
    private transient int action_mask;

    public UserAdminPermission(String name, String actions) {
        this(name, UserAdminPermission.parseActions(actions));
    }

    UserAdminPermission(String name, int mask) {
        super(name);
        this.setTransients(mask);
    }

    private synchronized void setTransients(int mask) {
        if (this.getName().equals(ADMIN)) {
            if (mask != 0) {
                throw new IllegalArgumentException("Actions specified for no-action UserAdminPermission");
            }
        } else if (mask == 0 || (mask & 7) != mask) {
            throw new IllegalArgumentException("Invalid action string");
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
            if (i >= 12 && UserAdminPermission.match_get(a, i - 10) && UserAdminPermission.match_credential(a, i)) {
                matchlen = 13;
                mask |= 4;
            } else if (i >= 13 && UserAdminPermission.match_change(a, i - 8) && UserAdminPermission.match_property(a, i)) {
                matchlen = 14;
                mask |= 1;
            } else if (i >= 15 && UserAdminPermission.match_change(a, i - 10) && UserAdminPermission.match_credential(a, i)) {
                matchlen = 16;
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

    private static boolean match_change(char[] a, int i) {
        return !(a[i - 5] != 'c' && a[i - 5] != 'C' || a[i - 4] != 'h' && a[i - 4] != 'H' || a[i - 3] != 'a' && a[i - 3] != 'A' || a[i - 2] != 'n' && a[i - 2] != 'N' || a[i - 1] != 'g' && a[i - 1] != 'G' || a[i - 0] != 'e' && a[i - 0] != 'E');
    }

    private static boolean match_get(char[] a, int i) {
        return !(a[i - 2] != 'g' && a[i - 2] != 'G' || a[i - 1] != 'e' && a[i - 1] != 'E' || a[i - 0] != 't' && a[i - 0] != 'T');
    }

    private static boolean match_property(char[] a, int i) {
        return !(a[i - 7] != 'p' && a[i - 7] != 'P' || a[i - 6] != 'r' && a[i - 6] != 'R' || a[i - 5] != 'o' && a[i - 5] != 'O' || a[i - 4] != 'p' && a[i - 4] != 'P' || a[i - 3] != 'e' && a[i - 3] != 'E' || a[i - 2] != 'r' && a[i - 2] != 'R' || a[i - 1] != 't' && a[i - 1] != 'T' || a[i - 0] != 'y' && a[i - 0] != 'Y');
    }

    private static boolean match_credential(char[] a, int i) {
        return !(a[i - 9] != 'c' && a[i - 9] != 'C' || a[i - 8] != 'r' && a[i - 8] != 'R' || a[i - 7] != 'e' && a[i - 7] != 'E' || a[i - 6] != 'd' && a[i - 6] != 'D' || a[i - 5] != 'e' && a[i - 5] != 'E' || a[i - 4] != 'n' && a[i - 4] != 'N' || a[i - 3] != 't' && a[i - 3] != 'T' || a[i - 2] != 'i' && a[i - 2] != 'I' || a[i - 1] != 'a' && a[i - 1] != 'A' || a[i - 0] != 'l' && a[i - 0] != 'L');
    }

    public boolean implies(Permission p) {
        if (p instanceof UserAdminPermission) {
            UserAdminPermission requested = (UserAdminPermission)p;
            int mask = this.getActionsMask();
            int targetMask = requested.getActionsMask();
            return (targetMask & mask) == targetMask && (targetMask != 0 || mask == 0) && super.implies(p);
        }
        return false;
    }

    public String getActions() {
        String result = this.actions;
        if (result == null) {
            StringBuffer sb = new StringBuffer();
            boolean comma = false;
            int mask = this.getActionsMask();
            if ((mask & 2) == 2) {
                sb.append(CHANGE_CREDENTIAL);
                comma = true;
            }
            if ((mask & 1) == 1) {
                if (comma) {
                    sb.append(',');
                }
                sb.append(CHANGE_PROPERTY);
                comma = true;
            }
            if ((mask & 4) == 4) {
                if (comma) {
                    sb.append(',');
                }
                sb.append(GET_CREDENTIAL);
            }
            this.actions = result = sb.toString();
        }
        return result;
    }

    public PermissionCollection newPermissionCollection() {
        return new UserAdminPermissionCollection();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UserAdminPermission)) {
            return false;
        }
        UserAdminPermission uap = (UserAdminPermission)obj;
        return this.getActionsMask() == uap.getActionsMask() && this.getName().equals(uap.getName());
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
        this.setTransients(UserAdminPermission.parseActions(this.actions));
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
}

