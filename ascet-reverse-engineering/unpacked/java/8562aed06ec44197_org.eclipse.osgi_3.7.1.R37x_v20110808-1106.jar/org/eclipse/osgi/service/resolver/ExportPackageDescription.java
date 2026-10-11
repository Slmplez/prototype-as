/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import java.util.Map;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ExportPackageDescription
extends BaseDescription {
    public boolean isRoot();

    public Map<String, Object> getAttributes();

    public Map<String, Object> getDirectives();

    public Object getDirective(String var1);

    public BundleDescription getExporter();
}

