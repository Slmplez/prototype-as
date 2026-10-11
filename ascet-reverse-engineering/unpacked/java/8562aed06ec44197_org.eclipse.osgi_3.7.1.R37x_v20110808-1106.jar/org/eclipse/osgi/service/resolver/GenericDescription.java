/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import java.util.Dictionary;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GenericDescription
extends BaseDescription {
    public static final String DEFAULT_TYPE = "generic";

    public Dictionary<String, Object> getAttributes();

    public String getType();

    @Override
    public String getName();

    @Override
    public Version getVersion();
}

