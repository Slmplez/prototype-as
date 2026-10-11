/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.expressions.propertytester;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.osgi.framework.Bundle;

public class PlatformPropertyTester
extends PropertyTester {
    private static final String PROPERTY_PRODUCT = "product";
    private static final String PROPERTY_IS_BUNDLE_INSTALLED = "isBundleInstalled";
    private static final String PROPERTY_BUNDLE_STATE = "bundleState";
    static /* synthetic */ Class class$0;

    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.Platform");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(receiver)) {
            if (PROPERTY_PRODUCT.equals(property)) {
                IProduct product = Platform.getProduct();
                if (product != null) {
                    return product.getId().equals(expectedValue);
                }
                return false;
            }
            if (PROPERTY_IS_BUNDLE_INSTALLED.equals(property) && args.length >= 1 && args[0] instanceof String) {
                return Platform.getBundle((String)((String)args[0])) != null;
            }
            if (PROPERTY_BUNDLE_STATE.equals(property) && args.length >= 1 && args[0] instanceof String) {
                Bundle b = Platform.getBundle((String)((String)args[0]));
                if (b != null) {
                    return this.bundleState(b.getState(), expectedValue);
                }
                return false;
            }
        }
        return false;
    }

    private boolean bundleState(int bundleState, Object expectedValue) {
        if ("UNINSTALLED".equals(expectedValue)) {
            return bundleState == 1;
        }
        if ("INSTALLED".equals(expectedValue)) {
            return bundleState == 2;
        }
        if ("RESOLVED".equals(expectedValue)) {
            return bundleState == 4;
        }
        if ("STARTING".equals(expectedValue)) {
            return bundleState == 8;
        }
        if ("STOPPING".equals(expectedValue)) {
            return bundleState == 16;
        }
        if ("ACTIVE".equals(expectedValue)) {
            return bundleState == 32;
        }
        return false;
    }
}

