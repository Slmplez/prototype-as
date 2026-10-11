/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.p2.planner;

import org.eclipse.equinox.p2.metadata.IInstallableUnit;

public class ProfileInclusionRules {
    private ProfileInclusionRules() {
    }

    public static String createStrictInclusionRule(IInstallableUnit iu) {
        return "STRICT";
    }

    public static String createOptionalInclusionRule(IInstallableUnit iu) {
        return "OPTIONAL";
    }
}

