/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.UIServices
 *  org.eclipse.equinox.p2.core.UIServices$TrustInfo
 *  org.eclipse.osgi.service.security.TrustEngine
 *  org.eclipse.osgi.signedcontent.SignedContent
 *  org.eclipse.osgi.signedcontent.SignedContentFactory
 *  org.eclipse.osgi.signedcontent.SignerInfo
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.p2.engine.phases;

import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.engine.EngineActivator;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.UIServices;
import org.eclipse.osgi.service.security.TrustEngine;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentFactory;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.util.tracker.ServiceTracker;

public class CertificateChecker {
    private ArrayList<File> artifacts;
    private final IProvisioningAgent agent;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public CertificateChecker() {
        this(null);
    }

    public CertificateChecker(IProvisioningAgent agent) {
        this.agent = agent;
        this.artifacts = new ArrayList();
    }

    public IStatus start() {
        BundleContext context = EngineActivator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.signedcontent.SignedContentFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference contentFactoryRef = context.getServiceReference((Class)clazz);
        SignedContentFactory verifierFactory = (SignedContentFactory)context.getService(contentFactoryRef);
        try {
            IStatus iStatus = this.checkCertificates(verifierFactory);
            return iStatus;
        }
        finally {
            context.ungetService(contentFactoryRef);
        }
    }

    private IStatus checkCertificates(SignedContentFactory verifierFactory) {
        Certificate[][] unTrustedCertificateChains;
        String[] details;
        int i;
        UIServices serviceUI = (UIServices)this.agent.getService(UIServices.SERVICE_NAME);
        SignedContent content = null;
        SignerInfo[] signerInfo = null;
        ArrayList<Certificate> untrusted = new ArrayList<Certificate>();
        ArrayList<File> unsigned = new ArrayList<File>();
        ArrayList<Certificate[]> untrustedChain = new ArrayList<Certificate[]>();
        IStatus status = Status.OK_STATUS;
        if (this.artifacts.size() == 0 || serviceUI == null) {
            return status;
        }
        Iterator<File> iterator = this.artifacts.iterator();
        while (iterator.hasNext()) {
            File artifact = iterator.next();
            try {
                content = verifierFactory.getSignedContent(artifact);
                if (!content.isSigned()) {
                    unsigned.add(artifact);
                    continue;
                }
                signerInfo = content.getSignerInfos();
            }
            catch (GeneralSecurityException e) {
                return new Status(4, "org.eclipse.equinox.p2.engine", Messages.CertificateChecker_SignedContentError, (Throwable)e);
            }
            catch (IOException e) {
                return new Status(4, "org.eclipse.equinox.p2.engine", Messages.CertificateChecker_SignedContentIOError, (Throwable)e);
            }
            i = 0;
            while (i < signerInfo.length) {
                Certificate[] certificateChain;
                if (!signerInfo[i].isTrusted() && !untrusted.contains((certificateChain = signerInfo[i].getCertificateChain())[0])) {
                    untrusted.add(certificateChain[0]);
                    untrustedChain.add(certificateChain);
                }
                ++i;
            }
        }
        String policy = this.getUnsignedContentPolicy();
        if (!unsigned.isEmpty() && "fail".equals(policy)) {
            return new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.CertificateChecker_UnsignedNotAllowed, unsigned));
        }
        if ("allow".equals(policy) || unsigned.isEmpty()) {
            details = null;
        } else {
            details = new String[unsigned.size()];
            i = 0;
            while (i < details.length) {
                details[i] = ((File)unsigned.get(i)).toString();
                ++i;
            }
        }
        if (untrusted.isEmpty()) {
            unTrustedCertificateChains = null;
        } else {
            unTrustedCertificateChains = new Certificate[untrustedChain.size()][];
            int i2 = 0;
            while (i2 < untrustedChain.size()) {
                unTrustedCertificateChains[i2] = (Certificate[])untrustedChain.get(i2);
                ++i2;
            }
        }
        if (details == null && unTrustedCertificateChains == null) {
            return status;
        }
        UIServices.TrustInfo trustInfo = serviceUI.getTrustInfo(unTrustedCertificateChains, details);
        if (!trustInfo.trustUnsignedContent()) {
            return Status.CANCEL_STATUS;
        }
        Certificate[] trustedCertificates = trustInfo.getTrustedCertificates();
        if (unTrustedCertificateChains != null && trustedCertificates == null) {
            return new Status(8, "org.eclipse.equinox.p2.engine", Messages.CertificateChecker_CertificateRejected);
        }
        if (trustedCertificates != null) {
            int i3 = 0;
            while (i3 < trustedCertificates.length) {
                untrusted.remove(trustedCertificates[i3]);
                ++i3;
            }
        }
        if (untrusted.size() > 0) {
            return new Status(8, "org.eclipse.equinox.p2.engine", Messages.CertificateChecker_CertificateRejected);
        }
        if (trustInfo.persistTrust()) {
            return this.persistTrustedCertificates(trustedCertificates);
        }
        return status;
    }

    /*
     * Loose catch block
     */
    private IStatus persistTrustedCertificates(Certificate[] trustedCertificates) {
        if (trustedCertificates == null) {
            return new Status(1, "org.eclipse.equinox.p2.engine", Messages.CertificateChecker_CertificateRejected);
        }
        BundleContext bundleContext = EngineActivator.getContext();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.osgi.service.security.TrustEngine");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceTracker trustEngineTracker = new ServiceTracker(bundleContext, (Class)clazz, null);
        trustEngineTracker.open();
        Object[] trustEngines = trustEngineTracker.getServices();
        try {
            if (trustEngines == null) {
                return null;
            }
            Certificate[] certificateArray = trustedCertificates;
            int n = trustedCertificates.length;
            int n2 = 0;
            while (n2 < n) {
                Certificate trustedCertificate = certificateArray[n2];
                Object[] objectArray = trustEngines;
                int n3 = trustEngines.length;
                int n4 = 0;
                while (n4 < n3) {
                    Object engine = objectArray[n4];
                    TrustEngine trustEngine = (TrustEngine)engine;
                    if (!trustEngine.isReadOnly()) {
                        try {
                            trustEngine.addTrustAnchor(trustedCertificate, trustedCertificate.toString());
                            break;
                        }
                        catch (IOException e) {
                            Status status = new Status(1, "org.eclipse.equinox.p2.engine", Messages.CertificateChecker_KeystoreConnectionError, (Throwable)e);
                            trustEngineTracker.close();
                            return status;
                        }
                        catch (GeneralSecurityException e) {
                            Status status = new Status(1, "org.eclipse.equinox.p2.engine", Messages.CertificateChecker_CertificateError, (Throwable)e);
                            trustEngineTracker.close();
                            return status;
                        }
                    }
                    ++n4;
                }
                ++n2;
                continue;
                {
                    catch (Throwable throwable) {
                        throw throwable;
                    }
                }
            }
        }
        finally {
            trustEngineTracker.close();
        }
        return Status.OK_STATUS;
    }

    private String getUnsignedContentPolicy() {
        String policy = EngineActivator.getContext().getProperty("eclipse.p2.unsignedPolicy");
        if (policy == null) {
            policy = "prompt";
        }
        return policy;
    }

    public void add(File toAdd) {
        this.artifacts.add(toAdd);
    }

    public void add(Object[] toAdd) {
        int i = 0;
        while (i < toAdd.length) {
            if (toAdd[i] instanceof File) {
                this.add((File)toAdd[i]);
            }
            ++i;
        }
    }
}

