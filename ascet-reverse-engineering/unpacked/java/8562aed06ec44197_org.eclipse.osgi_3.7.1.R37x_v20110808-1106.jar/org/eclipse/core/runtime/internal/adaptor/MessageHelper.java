/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.util.Date;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.NLS;

public class MessageHelper {
    public static String getResolutionFailureMessage(VersionConstraint unsatisfied) {
        if (unsatisfied.isResolved()) {
            throw new IllegalArgumentException();
        }
        if (unsatisfied instanceof ImportPackageSpecification) {
            if ("optional".equals(((ImportPackageSpecification)unsatisfied).getDirective("resolution"))) {
                return NLS.bind(EclipseAdaptorMsg.ECLIPSE_MISSING_OPTIONAL_IMPORTED_PACKAGE, MessageHelper.toString(unsatisfied));
            }
            if ("dynamic".equals(((ImportPackageSpecification)unsatisfied).getDirective("resolution"))) {
                return NLS.bind(EclipseAdaptorMsg.ECLIPSE_MISSING_DYNAMIC_IMPORTED_PACKAGE, MessageHelper.toString(unsatisfied));
            }
            return NLS.bind(EclipseAdaptorMsg.ECLIPSE_MISSING_IMPORTED_PACKAGE, MessageHelper.toString(unsatisfied));
        }
        if (unsatisfied instanceof BundleSpecification) {
            if (((BundleSpecification)unsatisfied).isOptional()) {
                return NLS.bind(EclipseAdaptorMsg.ECLIPSE_MISSING_OPTIONAL_REQUIRED_BUNDLE, MessageHelper.toString(unsatisfied));
            }
            return NLS.bind(EclipseAdaptorMsg.ECLIPSE_MISSING_REQUIRED_BUNDLE, MessageHelper.toString(unsatisfied));
        }
        return NLS.bind(EclipseAdaptorMsg.ECLIPSE_MISSING_HOST, MessageHelper.toString(unsatisfied));
    }

    public static void debug(String message) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(new Date(System.currentTimeMillis()));
        buffer.append(" - [");
        buffer.append(Thread.currentThread().getName());
        buffer.append("] ");
        buffer.append(message);
        System.out.println(buffer.toString());
    }

    private static String toString(VersionConstraint constraint) {
        VersionRange versionRange = constraint.getVersionRange();
        if (versionRange == null) {
            return constraint.getName();
        }
        return String.valueOf(constraint.getName()) + '_' + versionRange;
    }
}

