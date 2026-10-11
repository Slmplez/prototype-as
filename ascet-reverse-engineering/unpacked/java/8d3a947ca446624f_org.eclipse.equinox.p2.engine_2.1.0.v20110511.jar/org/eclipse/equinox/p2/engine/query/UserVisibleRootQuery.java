/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.p2.engine.query;

import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.query.IUProfilePropertyQuery;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;

public class UserVisibleRootQuery
extends IUProfilePropertyQuery {
    public UserVisibleRootQuery() {
        super("org.eclipse.equinox.p2.type.root", Boolean.TRUE.toString());
    }

    public static boolean isUserVisible(IInstallableUnit iu, IProfile profile) {
        String value = profile.getInstallableUnitProperty(iu, "org.eclipse.equinox.p2.type.root");
        return Boolean.valueOf(value);
    }
}

