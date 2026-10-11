/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 */
package org.eclipse.equinox.internal.app;

import org.eclipse.equinox.internal.app.EclipseAppContainer;
import org.eclipse.equinox.internal.app.IBranding;
import org.osgi.framework.Bundle;

public class ProviderExtensionBranding
implements IBranding {
    Object product;
    static /* synthetic */ Class class$0;

    public ProviderExtensionBranding(Object product) {
        this.product = product;
    }

    public String getApplication() {
        return (String)EclipseAppContainer.callMethod(this.product, "getApplication", null, null);
    }

    public Bundle getDefiningBundle() {
        return (Bundle)EclipseAppContainer.callMethod(this.product, "getDefiningBundle", null, null);
    }

    public String getDescription() {
        return (String)EclipseAppContainer.callMethod(this.product, "getDescription", null, null);
    }

    public String getId() {
        return (String)EclipseAppContainer.callMethod(this.product, "getId", null, null);
    }

    public String getName() {
        return (String)EclipseAppContainer.callMethod(this.product, "getName", null, null);
    }

    public String getProperty(String key) {
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        return (String)EclipseAppContainer.callMethod(this.product, "getProperty", classArray, new Object[]{key});
    }

    public Object getProduct() {
        return this.product;
    }
}

