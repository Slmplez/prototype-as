/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.metatype;

import java.io.IOException;
import java.io.InputStream;
import org.osgi.service.metatype.AttributeDefinition;

public interface ObjectClassDefinition {
    public static final int REQUIRED = 1;
    public static final int OPTIONAL = 2;
    public static final int ALL = -1;

    public String getName();

    public String getID();

    public String getDescription();

    public AttributeDefinition[] getAttributeDefinitions(int var1);

    public InputStream getIcon(int var1) throws IOException;
}

