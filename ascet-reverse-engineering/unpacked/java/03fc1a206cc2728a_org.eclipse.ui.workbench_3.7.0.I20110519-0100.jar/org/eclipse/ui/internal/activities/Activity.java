/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 */
package org.eclipse.ui.internal.activities;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.core.expressions.Expression;
import org.eclipse.ui.activities.ActivityEvent;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityListener;
import org.eclipse.ui.activities.IActivityPatternBinding;
import org.eclipse.ui.activities.IActivityRequirementBinding;
import org.eclipse.ui.activities.NotDefinedException;
import org.eclipse.ui.internal.activities.ActivityPatternBinding;
import org.eclipse.ui.internal.util.Util;

final class Activity
implements IActivity {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private static final Set strongReferences;
    private Set activityRequirementBindings;
    private transient IActivityRequirementBinding[] activityRequirementBindingsAsArray;
    private List activityListeners;
    private Set activityPatternBindings;
    private transient IActivityPatternBinding[] activityPatternBindingsAsArray;
    private boolean defined;
    private boolean enabled;
    private transient int hashCode = HASH_INITIAL;
    private String id;
    private String name;
    private transient String string;
    private String description;
    private boolean defaultEnabled;
    private Expression expression;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.Activity");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
        strongReferences = new HashSet();
    }

    Activity(String id) {
        if (id == null) {
            throw new NullPointerException();
        }
        this.id = id;
    }

    public void addActivityListener(IActivityListener activityListener) {
        if (activityListener == null) {
            throw new NullPointerException();
        }
        if (this.activityListeners == null) {
            this.activityListeners = new ArrayList();
        }
        if (!this.activityListeners.contains(activityListener)) {
            this.activityListeners.add(activityListener);
        }
        strongReferences.add(this);
    }

    public int compareTo(Object object) {
        Activity castedObject = (Activity)object;
        int compareTo = Util.compare(this.activityRequirementBindingsAsArray, castedObject.activityRequirementBindingsAsArray);
        if (compareTo == 0 && (compareTo = Util.compare(this.activityPatternBindingsAsArray, castedObject.activityPatternBindingsAsArray)) == 0 && (compareTo = Util.compare(this.defined, castedObject.defined)) == 0 && (compareTo = Util.compare(this.enabled, castedObject.enabled)) == 0 && (compareTo = Util.compare((Comparable)((Object)this.id), (Comparable)((Object)castedObject.id))) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.name), (Comparable)((Object)castedObject.name));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof Activity)) {
            return false;
        }
        Activity castedObject = (Activity)object;
        if (!Util.equals(this.activityRequirementBindings, castedObject.activityRequirementBindings)) {
            return false;
        }
        if (!Util.equals(this.activityPatternBindings, castedObject.activityPatternBindings)) {
            return false;
        }
        if (!Util.equals(this.defined, castedObject.defined)) {
            return false;
        }
        if (!Util.equals(this.enabled, castedObject.enabled)) {
            return false;
        }
        if (!Util.equals(this.id, castedObject.id)) {
            return false;
        }
        return Util.equals(this.name, castedObject.name);
    }

    void fireActivityChanged(ActivityEvent activityEvent) {
        if (activityEvent == null) {
            throw new NullPointerException();
        }
        if (this.activityListeners != null) {
            int i = 0;
            while (i < this.activityListeners.size()) {
                ((IActivityListener)this.activityListeners.get(i)).activityChanged(activityEvent);
                ++i;
            }
        }
    }

    public Set getActivityRequirementBindings() {
        return this.activityRequirementBindings;
    }

    public Set getActivityPatternBindings() {
        return this.activityPatternBindings;
    }

    public String getId() {
        return this.id;
    }

    public String getName() throws NotDefinedException {
        if (!this.defined) {
            throw new NotDefinedException();
        }
        return this.name;
    }

    public Expression getExpression() {
        return this.expression;
    }

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activityRequirementBindings);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activityPatternBindings);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.defined);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.enabled);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.id);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.name);
            if (this.hashCode == HASH_INITIAL) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    public boolean isDefined() {
        return this.defined;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isMatch(String string) {
        if (this.isDefined()) {
            Iterator iterator = this.activityPatternBindings.iterator();
            while (iterator.hasNext()) {
                ActivityPatternBinding activityPatternBinding = (ActivityPatternBinding)iterator.next();
                if (!activityPatternBinding.isMatch(string)) continue;
                return true;
            }
        }
        return false;
    }

    public void removeActivityListener(IActivityListener activityListener) {
        if (activityListener == null) {
            throw new NullPointerException();
        }
        if (this.activityListeners != null) {
            this.activityListeners.remove(activityListener);
        }
        if (this.activityListeners.isEmpty()) {
            strongReferences.remove(this);
        }
    }

    boolean setActivityRequirementBindings(Set activityRequirementBindings) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.activities.IActivityRequirementBinding");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!Util.equals(activityRequirementBindings = Util.safeCopy(activityRequirementBindings, (Class)clazz), this.activityRequirementBindings)) {
            this.activityRequirementBindings = activityRequirementBindings;
            this.activityRequirementBindingsAsArray = this.activityRequirementBindings.toArray(new IActivityRequirementBinding[this.activityRequirementBindings.size()]);
            this.hashCode = HASH_INITIAL;
            this.string = null;
            return true;
        }
        return false;
    }

    boolean setActivityPatternBindings(Set activityPatternBindings) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.activities.IActivityPatternBinding");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!Util.equals(activityPatternBindings = Util.safeCopy(activityPatternBindings, (Class)clazz), this.activityPatternBindings)) {
            this.activityPatternBindings = activityPatternBindings;
            this.activityPatternBindingsAsArray = this.activityPatternBindings.toArray(new IActivityPatternBinding[this.activityPatternBindings.size()]);
            this.hashCode = HASH_INITIAL;
            this.string = null;
            return true;
        }
        return false;
    }

    boolean setDefined(boolean defined) {
        if (defined != this.defined) {
            this.defined = defined;
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

    boolean setName(String name) {
        if (!Util.equals(name, this.name)) {
            this.name = name;
            this.hashCode = HASH_INITIAL;
            this.string = null;
            return true;
        }
        return false;
    }

    void setExpression(Expression exp) {
        this.expression = exp;
    }

    boolean setDescription(String description) {
        if (!Util.equals(description, this.description)) {
            this.description = description;
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
            stringBuffer.append(this.activityRequirementBindings);
            stringBuffer.append(',');
            stringBuffer.append(this.activityPatternBindings);
            stringBuffer.append(',');
            stringBuffer.append(this.defined);
            stringBuffer.append(',');
            stringBuffer.append(this.enabled);
            stringBuffer.append(',');
            stringBuffer.append(this.id);
            stringBuffer.append(',');
            stringBuffer.append(this.name);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }

    public String getDescription() throws NotDefinedException {
        if (!this.defined) {
            throw new NotDefinedException();
        }
        return this.description;
    }

    public boolean isDefaultEnabled() {
        return this.defaultEnabled;
    }

    boolean setDefaultEnabled(boolean defaultEnabled) {
        if (!Util.equals(defaultEnabled, this.defaultEnabled)) {
            this.defaultEnabled = defaultEnabled;
            this.hashCode = HASH_INITIAL;
            this.string = null;
            return true;
        }
        return false;
    }
}

