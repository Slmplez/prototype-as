/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 */
package org.osgi.service.metatype;

import org.osgi.framework.Bundle;
import org.osgi.service.metatype.MetaTypeInformation;

public interface MetaTypeService {
    public static final String METATYPE_DOCUMENTS_LOCATION = "OSGI-INF/metatype";

    public MetaTypeInformation getMetaTypeInformation(Bundle var1);
}

