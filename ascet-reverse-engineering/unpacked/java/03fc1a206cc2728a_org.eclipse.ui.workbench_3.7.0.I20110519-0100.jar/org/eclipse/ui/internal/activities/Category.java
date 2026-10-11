/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.ui.activities.CategoryEvent;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.ICategoryActivityBinding;
import org.eclipse.ui.activities.ICategoryListener;
import org.eclipse.ui.activities.NotDefinedException;
import org.eclipse.ui.internal.util.Util;

final class Category
implements ICategory {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private static final Set strongReferences;
    private Set categoryActivityBindings;
    private transient ICategoryActivityBinding[] categoryActivityBindingsAsArray;
    private List categoryListeners;
    private boolean defined;
    private transient int hashCode = HASH_INITIAL;
    private String id;
    private String name;
    private transient String string;
    private String description;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.Category");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
        strongReferences = new HashSet();
    }

    Category(String id) {
        if (id == null) {
            throw new NullPointerException();
        }
        this.id = id;
    }

    public void addCategoryListener(ICategoryListener categoryListener) {
        if (categoryListener == null) {
            throw new NullPointerException();
        }
        if (this.categoryListeners == null) {
            this.categoryListeners = new ArrayList();
        }
        if (!this.categoryListeners.contains(categoryListener)) {
            this.categoryListeners.add(categoryListener);
        }
        strongReferences.add(this);
    }

    public int compareTo(Object object) {
        Category castedObject = (Category)object;
        int compareTo = Util.compare(this.categoryActivityBindingsAsArray, castedObject.categoryActivityBindingsAsArray);
        if (compareTo == 0 && (compareTo = Util.compare(this.defined, castedObject.defined)) == 0 && (compareTo = Util.compare((Comparable)((Object)this.id), (Comparable)((Object)castedObject.id))) == 0) {
            compareTo = Util.compare((Comparable)((Object)this.name), (Comparable)((Object)castedObject.name));
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof Category)) {
            return false;
        }
        Category castedObject = (Category)object;
        if (!Util.equals(this.categoryActivityBindings, castedObject.categoryActivityBindings)) {
            return false;
        }
        if (!Util.equals(this.defined, castedObject.defined)) {
            return false;
        }
        if (!Util.equals(this.id, castedObject.id)) {
            return false;
        }
        return Util.equals(this.name, castedObject.name);
    }

    void fireCategoryChanged(CategoryEvent categoryEvent) {
        if (categoryEvent == null) {
            throw new NullPointerException();
        }
        if (this.categoryListeners != null) {
            int i = 0;
            while (i < this.categoryListeners.size()) {
                ((ICategoryListener)this.categoryListeners.get(i)).categoryChanged(categoryEvent);
                ++i;
            }
        }
    }

    public Set getCategoryActivityBindings() {
        return this.categoryActivityBindings;
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

    public int hashCode() {
        if (this.hashCode == HASH_INITIAL) {
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.categoryActivityBindings);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.defined);
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

    public void removeCategoryListener(ICategoryListener categoryListener) {
        if (categoryListener == null) {
            throw new NullPointerException();
        }
        if (this.categoryListeners != null) {
            this.categoryListeners.remove(categoryListener);
        }
        if (this.categoryListeners.isEmpty()) {
            strongReferences.remove(this);
        }
    }

    boolean setCategoryActivityBindings(Set categoryActivityBindings) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.activities.ICategoryActivityBinding");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!Util.equals(categoryActivityBindings = Util.safeCopy(categoryActivityBindings, (Class)clazz), this.categoryActivityBindings)) {
            this.categoryActivityBindings = categoryActivityBindings;
            this.categoryActivityBindingsAsArray = this.categoryActivityBindings.toArray(new ICategoryActivityBinding[this.categoryActivityBindings.size()]);
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

    boolean setName(String name) {
        if (!Util.equals(name, this.name)) {
            this.name = name;
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
            stringBuffer.append(this.categoryActivityBindings);
            stringBuffer.append(',');
            stringBuffer.append(this.defined);
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

    public boolean setDescription(String description) {
        if (!Util.equals(description, this.description)) {
            this.description = description;
            this.hashCode = HASH_INITIAL;
            this.string = null;
            return true;
        }
        return false;
    }
}

