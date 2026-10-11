/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 */
package org.eclipse.emf.validation.model;

import com.ibm.icu.text.Collator;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Category
implements Comparable<Category> {
    static final String SLASH = "/";
    static final Category GLOBAL_NAMESPACE = new Category("", null);
    static final Category DEFAULT_CATEGORY = new Category("", GLOBAL_NAMESPACE);
    private static Collator collator;
    private final String id;
    private String path;
    private String name;
    private String qualifiedName;
    private String description;
    private boolean mandatory;
    private final Category parent;
    private final Map<String, Category> children = new HashMap<String, Category>();
    private final Set<IConstraintDescriptor> constraints = new HashSet<IConstraintDescriptor>();

    private Category(String id, Category parent) {
        assert (id != null);
        this.id = id;
        this.parent = parent;
        this.name = id;
        if (parent != null) {
            parent.addChild(this);
        }
    }

    public final String getId() {
        return this.id;
    }

    public final String getPath() {
        if (this.path == null) {
            this.path = this.getParent() == null ? this.getId() : String.valueOf(this.getParent().getPath()) + SLASH + this.getId();
        }
        return this.path;
    }

    public final String getName() {
        return this.name;
    }

    public final String getQualifiedName() {
        if (this.qualifiedName == null) {
            this.qualifiedName = this.getParent() == null ? this.getName() : String.valueOf(this.getParent().getQualifiedName()) + SLASH + this.getName();
        }
        return this.qualifiedName;
    }

    public String getDescription() {
        return this.description;
    }

    public Set<IConstraintDescriptor> getConstraints() {
        return Collections.unmodifiableSet(this.constraints);
    }

    public void addConstraint(IConstraintDescriptor constraint) {
        if (!this.constraints.contains(constraint)) {
            this.constraints.add(constraint);
            constraint.addCategory(this);
        }
    }

    public void removeConstraint(IConstraintDescriptor constraint) {
        if (this.constraints.contains(constraint)) {
            this.constraints.remove(constraint);
            constraint.removeCategory(this);
        }
    }

    public Category getParent() {
        Category result = this.getParentInternal();
        if (result == GLOBAL_NAMESPACE) {
            result = null;
        }
        return result;
    }

    private Category getParentInternal() {
        return this.parent;
    }

    public SortedSet<Category> getChildren() {
        return Collections.unmodifiableSortedSet(new TreeSet<Category>(this.children.values()));
    }

    public Category getChild(String childId) {
        return this.children.get(childId);
    }

    public Category getDescendent(String descendentPath) {
        return this.getDescendent(descendentPath, false);
    }

    Category getDescendent(String descendentPath, boolean create) {
        if (descendentPath.startsWith(SLASH)) {
            return this.getDescendent(descendentPath.substring(1), create);
        }
        int slash = descendentPath.indexOf(SLASH);
        if (slash < 0) {
            Category result = this.getChild(descendentPath);
            if (result == null && create) {
                result = new Category(descendentPath, this);
            }
            return result;
        }
        String childId = descendentPath.substring(0, slash);
        Category child = this.getChild(childId);
        if (child == null) {
            if (!create) {
                return null;
            }
            child = new Category(childId, this);
        }
        return child.getDescendent(descendentPath.substring(slash + 1), create);
    }

    public final void setName(String name) {
        assert (name != null);
        this.name = name;
        this.qualifiedName = null;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isMandatory() {
        return this.mandatory;
    }

    public void setMandatory(boolean b) {
        this.mandatory = b;
    }

    private void addChild(Category child) {
        String newId = child.getId();
        if (this.children.containsKey(newId)) {
            this.removeChild(newId);
        }
        this.children.put(newId, child);
    }

    void removeChild(String childId) {
        this.children.remove(childId);
    }

    public int hashCode() {
        return this.getPath().hashCode();
    }

    public boolean equals(Object other) {
        return other instanceof Category && ((Category)other).getPath().equals(this.getPath());
    }

    static Collator getCollator() {
        if (collator == null) {
            collator = Collator.getInstance();
        }
        return collator;
    }

    @Override
    public int compareTo(Category other) {
        Collator aCollator = Category.getCollator();
        int result = aCollator.compare(this.getName(), other.getName());
        if (result == 0) {
            result = aCollator.compare(this.getPath(), other.getPath());
        }
        return result;
    }

    public String toString() {
        StringBuffer result = new StringBuffer(32);
        result.append("Category[path=");
        result.append(this.getPath());
        result.append(", name=");
        result.append(this.getName());
        result.append(']');
        return result.toString();
    }

    void getMandatoryCategories(Collection<? super Category> collection) {
        if (this.isMandatory()) {
            collection.add(this);
        }
        for (Category next : this.getChildren()) {
            next.getMandatoryCategories(collection);
        }
    }
}

