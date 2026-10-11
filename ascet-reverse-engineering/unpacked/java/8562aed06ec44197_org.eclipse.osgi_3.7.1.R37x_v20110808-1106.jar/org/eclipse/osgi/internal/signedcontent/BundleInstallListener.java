/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.internal.provisional.service.security.AuthorizationEngine;
import org.eclipse.osgi.internal.signedcontent.SignedContentImpl;
import org.eclipse.osgi.internal.signedcontent.SignedStorageHook;
import org.eclipse.osgi.internal.signedcontent.TrustEngineListener;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.SynchronousBundleListener;

public class BundleInstallListener
implements SynchronousBundleListener {
    public void bundleChanged(BundleEvent event) {
        Bundle bundle = event.getBundle();
        switch (event.getType()) {
            case 1: 
            case 8: {
                AuthorizationEngine authEngine;
                TrustEngineListener listener = TrustEngineListener.getInstance();
                AuthorizationEngine authorizationEngine = authEngine = listener == null ? null : listener.getAuthorizationEngine();
                if (authEngine == null) break;
                BaseData baseData = (BaseData)((AbstractBundle)bundle).getBundleData();
                SignedStorageHook hook = (SignedStorageHook)baseData.getStorageHook(SignedStorageHook.KEY);
                SignedContentImpl signedContent = hook != null ? hook.signedContent : null;
                authEngine.authorize(signedContent, bundle);
                break;
            }
        }
    }
}

