/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.ui.activities.IIdentifier;
import org.eclipse.ui.activities.IIdentifierListener;
import org.eclipse.ui.activities.IdentifierEvent;
import org.eclipse.ui.internal.util.Util;

final class Identifier
implements IIdentifier {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private static final Set strongReferences;
    private Set activityIds = Collections.EMPTY_SET;
    private transient String[] activityIdsAsArray = new String[0];
    private boolean enabled;
    private transient int hashCode = HASH_INITIAL;
    private String id;
    private List identifierListeners;
    private transient String string;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.Identifier");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
        strongReferences = new HashSet();
    }

    Identifier(String id) {
        if (id == null) {
            throw new NullPointerException();
        }
        this.id = id;
    }

    public void addIdentifierListener(IIdentifierListener identifierListener) {
        if (identifierListener == null) {
            throw new NullPointerException();
        }
        if (this.identifierListeners == null) {
            this.identifierListeners = new ArrayList();
        }
        if (!this.identifierListeners.contains(identifierListener)) {
            this.identifierListeners.add(identifierListener);
        }
        strongReferences.add(this);
    }

    public int compareTo(Object object) {
        Identifier castedObject = (Identifier)object;
        int compareTo = Util.compare((Comparable[])this.activityIdsAsArray, (Comparable[])castedObject.activityIdsAsArray);
        if (compareTo == 0 && (compareTo = Util.compare(this.enabled, castedObject.enabled)) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.id), (Comparable)((Object)castedObject.id));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof Identifier)) {
            return false;
        }
        Identifier castedObject = (Identifier)object;
        if (!Util.equals(this.activityIds, castedObject.activityIds)) {
            return false;
        }
        if (!Util.equals(this.enabled, castedObject.enabled)) {
            return false;
        }
        return Util.equals(this.id, castedObject.id);
    }

    void fireIdentifierChanged(IdentifierEvent identifierEvent) {
        if (identifierEvent == null) {
            throw new NullPointerException();
        }
        if (this.identifierListeners != null) {
            int i = 0;
            while (i < this.identifierListeners.size()) {
                ((IIdentifierListener)this.identifierListeners.get(i)).identifierChanged(identifierEvent);
                ++i;
            }
        }
    }

    public Set getActivityIds() {
        return this.activityIds;
    }

    public String getId() {
        return this.id;
    }

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activityIds);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.enabled);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.id);
            if (this.hashCode == HASH_INITIAL) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void removeIdentifierListener(IIdentifierListener identifierListener) {
        if (identifierListener == null) {
            throw new NullPointerException();
        }
        if (this.identifierListeners != null) {
            this.identifierListeners.remove(identifierListener);
            if (this.identifierListeners.isEmpty()) {
                strongReferences.remove(this);
            }
        }
    }

    boolean setActivityIds(Set activityIds) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!Util.equals(activityIds = Util.safeCopy(activityIds, (Class)clazz), this.activityIds)) {
            this.activityIds = activityIds;
            this.activityIdsAsArray = this.activityIds.toArray(new String[this.activityIds.size()]);
            this.hashCode = HASH_INITIAL;
            this.string = null;
            return true;
        }
        return false;
    }

    boolean setEnabled(boolean enabled) {
        if (enabled != this.enabled) {
            this.enabled = enabled;
            this.hashCode = HASH_INITIAL;
            this.string = null;
            return true;
        }
        return false;
    }

    public String toString() {
        if (this.string == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('[');
            stringBuffer.append(this.activityIds);
            stringBuffer.append(',');
            stringBuffer.append(this.enabled);
            stringBuffer.append(',');
            stringBuffer.append(this.id);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

