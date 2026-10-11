/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.util.Collection;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServiceHelper {
    public static <T> T getService(BundleContext context, Class<T> clazz) {
        if (context == null) {
            return null;
        }
        ServiceReference reference = context.getServiceReference(clazz);
        if (reference == null) {
            return null;
        }
        Object result = context.getService(reference);
        context.ungetService(reference);
        return (T)result;
    }

    public static <T> T getService(BundleContext context, Class<T> clazz, String filter) {
        Collection references;
        try {
            references = context.getServiceReferences(clazz, filter);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            return null;
        }
        if (references.isEmpty()) {
            return null;
        }
        ServiceReference ref = (ServiceReference)references.iterator().next();
        Object result = context.getService(ref);
        context.ungetService(ref);
        return (T)result;
    }

    public static Object getService(BundleContext context, String name) {
        if (context == null) {
            return null;
        }
        ServiceReference reference = context.getServiceReference(name);
        if (reference == null) {
            return null;
        }
        Object result = context.getService(reference);
        context.ungetService(reference);
        return result;
    }

    public static Object getService(BundleContext context, String name, String filter) {
        ServiceReference[] references;
        try {
            references = context.getServiceReferences(name, filter);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            return null;
        }
        if (references == null || references.length == 0) {
            return null;
        }
        Object result = context.getService(references[0]);
        context.ungetService(references[0]);
        return result;
    }
}

