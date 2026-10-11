/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.KeyedElement;
import org.eclipse.core.internal.registry.RegistryObjectManager;

public abstract class RegistryObject
implements KeyedElement {
    private int objectId = RegistryObjectManager.UNKNOWN;
    protected int[] children = RegistryObjectManager.EMPTY_INT_ARRAY;
    private int extraDataOffset = Integer.MIN_VALUE;
    static final int EMPTY_MASK = Integer.MIN_VALUE;
    static final int PERSIST_MASK = 0x40000000;
    static final int OFFSET_MASK = 0x3FFFFFFF;
    protected ExtensionRegistry registry;

    protected RegistryObject(ExtensionRegistry registry, boolean persist) {
        this.registry = registry;
        this.setPersist(persist);
    }

    void setRawChildren(int[] values) {
        this.children = values;
    }

    protected int[] getRawChildren() {
        return this.children;
    }

    void setObjectId(int value) {
        this.objectId = value;
    }

    protected int getObjectId() {
        return this.objectId;
    }

    public int getKeyHashCode() {
        return this.objectId;
    }

    public Object getKey() {
        return new Integer(this.objectId);
    }

    public boolean compare(KeyedElement other) {
        return this.objectId == ((RegistryObject)other).objectId;
    }

    protected boolean shouldPersist() {
        return (this.extraDataOffset & 0x40000000) == 0x40000000;
    }

    private void setPersist(boolean persist) {
        this.extraDataOffset = persist ? (this.extraDataOffset |= 0x40000000) : (this.extraDataOffset &= 0xBFFFFFFF);
    }

    protected boolean noExtraData() {
        return (this.extraDataOffset & Integer.MIN_VALUE) == Integer.MIN_VALUE;
    }

    protected int getExtraDataOffset() {
        if (this.noExtraData()) {
            return -1;
        }
        return this.extraDataOffset & 0x3FFFFFFF;
    }

    protected void setExtraDataOffset(int offset) {
        if (offset == -1) {
            this.extraDataOffset &= 0xC0000000;
            this.extraDataOffset |= Integer.MIN_VALUE;
            return;
        }
        if ((offset & 0x3FFFFFFF) != offset) {
            throw new IllegalArgumentException("Registry object: extra data offset is out of range");
        }
        this.extraDataOffset &= 0x40000000;
        this.extraDataOffset |= offset & 0x3FFFFFFF;
    }

    protected String getLocale() {
        return this.registry.getLocale();
    }
}

