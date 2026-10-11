/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.sphinx.emf.ecore.ExtendedMinimalEObjectImpl
 */
package org.artop.aal.common.metamodel;

import org.eclipse.sphinx.emf.ecore.ExtendedMinimalEObjectImpl;

public class MinimalARObjectImpl
extends ExtendedMinimalEObjectImpl {
    protected static final int TIMESTAMP_FLAG = 256;
    protected static final int CHECKSUM_FLAG = 512;
    protected static final int ADMIN_DATA_FLAG = 1024;
    protected static final int CATEGORY_FLAG = 2048;
    protected static final int DESC_FLAG = 4096;
    protected static final int LONG_NAME_FLAG = 8192;
    protected static final int UUID_FLAG = 16384;
    protected static final int EXTENSIONS_FLAG = 32768;
    protected static int MAX_FIELD_FLAG = 32768;
    protected static int AR_FIELD_MASK = 65534;

    protected int getFieldMask() {
        return AR_FIELD_MASK;
    }

    protected int getMaxField() {
        return MAX_FIELD_FLAG;
    }

    protected void eBasicSetContainerFeatureID(int newContainerFeatureID) {
        this.eFlags = newContainerFeatureID << 16 | this.eFlags & 0xFFFF;
    }
}

