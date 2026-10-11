/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.VersionConstraint
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.runtime;

import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;

public class MessageHelper {
    public static String getResolutionFailureMessage(VersionConstraint unsatisfied) {
        if (unsatisfied.isResolved()) {
            throw new IllegalArgumentException();
        }
        if (unsatisfied instanceof ImportPackageSpecification) {
            return NLS.bind((String)PDERuntimeMessages.MessageHelper_missing_imported_package, (Object)MessageHelper.toString(unsatisfied));
        }
        if (unsatisfied instanceof BundleSpecification) {
            if (((BundleSpecification)unsatisfied).isOptional()) {
                return NLS.bind((String)PDERuntimeMessages.MessageHelper_missing_optional_required_bundle, (Object)MessageHelper.toString(unsatisfied));
            }
            return NLS.bind((String)PDERuntimeMessages.MessageHelper_missing_required_bundle, (Object)MessageHelper.toString(unsatisfied));
        }
        return NLS.bind((String)PDERuntimeMessages.MessageHelper_missing_host, (Object)MessageHelper.toString(unsatisfied));
    }

    private static String toString(VersionConstraint constraint) {
        VersionRange versionRange = constraint.getVersionRange();
        if (versionRange == null) {
            return constraint.getName();
        }
        return String.valueOf(constraint.getName()) + '_' + versionRange;
    }
}

