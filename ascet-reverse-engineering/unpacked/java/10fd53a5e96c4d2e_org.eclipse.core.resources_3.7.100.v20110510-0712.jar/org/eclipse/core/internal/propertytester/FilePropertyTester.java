/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 */
package org.eclipse.core.internal.propertytester;

import org.eclipse.core.internal.propertytester.ResourcePropertyTester;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;

public class FilePropertyTester
extends ResourcePropertyTester {
    private static final String CONTENT_TYPE_ID = "contentTypeId";
    private static final String IS_KIND_OF = "kindOf";
    private static final String USE_FILENAME_ONLY = "useFilenameOnly";

    public boolean test(Object receiver, String method, Object[] args, Object expectedValue) {
        if (receiver instanceof IFile && method.equals(CONTENT_TYPE_ID)) {
            return this.testContentType((IFile)receiver, this.toString(expectedValue), this.isArgumentUsed(args, IS_KIND_OF), this.isArgumentUsed(args, USE_FILENAME_ONLY));
        }
        return false;
    }

    private boolean isArgumentUsed(Object[] args, String value) {
        int i = 0;
        while (i < args.length) {
            if (value.equals(args[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean testContentType(IFile file, String contentTypeId, boolean isKindOfUsed, boolean useFilenameOnly) {
        String expectedValue = contentTypeId.trim();
        IContentType actualContentType = null;
        if (!useFilenameOnly) {
            if (!file.exists()) {
                return false;
            }
            IContentDescription contentDescription = null;
            try {
                contentDescription = file.getContentDescription();
            }
            catch (CoreException e) {
                Policy.log(4, "Core exception while retrieving the content description", e);
            }
            if (contentDescription != null) {
                actualContentType = contentDescription.getContentType();
            }
        } else {
            actualContentType = Platform.getContentTypeManager().findContentTypeFor(file.getName());
        }
        if (actualContentType != null) {
            if (isKindOfUsed) {
                return actualContentType.isKindOf(Platform.getContentTypeManager().getContentType(expectedValue));
            }
            return expectedValue.equals(actualContentType.getId());
        }
        return false;
    }
}

