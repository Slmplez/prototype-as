/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 */
package org.osgi.service.metatype;

import org.osgi.framework.Bundle;
import org.osgi.service.metatype.MetaTypeProvider;

public interface MetaTypeInformation
extends MetaTypeProvider {
    public String[] getPids();

    public String[] getFactoryPids();

    public Bundle getBundle();
}

