/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.runtime.content;

import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentType;

public interface IContentDescription {
    public static final QualifiedName CHARSET = new QualifiedName("org.eclipse.core.runtime", "charset");
    public static final QualifiedName BYTE_ORDER_MARK = new QualifiedName("org.eclipse.core.runtime", "bom");
    public static final QualifiedName[] ALL = null;
    public static final byte[] BOM_UTF_8 = new byte[]{-17, -69, -65};
    public static final byte[] BOM_UTF_16BE = new byte[]{-2, -1};
    public static final byte[] BOM_UTF_16LE = new byte[]{-1, -2};

    public boolean isRequested(QualifiedName var1);

    public String getCharset();

    public IContentType getContentType();

    public Object getProperty(QualifiedName var1);

    public void setProperty(QualifiedName var1, Object var2);
}

