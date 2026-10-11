/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.propertytester.ResourcePropertyTester
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.sphinx.platform.internal.expressions;

import org.eclipse.core.internal.propertytester.ResourcePropertyTester;
import org.eclipse.core.resources.IFile;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;

public class OptimizedFilePropertyTester
extends ResourcePropertyTester {
    protected static final String CONTENT_TYPE_ID = "contentTypeId";

    public boolean test(Object receiver, String method, Object[] args, Object expectedValue) {
        if (receiver instanceof IFile && CONTENT_TYPE_ID.equals(method)) {
            return this.testContentType((IFile)receiver, this.toString(expectedValue));
        }
        return false;
    }

    protected boolean testContentType(IFile file, String contentTypeId) {
        String expectedValue = contentTypeId.trim();
        try {
            String actualValue = ExtendedPlatform.getContentTypeId(file);
            return expectedValue.equals(actualValue);
        }
        catch (Exception exception) {
            return false;
        }
    }
}

