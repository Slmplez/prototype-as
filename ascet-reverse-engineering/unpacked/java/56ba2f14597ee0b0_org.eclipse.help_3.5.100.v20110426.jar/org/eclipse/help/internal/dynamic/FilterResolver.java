/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.help.internal.dynamic;

import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.osgi.framework.Bundle;

public class FilterResolver {
    private static final String NAME_OS = "os";
    private static final String NAME_WS = "ws";
    private static final String NAME_ARCH = "arch";
    private static final String NAME_PRODUCT = "product";
    private static final String NAME_PLUGIN = "plugin";
    private static Extension extension;
    private static FilterResolver instance;

    public static FilterResolver getInstance() {
        if (instance == null) {
            instance = new FilterResolver();
        }
        return instance;
    }

    public boolean isFiltered(String expression) {
        String name = null;
        String value = null;
        boolean not = false;
        int index = expression.indexOf("!=");
        if (index != -1) {
            name = expression.substring(0, index).trim();
            value = expression.substring(index + 2).trim();
            not = true;
        } else {
            index = expression.indexOf(61);
            if (index != -1) {
                name = expression.substring(0, index).trim();
                value = expression.substring(index + 1).trim();
                not = false;
            }
        }
        if (name != null && name.length() > 0 && value != null && value.length() > 0) {
            return this.isFiltered(name, value, not);
        }
        return false;
    }

    public boolean isFiltered(String name, String value, boolean not) {
        boolean filtered = name.equals(NAME_OS) ? this.filterByWS(value) : (name.equals(NAME_WS) ? this.filterByOS(value) : (name.equals(NAME_ARCH) ? this.filterByARCH(value) : (name.equals(NAME_PRODUCT) ? this.filterByProduct(value) : (name.equals(NAME_PLUGIN) ? this.filterByPlugin(value) : (extension != null && extension.isHandled(name) ? extension.isFiltered(name, value) : this.filterBySystemProperty(name, value))))));
        return not ? !filtered : filtered;
    }

    public static void setExtension(Extension extension) {
        FilterResolver.extension = extension;
    }

    private boolean filterByWS(String ws) {
        return !ws.equals(Platform.getWS());
    }

    private boolean filterByOS(String os) {
        return !os.equals(Platform.getOS());
    }

    private boolean filterByARCH(String arch) {
        return !arch.equals(Platform.getOSArch());
    }

    private boolean filterByProduct(String productId) {
        IProduct product = Platform.getProduct();
        if (product != null) {
            return !productId.equals(product.getId());
        }
        return true;
    }

    private boolean filterByPlugin(String bundleId) {
        Bundle bundle = Platform.getBundle((String)bundleId);
        return bundle == null;
    }

    private boolean filterBySystemProperty(String property, String value) {
        try {
            String systemValue = System.getProperty(property);
            if (systemValue != null) {
                return !value.equals(systemValue);
            }
        }
        catch (Throwable throwable) {}
        return true;
    }

    public static interface Extension {
        public boolean isHandled(String var1);

        public boolean isFiltered(String var1, String var2);
    }
}

