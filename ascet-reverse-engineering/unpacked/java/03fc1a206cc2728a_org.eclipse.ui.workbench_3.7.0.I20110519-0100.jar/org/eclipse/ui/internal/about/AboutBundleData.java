/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.osgi.signedcontent.SignedContent
 *  org.eclipse.osgi.signedcontent.SignedContentFactory
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.ui.internal.about;

import java.io.IOException;
import java.security.GeneralSecurityException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentFactory;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.about.AboutData;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

public class AboutBundleData
extends AboutData {
    private Bundle bundle;
    private boolean isSignedDetermined = false;
    private boolean isSigned;
    static /* synthetic */ Class class$0;

    public AboutBundleData(Bundle bundle) {
        super(AboutBundleData.getResourceString(bundle, "Bundle-Vendor"), AboutBundleData.getResourceString(bundle, "Bundle-Name"), AboutBundleData.getResourceString(bundle, "Bundle-Version"), bundle.getSymbolicName());
        this.bundle = bundle;
    }

    public int getState() {
        return this.bundle.getState();
    }

    public String getStateName() {
        switch (this.getState()) {
            case 2: {
                return WorkbenchMessages.AboutPluginsDialog_state_installed;
            }
            case 4: {
                return WorkbenchMessages.AboutPluginsDialog_state_resolved;
            }
            case 8: {
                return WorkbenchMessages.AboutPluginsDialog_state_starting;
            }
            case 16: {
                return WorkbenchMessages.AboutPluginsDialog_state_stopping;
            }
            case 1: {
                return WorkbenchMessages.AboutPluginsDialog_state_uninstalled;
            }
            case 32: {
                return WorkbenchMessages.AboutPluginsDialog_state_active;
            }
        }
        return WorkbenchMessages.AboutPluginsDialog_state_unknown;
    }

    private static String getResourceString(Bundle bundle, String headerName) {
        String value = (String)bundle.getHeaders().get(headerName);
        return value == null ? null : Platform.getResourceString((Bundle)bundle, (String)value);
    }

    public boolean isSignedDetermined() {
        return this.isSignedDetermined;
    }

    public boolean isSigned() throws IllegalStateException {
        ServiceReference factoryRef;
        if (this.isSignedDetermined) {
            return this.isSigned;
        }
        BundleContext bundleContext = WorkbenchPlugin.getDefault().getBundleContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.signedcontent.SignedContentFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((factoryRef = bundleContext.getServiceReference(clazz.getName())) == null) {
            throw new IllegalStateException();
        }
        SignedContentFactory contentFactory = (SignedContentFactory)bundleContext.getService(factoryRef);
        try {
            try {
                this.isSignedDetermined = true;
                SignedContent signedContent = contentFactory.getSignedContent(this.bundle);
                this.isSigned = signedContent != null && signedContent.isSigned();
            }
            catch (IOException iOException) {
                this.isSigned = false;
                bundleContext.ungetService(factoryRef);
            }
            catch (GeneralSecurityException generalSecurityException) {
                this.isSigned = false;
                bundleContext.ungetService(factoryRef);
            }
        }
        finally {
            bundleContext.ungetService(factoryRef);
        }
        return this.isSigned;
    }

    public Bundle getBundle() {
        return this.bundle;
    }
}

