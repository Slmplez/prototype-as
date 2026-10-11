/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.content;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.eclipse.core.internal.content.Util;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.ITextContentDescriber;

public class TextContentDescriber
implements ITextContentDescriber {
    private static final QualifiedName[] SUPPORTED_OPTIONS = new QualifiedName[]{IContentDescription.BYTE_ORDER_MARK};

    public int describe(Reader contents, IContentDescription description) throws IOException {
        return 1;
    }

    public int describe(InputStream contents, IContentDescription description) throws IOException {
        if (description == null || !description.isRequested(IContentDescription.BYTE_ORDER_MARK)) {
            return 1;
        }
        byte[] bom = Util.getByteOrderMark(contents);
        if (bom != null) {
            description.setProperty(IContentDescription.BYTE_ORDER_MARK, bom);
        }
        return 1;
    }

    public QualifiedName[] getSupportedOptions() {
        return SUPPORTED_OPTIONS;
    }
}

