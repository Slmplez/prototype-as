/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.lang.ref.SoftReference;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.runtime.IContributor;

public class Extension
extends RegistryObject {
    public static final Extension[] EMPTY_ARRAY = new Extension[0];
    private String simpleId;
    private String namespaceIdentifier;
    private Object extraInformation;
    private static final byte LABEL = 0;
    private static final byte XPT_NAME = 1;
    private static final byte CONTRIBUTOR_ID = 2;
    private static final int EXTRA_SIZE = 3;

    protected Extension(ExtensionRegistry registry, boolean persist) {
        super(registry, persist);
    }

    protected Extension(int self, String simpleId, String namespace, int[] children, int extraData, ExtensionRegistry registry, boolean persist) {
        super(registry, persist);
        this.setObjectId(self);
        this.simpleId = simpleId;
        this.setRawChildren(children);
        this.setExtraDataOffset(extraData);
        this.namespaceIdentifier = namespace;
    }

    protected String getExtensionPointIdentifier() {
        return this.getExtraData()[1];
    }

    protected String getSimpleIdentifier() {
        return this.simpleId;
    }

    protected String getUniqueIdentifier() {
        return this.simpleId == null ? null : String.valueOf(this.getNamespaceIdentifier()) + '.' + this.simpleId;
    }

    void setExtensionPointIdentifier(String value) {
        this.ensureExtraInformationType();
        ((String[])this.extraInformation)[1] = value;
    }

    void setSimpleIdentifier(String value) {
        this.simpleId = value;
    }

    private String[] getExtraData() {
        if (this.noExtraData()) {
            if (this.extraInformation != null) {
                return (String[])this.extraInformation;
            }
            return null;
        }
        String[] result = null;
        if (this.extraInformation == null || (result = this.extraInformation instanceof SoftReference ? (String[])((SoftReference)this.extraInformation).get() : (String[])this.extraInformation) == null) {
            result = this.registry.getTableReader().loadExtensionExtraData(this.getExtraDataOffset());
            this.extraInformation = new SoftReference<String[]>(result);
        }
        return result;
    }

    String getLabel() {
        String s = this.getExtraData()[0];
        if (s == null) {
            return "";
        }
        return s;
    }

    void setLabel(String value) {
        this.ensureExtraInformationType();
        ((String[])this.extraInformation)[0] = value;
    }

    String getContributorId() {
        String s = this.getExtraData()[2];
        if (s == null) {
            return "";
        }
        return s;
    }

    public IContributor getContributor() {
        return this.registry.getObjectManager().getContributor(this.getContributorId());
    }

    void setContributorId(String value) {
        this.ensureExtraInformationType();
        ((String[])this.extraInformation)[2] = value;
    }

    public String getNamespaceIdentifier() {
        return this.namespaceIdentifier;
    }

    void setNamespaceIdentifier(String value) {
        this.namespaceIdentifier = value;
    }

    public String toString() {
        return String.valueOf(this.getUniqueIdentifier()) + " -> " + this.getExtensionPointIdentifier();
    }

    private void ensureExtraInformationType() {
        if (this.extraInformation instanceof SoftReference) {
            this.extraInformation = ((SoftReference)this.extraInformation).get();
        }
        if (this.extraInformation == null) {
            this.extraInformation = new String[3];
        }
    }

    String getLabelAsIs() {
        String s = this.getExtraData()[0];
        if (s == null) {
            return "";
        }
        return s;
    }

    String getLabel(String locale) {
        this.registry.logMultiLangError();
        return this.getLabel();
    }
}

