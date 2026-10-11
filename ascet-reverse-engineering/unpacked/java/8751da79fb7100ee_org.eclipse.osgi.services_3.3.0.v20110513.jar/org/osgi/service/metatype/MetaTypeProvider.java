/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.metatype;

import org.osgi.service.metatype.ObjectClassDefinition;

public interface MetaTypeProvider {
    public static final String METATYPE_PID = "metatype.pid";
    public static final String METATYPE_FACTORY_PID = "metatype.factory.pid";

    public ObjectClassDefinition getObjectClassDefinition(String var1, String var2);

    public String[] getLocales();
}

