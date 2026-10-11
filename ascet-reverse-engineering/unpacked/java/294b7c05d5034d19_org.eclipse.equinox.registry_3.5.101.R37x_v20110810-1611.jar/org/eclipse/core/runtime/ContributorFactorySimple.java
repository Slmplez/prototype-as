/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.spi.RegistryContributor;

public final class ContributorFactorySimple {
    public static IContributor createContributor(Object determiningObject) {
        String id = determiningObject.toString();
        return new RegistryContributor(id, id, null, null);
    }
}

