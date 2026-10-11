/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

public class RegistryIndexChildren {
    static final int[] EMPTY_ARRAY = new int[0];
    private int[] children;

    public RegistryIndexChildren() {
        this.children = EMPTY_ARRAY;
    }

    public RegistryIndexChildren(int[] children) {
        this.children = children;
    }

    public int[] getChildren() {
        return this.children;
    }

    public int findChild(int id) {
        int i = 0;
        while (i < this.children.length) {
            if (this.children[i] == id) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public boolean unlinkChild(int id) {
        int index = this.findChild(id);
        if (index == -1) {
            return false;
        }
        int[] result = new int[this.children.length - 1];
        System.arraycopy(this.children, 0, result, 0, index);
        System.arraycopy(this.children, index + 1, result, index, this.children.length - index - 1);
        this.children = result;
        return true;
    }

    public boolean linkChild(int id) {
        if (this.children.length == 0) {
            this.children = new int[]{id};
            return true;
        }
        int[] result = new int[this.children.length + 1];
        System.arraycopy(this.children, 0, result, 0, this.children.length);
        result[this.children.length] = id;
        this.children = result;
        return true;
    }

    public boolean linkChildren(int[] IDs) {
        if (this.children.length == 0) {
            this.children = IDs;
            return true;
        }
        int[] result = new int[this.children.length + IDs.length];
        System.arraycopy(this.children, 0, result, 0, this.children.length);
        System.arraycopy(IDs, 0, result, this.children.length, IDs.length);
        this.children = result;
        return true;
    }

    public boolean unlinkChildren(int[] IDs) {
        if (this.children.length == 0) {
            return IDs.length == 0;
        }
        int size = this.children.length;
        int i = 0;
        while (i < IDs.length) {
            int index = this.findChild(IDs[i]);
            if (index != -1) {
                this.children[i] = -1;
                --size;
            }
            ++i;
        }
        if (size == 0) {
            this.children = EMPTY_ARRAY;
            return true;
        }
        int[] result = new int[size];
        int pos = 0;
        int i2 = 0;
        while (i2 < this.children.length) {
            if (this.children[i2] != -1) {
                result[pos] = this.children[i2];
                ++pos;
            }
            ++i2;
        }
        return true;
    }
}

