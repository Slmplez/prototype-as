/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.content;

import org.eclipse.core.internal.content.BasicDescription;
import org.eclipse.core.internal.content.IContentTypeInfo;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;

public final class ContentDescription
extends BasicDescription {
    private static final String CHARSET_UTF_16 = "UTF-16";
    private static final String CHARSET_UTF_8 = "UTF-8";
    private static final byte FLAG_ALL_OPTIONS = 1;
    private static final byte FLAG_IMMUTABLE = 2;
    private byte flags;
    private Object keys;
    private Object values;

    public ContentDescription(QualifiedName[] requested, IContentTypeInfo contentTypeInfo) {
        super(contentTypeInfo);
        if (requested == IContentDescription.ALL) {
            this.flags = (byte)(this.flags | 1);
            return;
        }
        if (requested.length > 1) {
            this.keys = requested;
            this.values = new Object[requested.length];
        } else if (requested.length == 1) {
            this.keys = requested[0];
        }
    }

    private void assertMutable() {
        if ((this.flags & 2) != 0) {
            throw new IllegalStateException("Content description is immutable");
        }
    }

    public String getCharset() {
        byte[] bom = (byte[])this.getProperty(BYTE_ORDER_MARK);
        if (bom == BOM_UTF_8) {
            return CHARSET_UTF_8;
        }
        if (bom == BOM_UTF_16BE || bom == BOM_UTF_16LE) {
            return CHARSET_UTF_16;
        }
        return (String)this.getProperty(CHARSET);
    }

    private Object getDescribedProperty(QualifiedName key) {
        if (this.values == null) {
            return null;
        }
        if (this.keys instanceof QualifiedName) {
            return this.keys.equals(key) ? this.values : null;
        }
        QualifiedName[] tmpKeys = (QualifiedName[])this.keys;
        int i = 0;
        while (i < tmpKeys.length) {
            if (tmpKeys[i].equals((Object)key)) {
                return ((Object[])this.values)[i];
            }
            ++i;
        }
        return null;
    }

    public Object getProperty(QualifiedName key) {
        Object describedProperty = this.getDescribedProperty(key);
        if (describedProperty != null) {
            return describedProperty;
        }
        return this.contentTypeInfo.getDefaultProperty(key);
    }

    public boolean isRequested(QualifiedName propertyKey) {
        if ((this.flags & 1) != 0) {
            return true;
        }
        if (this.keys == null) {
            return false;
        }
        if (this.keys instanceof QualifiedName) {
            return this.keys.equals(propertyKey);
        }
        QualifiedName[] tmpKeys = (QualifiedName[])this.keys;
        int i = 0;
        while (i < tmpKeys.length) {
            if (tmpKeys[i].equals((Object)propertyKey)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    boolean isSet() {
        if (this.keys == null || this.values == null) {
            return false;
        }
        if (this.keys instanceof QualifiedName) {
            return true;
        }
        Object[] tmpValues = (Object[])this.values;
        int i = 0;
        while (i < tmpValues.length) {
            if (tmpValues[i] != null) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void markImmutable() {
        this.assertMutable();
        this.flags = (byte)(this.flags | 2);
    }

    void setContentTypeInfo(IContentTypeInfo info) {
        this.contentTypeInfo = info;
    }

    public void setProperty(QualifiedName newKey, Object newValue) {
        this.assertMutable();
        if (this.keys == null) {
            if ((this.flags & 1) != 0) {
                this.keys = newKey;
                this.values = newValue;
            }
            return;
        }
        if (this.keys.equals(newKey)) {
            this.values = newValue;
            return;
        }
        if (this.keys instanceof QualifiedName) {
            if ((this.flags & 1) != 0) {
                this.keys = new QualifiedName[]{(QualifiedName)this.keys, newKey};
                this.values = new Object[]{this.values, newValue};
            }
            return;
        }
        QualifiedName[] tmpKeys = (QualifiedName[])this.keys;
        int i = 0;
        while (i < tmpKeys.length) {
            if (tmpKeys[i].equals((Object)newKey)) {
                ((Object[])this.values)[i] = newValue;
                return;
            }
            ++i;
        }
        if ((this.flags & 1) == 0) {
            return;
        }
        int currentSize = tmpKeys.length;
        tmpKeys = new QualifiedName[currentSize + 1];
        System.arraycopy(this.keys, 0, tmpKeys, 0, currentSize);
        Object[] tmpValues = new Object[currentSize + 1];
        System.arraycopy(this.values, 0, tmpValues, 0, currentSize);
        tmpKeys[tmpKeys.length - 1] = newKey;
        tmpValues[tmpValues.length - 1] = newValue;
        this.keys = tmpKeys;
        this.values = tmpValues;
    }

    public String toString() {
        StringBuffer result = new StringBuffer("{");
        if (this.keys != null) {
            if (this.keys instanceof QualifiedName) {
                if (this.values != null) {
                    result.append(this.keys + "=" + this.values);
                }
            } else {
                QualifiedName[] tmpKeys = (QualifiedName[])this.keys;
                Object[] tmpValues = (Object[])this.values;
                boolean any = false;
                int i = 0;
                while (i < tmpKeys.length) {
                    if (tmpValues[i] != null) {
                        result.append(tmpKeys[i] + "=" + tmpValues[i] + ",");
                        any = true;
                    }
                    ++i;
                }
                if (any) {
                    result.deleteCharAt(result.length() - 1);
                }
            }
        }
        result.append("} : ");
        result.append(this.contentTypeInfo.getContentType());
        return result.toString();
    }
}

