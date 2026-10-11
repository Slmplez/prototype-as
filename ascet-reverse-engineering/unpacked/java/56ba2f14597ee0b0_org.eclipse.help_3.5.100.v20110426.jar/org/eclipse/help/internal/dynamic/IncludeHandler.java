/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import org.eclipse.help.internal.Include;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.dynamic.IncludeResolver;
import org.eclipse.help.internal.dynamic.ProcessorHandler;

public class IncludeHandler
extends ProcessorHandler {
    private IncludeResolver resolver;
    private DocumentReader reader;
    private String locale;

    public IncludeHandler(DocumentReader reader, String locale) {
        this.reader = reader;
        this.locale = locale;
    }

    public short handle(UAElement element, String id) {
        if (element instanceof Include) {
            String path = ((Include)element).getPath();
            if (path != null && path.length() > 0) {
                String bundleId = this.getBundleId(path);
                String relativePath = this.getRelativePath(path);
                String elementId = this.getElementId(path);
                if (bundleId != null && relativePath != null && elementId != null) {
                    this.resolveInclude(bundleId, relativePath, elementId, element, this.locale);
                }
            } else {
                element.getParentElement().removeChild(element);
            }
            return 2;
        }
        return 0;
    }

    private void resolveInclude(String bundleId, String relativePath, String elementId, UAElement element, String locale) {
        UAElement parent;
        if (this.resolver == null) {
            this.resolver = new IncludeResolver(this.getProcessor(), this.reader, locale);
        }
        if ((parent = element.getParentElement()) != null) {
            try {
                UAElement nodeToInclude = this.resolver.resolve(bundleId, relativePath, elementId);
                parent.insertBefore(nodeToInclude, element);
                parent.removeChild(element);
            }
            catch (Throwable throwable) {
                parent.removeChild(element);
            }
        }
    }

    private String getBundleId(String path) {
        if (path.charAt(0) == '/') {
            int index = path.indexOf(47, 1);
            if (index > 1) {
                return path.substring(1, index);
            }
        } else {
            int index = path.indexOf(47);
            if (index != -1) {
                return path.substring(0, index);
            }
        }
        return null;
    }

    private String getRelativePath(String path) {
        int startIndex = path.indexOf(47, 1);
        int endIndex = path.indexOf(35);
        if (endIndex == -1) {
            endIndex = path.lastIndexOf(47);
        }
        if (startIndex != -1 && endIndex > startIndex + 1) {
            return path.substring(startIndex + 1, endIndex);
        }
        return null;
    }

    private String getElementId(String path) {
        int index = path.indexOf(35);
        if (index == -1) {
            index = path.lastIndexOf(47);
        }
        if (index != -1 && index < path.length() - 1) {
            return path.substring(index + 1);
        }
        return null;
    }
}

