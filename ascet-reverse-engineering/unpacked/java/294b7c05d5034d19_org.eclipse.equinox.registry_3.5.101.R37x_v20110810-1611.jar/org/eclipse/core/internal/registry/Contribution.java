/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.KeyedElement;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.InvalidRegistryObjectException;

public class Contribution
implements KeyedElement {
    static final int[] EMPTY_CHILDREN = new int[2];
    protected ExtensionRegistry registry;
    protected final String contributorId;
    private String defaultNamespace = null;
    protected boolean persist;
    private int[] children = EMPTY_CHILDREN;
    public static final byte EXTENSION_POINT = 0;
    public static final byte EXTENSION = 1;

    protected Contribution(String contributorId, ExtensionRegistry registry, boolean persist) {
        this.contributorId = contributorId;
        this.registry = registry;
        this.persist = persist;
    }

    void mergeContribution(Contribution addContribution) {
        Assert.isTrue((boolean)this.contributorId.equals(addContribution.contributorId));
        Assert.isTrue((this.registry == addContribution.registry ? 1 : 0) != 0);
        if (this.shouldPersist() != addContribution.shouldPersist()) {
            this.persist = true;
        }
        int[] existing = this.getRawChildren();
        int[] addition = addContribution.getRawChildren();
        int extensionPoints = existing[0] + addition[0];
        int extensions = existing[1] + addition[1];
        int[] allChildren = new int[2 + extensionPoints + extensions];
        allChildren[0] = extensionPoints;
        System.arraycopy(existing, 2, allChildren, 2, existing[0]);
        System.arraycopy(addition, 2, allChildren, 2 + existing[0], addition[0]);
        allChildren[1] = extensions;
        System.arraycopy(existing, 2 + existing[0], allChildren, 2 + extensionPoints, existing[1]);
        System.arraycopy(addition, 2 + addition[0], allChildren, 2 + extensionPoints + existing[1], addition[1]);
        this.children = allChildren;
    }

    void setRawChildren(int[] children) {
        this.children = children;
    }

    protected String getContributorId() {
        return this.contributorId;
    }

    protected int[] getRawChildren() {
        return this.children;
    }

    protected int[] getExtensions() {
        int[] results = new int[this.children[1]];
        System.arraycopy(this.children, 2 + this.children[0], results, 0, this.children[1]);
        return results;
    }

    protected int[] getExtensionPoints() {
        int[] results = new int[this.children[0]];
        System.arraycopy(this.children, 2, results, 0, this.children[0]);
        return results;
    }

    public String getDefaultNamespace() {
        if (this.defaultNamespace == null) {
            this.defaultNamespace = this.registry.getObjectManager().getContributor(this.contributorId).getName();
        }
        return this.defaultNamespace;
    }

    public String toString() {
        return "Contribution: " + this.contributorId + " in namespace" + this.getDefaultNamespace();
    }

    public int getKeyHashCode() {
        return this.getKey().hashCode();
    }

    public Object getKey() {
        return this.contributorId;
    }

    public boolean compare(KeyedElement other) {
        return this.contributorId.equals(((Contribution)other).contributorId);
    }

    public boolean shouldPersist() {
        return this.persist;
    }

    public void unlinkChild(int id) {
        int index = -1;
        int i = 2;
        while (i < this.children.length) {
            if (this.children[i] == id) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            throw new InvalidRegistryObjectException();
        }
        int[] result = new int[this.children.length - 1];
        System.arraycopy(this.children, 0, result, 0, index);
        System.arraycopy(this.children, index + 1, result, index, this.children.length - index - 1);
        if (index < this.children[0] + 2) {
            result[0] = result[0] - 1;
        } else {
            result[1] = result[1] - 1;
        }
        this.children = result;
    }

    public boolean isEmpty() {
        return this.children[0] == 0 || this.children[1] == 0;
    }

    public boolean hasChild(int id) {
        int i = 2;
        while (i < this.children.length) {
            if (this.children[i] == id) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

