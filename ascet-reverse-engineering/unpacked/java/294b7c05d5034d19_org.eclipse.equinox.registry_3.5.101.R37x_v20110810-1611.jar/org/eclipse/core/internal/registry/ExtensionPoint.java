/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.io.File;
import java.lang.ref.SoftReference;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.runtime.IContributor;

public class ExtensionPoint
extends RegistryObject {
    public static final ExtensionPoint[] EMPTY_ARRAY = new ExtensionPoint[0];
    private Object extraInformation;
    private static final byte LABEL = 0;
    private static final byte SCHEMA = 1;
    private static final byte QUALIFIED_NAME = 2;
    private static final byte NAMESPACE = 3;
    private static final byte CONTRIBUTOR_ID = 4;
    private static final int EXTRA_SIZE = 5;

    protected ExtensionPoint(ExtensionRegistry registry, boolean persist) {
        super(registry, persist);
    }

    protected ExtensionPoint(int self, int[] children, int dataOffset, ExtensionRegistry registry, boolean persist) {
        super(registry, persist);
        this.setObjectId(self);
        this.setRawChildren(children);
        this.setExtraDataOffset(dataOffset);
    }

    protected String getSimpleIdentifier() {
        return this.getUniqueIdentifier().substring(this.getUniqueIdentifier().lastIndexOf(46) + 1);
    }

    private String[] getExtraData() {
        if (this.noExtraData()) {
            if (this.extraInformation != null) {
                return (String[])this.extraInformation;
            }
            return new String[5];
        }
        String[] result = null;
        if (this.extraInformation == null || (result = this.extraInformation instanceof SoftReference ? (String[])((SoftReference)this.extraInformation).get() : (String[])this.extraInformation) == null) {
            result = this.registry.getTableReader().loadExtensionPointExtraData(this.getExtraDataOffset());
            this.extraInformation = new SoftReference<String[]>(result);
        }
        return result;
    }

    private void ensureExtraInformationType() {
        if (this.extraInformation instanceof SoftReference) {
            this.extraInformation = ((SoftReference)this.extraInformation).get();
        }
        if (this.extraInformation == null) {
            this.extraInformation = new String[5];
        }
    }

    protected String getSchemaReference() {
        String[] result = this.getExtraData();
        return result[1] == null ? "" : result[1].replace(File.separatorChar, '/');
    }

    protected String getLabel() {
        String[] result = this.getExtraData();
        return result[0] == null ? "" : result[0];
    }

    protected String getUniqueIdentifier() {
        return this.getExtraData()[2];
    }

    public String getNamespace() {
        return this.getExtraData()[3];
    }

    protected String getContributorId() {
        return this.getExtraData()[4];
    }

    public IContributor getContributor() {
        return this.registry.getObjectManager().getContributor(this.getContributorId());
    }

    void setSchema(String value) {
        this.ensureExtraInformationType();
        ((String[])this.extraInformation)[1] = value;
    }

    void setLabel(String value) {
        this.ensureExtraInformationType();
        ((String[])this.extraInformation)[0] = value;
    }

    void setUniqueIdentifier(String value) {
        this.ensureExtraInformationType();
        ((String[])this.extraInformation)[2] = value;
    }

    void setNamespace(String value) {
        this.ensureExtraInformationType();
        ((String[])this.extraInformation)[3] = value;
    }

    void setContributorId(String id) {
        this.ensureExtraInformationType();
        ((String[])this.extraInformation)[4] = id;
    }

    public String toString() {
        return this.getUniqueIdentifier();
    }

    protected String getLabelAsIs() {
        String[] result = this.getExtraData();
        return result[0] == null ? "" : result[0];
    }

    protected String getLabel(String locale) {
        this.registry.logMultiLangError();
        return this.getLabel();
    }
}

