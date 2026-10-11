/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.security.cert.Certificate;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.provisional.service.security.AuthorizationEngine;
import org.eclipse.osgi.internal.signedcontent.SignedBundleFile;
import org.eclipse.osgi.internal.signedcontent.SignedBundleHook;
import org.eclipse.osgi.internal.signedcontent.SignedContentImpl;
import org.eclipse.osgi.internal.signedcontent.SignedStorageHook;
import org.eclipse.osgi.internal.signedcontent.SignerInfoImpl;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public class TrustEngineListener {
    private static volatile TrustEngineListener instance;
    private final BundleContext context;
    private final ServiceTracker<AuthorizationEngine, AuthorizationEngine> authorizationTracker;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    TrustEngineListener(BundleContext context) {
        this.context = context;
        String authEngineProp = FrameworkProperties.getProperty("osgi.signedcontent.authorization.engine");
        FilterImpl filter = null;
        if (authEngineProp != null) {
            try {
                StringBuffer stringBuffer = new StringBuffer("(&(objectClass=");
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.osgi.internal.provisional.service.security.AuthorizationEngine");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                filter = FilterImpl.newInstance(stringBuffer.append(clazz.getName()).append(")(").append("osgi.signedcontent.authorization.engine").append("=").append(authEngineProp).append("))").toString());
            }
            catch (InvalidSyntaxException e) {
                SignedBundleHook.log("Invalid authorization filter", 2, e);
            }
        }
        if (filter != null) {
            this.authorizationTracker = new ServiceTracker(context, filter, null);
        } else {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.internal.provisional.service.security.AuthorizationEngine");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.authorizationTracker = new ServiceTracker(context, clazz.getName(), null);
        }
        this.authorizationTracker.open();
        instance = this;
    }

    public static TrustEngineListener getInstance() {
        return instance;
    }

    void stopTrustEngineListener() {
        this.authorizationTracker.close();
        instance = null;
    }

    public void addedTrustAnchor(Certificate anchor) {
        Bundle[] bundles = this.context.getBundles();
        HashSet<Bundle> unresolved = new HashSet<Bundle>();
        int i = 0;
        while (i < bundles.length) {
            SignedContentImpl signedContent = this.getSignedContent(bundles[i]);
            if (signedContent != null && signedContent.isSigned()) {
                SignerInfo[] infos = signedContent.getSignerInfos();
                int j = 0;
                while (j < infos.length) {
                    SignerInfo tsa;
                    if (infos[j].getTrustAnchor() == null) {
                        unresolved.add(bundles[i]);
                    }
                    if ((tsa = signedContent.getTSASignerInfo(infos[j])) != null && tsa.getTrustAnchor() == null) {
                        unresolved.add(bundles[i]);
                    }
                    ++j;
                }
            }
            if (unresolved.contains(bundles[i])) {
                SignedBundleFile.determineTrust(signedContent, 2);
                this.checkAuthorization(signedContent, bundles[i]);
            }
            ++i;
        }
        if (unresolved.size() > 0) {
            this.resolveBundles(unresolved.toArray(new Bundle[unresolved.size()]), false);
        }
    }

    private void checkAuthorization(SignedContentImpl signedContent, Bundle bundle) {
        AuthorizationEngine authEngine = this.getAuthorizationEngine();
        if (authEngine != null) {
            authEngine.authorize(signedContent, bundle);
        }
    }

    AuthorizationEngine getAuthorizationEngine() {
        return this.authorizationTracker.getService();
    }

    private void resolveBundles(Bundle[] bundles, boolean refresh) {
        ServiceReference<?> ref;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((ref = this.context.getServiceReference(clazz.getName())) == null) {
            return;
        }
        PackageAdmin pa = (PackageAdmin)this.context.getService(ref);
        if (pa == null) {
            return;
        }
        try {
            if (refresh) {
                pa.refreshPackages(bundles);
            } else {
                pa.resolveBundles(bundles);
            }
        }
        finally {
            this.context.ungetService(ref);
        }
    }

    public void removedTrustAnchor(Certificate anchor) {
        Bundle[] bundles = this.context.getBundles();
        HashSet<Bundle> usingAnchor = new HashSet<Bundle>();
        HashSet<SignerInfo> untrustedSigners = new HashSet<SignerInfo>();
        int i = 0;
        while (i < bundles.length) {
            SignedContentImpl signedContent = this.getSignedContent(bundles[i]);
            if (signedContent != null && signedContent.isSigned()) {
                SignerInfo[] infos = signedContent.getSignerInfos();
                int j = 0;
                while (j < infos.length) {
                    SignerInfo tsa;
                    if (anchor.equals(infos[j].getTrustAnchor())) {
                        untrustedSigners.add(infos[j]);
                        usingAnchor.add(bundles[i]);
                    }
                    if ((tsa = signedContent.getTSASignerInfo(infos[j])) != null && anchor.equals(tsa.getTrustAnchor())) {
                        usingAnchor.add(bundles[i]);
                        untrustedSigners.add(tsa);
                    }
                    ++j;
                }
            }
            ++i;
        }
        Iterator untrusted = untrustedSigners.iterator();
        while (untrusted.hasNext()) {
            ((SignerInfoImpl)untrusted.next()).setTrustAnchor(null);
        }
        Iterator untrustedBundles = usingAnchor.iterator();
        while (untrustedBundles.hasNext()) {
            Bundle bundle = (Bundle)untrustedBundles.next();
            SignedContentImpl signedContent = this.getSignedContent(bundle);
            SignedBundleFile.determineTrust(signedContent, 2);
            this.checkAuthorization(signedContent, bundle);
        }
        if (usingAnchor.size() > 0) {
            this.resolveBundles(usingAnchor.toArray(new Bundle[usingAnchor.size()]), true);
        }
    }

    private SignedContentImpl getSignedContent(Bundle bundle) {
        BaseData data = (BaseData)((AbstractBundle)bundle).getBundleData();
        SignedStorageHook hook = (SignedStorageHook)data.getStorageHook(SignedStorageHook.KEY);
        if (hook == null) {
            return null;
        }
        return (SignedContentImpl)hook.getSignedContent();
    }
}

