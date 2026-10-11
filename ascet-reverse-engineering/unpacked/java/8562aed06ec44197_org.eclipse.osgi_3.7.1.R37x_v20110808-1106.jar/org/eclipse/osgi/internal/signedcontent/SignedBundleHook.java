/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.security.AccessController;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.bundlefile.DirBundleFile;
import org.eclipse.osgi.baseadaptor.bundlefile.ZipBundleFile;
import org.eclipse.osgi.baseadaptor.hooks.AdaptorHook;
import org.eclipse.osgi.baseadaptor.hooks.BundleFileWrapperFactoryHook;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.internal.service.security.DefaultAuthorizationEngine;
import org.eclipse.osgi.internal.service.security.KeyStoreTrustEngine;
import org.eclipse.osgi.internal.signedcontent.BundleInstallListener;
import org.eclipse.osgi.internal.signedcontent.LegacyVerifierFactory;
import org.eclipse.osgi.internal.signedcontent.SignedBundleFile;
import org.eclipse.osgi.internal.signedcontent.SignedContentConstants;
import org.eclipse.osgi.internal.signedcontent.SignedContentFile;
import org.eclipse.osgi.internal.signedcontent.SignedContentImpl;
import org.eclipse.osgi.internal.signedcontent.SignedContentMessages;
import org.eclipse.osgi.internal.signedcontent.SignedStorageHook;
import org.eclipse.osgi.internal.signedcontent.TrustEngineListener;
import org.eclipse.osgi.service.security.TrustEngine;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentFactory;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceRegistration;
import org.osgi.util.tracker.ServiceTracker;

public class SignedBundleHook
implements AdaptorHook,
BundleFileWrapperFactoryHook,
HookConfigurator,
SignedContentFactory {
    static final int VERIFY_CERTIFICATE = 1;
    static final int VERIFY_TRUST = 2;
    static final int VERIFY_RUNTIME = 4;
    static final int VERIFY_AUTHORITY = 8;
    static final int VERIFY_ALL = 15;
    private static String SUPPORT_CERTIFICATE = "certificate";
    private static String SUPPORT_TRUST = "trust";
    private static String SUPPORT_RUNTIME = "runtime";
    private static String SUPPORT_AUTHORITY = "authority";
    private static String SUPPORT_ALL = "all";
    private static String SUPPORT_TRUE = "true";
    private static String CACERTS_PATH = String.valueOf(System.getProperty("java.home")) + File.separatorChar + "lib" + File.separatorChar + "security" + File.separatorChar + "cacerts";
    private static String CACERTS_TYPE = "JKS";
    private static ServiceTracker<TrustEngine, TrustEngine> trustEngineTracker;
    private static BaseAdaptor ADAPTOR;
    private static String SIGNED_BUNDLE_SUPPORT;
    private static String SIGNED_CONTENT_SUPPORT;
    private static String OSGI_KEYSTORE;
    private static int supportSignedBundles;
    private TrustEngineListener trustEngineListener;
    private BundleInstallListener installListener;
    private ServiceRegistration<?> signedContentFactoryReg;
    private ServiceRegistration<?> systemTrustEngineReg;
    private ServiceRegistration<?> defaultAuthEngineReg;
    private List<ServiceRegistration<?>> osgiTrustEngineReg;
    private ServiceRegistration<?> legacyFactoryReg;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        SIGNED_BUNDLE_SUPPORT = "osgi.support.signature.verify";
        SIGNED_CONTENT_SUPPORT = "osgi.signedcontent.support";
        OSGI_KEYSTORE = "osgi.framework.keystore";
    }

    public void initialize(BaseAdaptor adaptor) {
        ADAPTOR = adaptor;
    }

    public void frameworkStart(BundleContext context) throws BundleException {
        Class<?> clazz;
        block28: {
            if ((supportSignedBundles & 8) != 0) {
                this.installListener = new BundleInstallListener();
                context.addBundleListener(this.installListener);
                Hashtable<String, Object> properties = new Hashtable<String, Object>(7);
                ((Dictionary)properties).put("service.ranking", new Integer(Integer.MIN_VALUE));
                ((Dictionary)properties).put("osgi.signedcontent.authorization.engine", SignedContentConstants.DEFAULT_AUTHORIZATION_ENGINE);
                Class<?> clazz2 = class$0;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$0 = Class.forName("org.eclipse.osgi.internal.provisional.service.security.AuthorizationEngine");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                this.defaultAuthEngineReg = context.registerService(clazz2.getName(), (Object)new DefaultAuthorizationEngine(context, ADAPTOR.getState()), properties);
            }
            Hashtable<String, Object> trustEngineProps = new Hashtable<String, Object>(7);
            ((Dictionary)trustEngineProps).put("service.ranking", new Integer(Integer.MIN_VALUE));
            ((Dictionary)trustEngineProps).put("osgi.signedcontent.trust.engine", SignedContentConstants.DEFAULT_TRUST_ENGINE);
            KeyStoreTrustEngine systemTrustEngine = new KeyStoreTrustEngine(CACERTS_PATH, CACERTS_TYPE, null, "System");
            Class<?> clazz3 = class$1;
            if (clazz3 == null) {
                try {
                    clazz3 = class$1 = Class.forName("org.eclipse.osgi.service.security.TrustEngine");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.systemTrustEngineReg = context.registerService(clazz3.getName(), (Object)systemTrustEngine, trustEngineProps);
            String osgiTrustPath = context.getProperty(OSGI_KEYSTORE);
            if (osgiTrustPath != null) {
                try {
                    URL url = new URL(osgiTrustPath);
                    if (!"file".equals(url.getProtocol())) break block28;
                    ((Dictionary)trustEngineProps).put("osgi.signedcontent.trust.engine", OSGI_KEYSTORE);
                    String path = url.getPath();
                    this.osgiTrustEngineReg = new ArrayList(1);
                    Class<?> clazz4 = class$1;
                    if (clazz4 == null) {
                        try {
                            clazz4 = class$1 = Class.forName("org.eclipse.osgi.service.security.TrustEngine");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    this.osgiTrustEngineReg.add(context.registerService(clazz4.getName(), (Object)new KeyStoreTrustEngine(path, CACERTS_TYPE, null, OSGI_KEYSTORE), trustEngineProps));
                }
                catch (MalformedURLException e) {
                    SignedBundleHook.log("Invalid setting for " + OSGI_KEYSTORE, 2, e);
                }
            } else {
                String osgiTrustRepoPaths = context.getProperty("org.osgi.framework.trust.repositories");
                if (osgiTrustRepoPaths != null) {
                    ((Dictionary)trustEngineProps).put("osgi.signedcontent.trust.engine", "org.osgi.framework.trust.repositories");
                    StringTokenizer st = new StringTokenizer(osgiTrustRepoPaths, File.pathSeparator);
                    this.osgiTrustEngineReg = new ArrayList(1);
                    while (st.hasMoreTokens()) {
                        String trustRepoPath = st.nextToken();
                        Class<?> clazz5 = class$1;
                        if (clazz5 == null) {
                            try {
                                clazz5 = Class.forName("org.eclipse.osgi.service.security.TrustEngine");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        this.osgiTrustEngineReg.add(context.registerService(clazz5.getName(), (Object)new KeyStoreTrustEngine(trustRepoPath, CACERTS_TYPE, null, OSGI_KEYSTORE), trustEngineProps));
                    }
                }
            }
        }
        if ((supportSignedBundles & 2) != 0) {
            this.trustEngineListener = new TrustEngineListener(context);
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.osgi.signedcontent.SignedContentFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.signedContentFactoryReg = context.registerService(clazz.getName(), (Object)this, null);
        Class<?> clazz6 = class$3;
        if (clazz6 == null) {
            try {
                clazz6 = class$3 = Class.forName("org.eclipse.osgi.internal.provisional.verifier.CertificateVerifierFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.legacyFactoryReg = context.registerService(clazz6.getName(), (Object)new LegacyVerifierFactory(this), null);
    }

    public void frameworkStop(BundleContext context) throws BundleException {
        if (this.legacyFactoryReg != null) {
            this.legacyFactoryReg.unregister();
            this.legacyFactoryReg = null;
        }
        if (this.signedContentFactoryReg != null) {
            this.signedContentFactoryReg.unregister();
            this.signedContentFactoryReg = null;
        }
        if (this.systemTrustEngineReg != null) {
            this.systemTrustEngineReg.unregister();
            this.systemTrustEngineReg = null;
        }
        if (this.osgiTrustEngineReg != null) {
            Iterator<ServiceRegistration<?>> it = this.osgiTrustEngineReg.iterator();
            while (it.hasNext()) {
                it.next().unregister();
            }
            this.osgiTrustEngineReg = null;
        }
        if (this.defaultAuthEngineReg != null) {
            this.defaultAuthEngineReg.unregister();
            this.defaultAuthEngineReg = null;
        }
        if (this.trustEngineListener != null) {
            this.trustEngineListener.stopTrustEngineListener();
            this.trustEngineListener = null;
        }
        if (this.installListener != null) {
            context.removeBundleListener(this.installListener);
            this.installListener = null;
        }
        if (trustEngineTracker != null) {
            trustEngineTracker.close();
            trustEngineTracker = null;
        }
    }

    public void frameworkStopping(BundleContext context) {
    }

    public void addProperties(Properties properties) {
    }

    public URLConnection mapLocationToURLConnection(String location) throws IOException {
        return null;
    }

    public void handleRuntimeError(Throwable error) {
    }

    public FrameworkLog createFrameworkLog() {
        return null;
    }

    public BundleFile wrapBundleFile(BundleFile bundleFile, Object content, BaseData data, boolean base) {
        try {
            if (bundleFile != null) {
                SignedContentImpl signedContent;
                SignedBundleFile signedBaseFile;
                SignedStorageHook hook = (SignedStorageHook)data.getStorageHook(SignedStorageHook.KEY);
                if (base && hook != null) {
                    signedBaseFile = new SignedBundleFile(hook.signedContent, supportSignedBundles);
                    if (hook.signedContent == null) {
                        signedBaseFile.setBundleFile(bundleFile);
                        signedContent = signedBaseFile.getSignedContent();
                        hook.signedContent = signedContent != null && signedContent.isSigned() ? signedContent : null;
                    }
                } else {
                    signedBaseFile = new SignedBundleFile(null, supportSignedBundles);
                }
                signedBaseFile.setBundleFile(bundleFile);
                signedContent = signedBaseFile.getSignedContent();
                if (signedContent != null && signedContent.isSigned()) {
                    signedContent.setContent(signedBaseFile);
                    bundleFile = signedBaseFile;
                }
            }
        }
        catch (IOException e) {
            SignedBundleHook.log("Bad bundle file: " + bundleFile.getBaseFile(), 2, e);
        }
        catch (GeneralSecurityException e) {
            SignedBundleHook.log("Bad bundle file: " + bundleFile.getBaseFile(), 2, e);
        }
        return bundleFile;
    }

    public void addHooks(HookRegistry hookRegistry) {
        hookRegistry.addAdaptorHook(this);
        String[] support = ManifestElement.getArrayFromList(FrameworkProperties.getProperty(SIGNED_CONTENT_SUPPORT, FrameworkProperties.getProperty(SIGNED_BUNDLE_SUPPORT)), ",");
        int i = 0;
        while (i < support.length) {
            if (SUPPORT_CERTIFICATE.equals(support[i])) {
                supportSignedBundles |= 1;
            } else if (SUPPORT_TRUST.equals(support[i])) {
                supportSignedBundles |= 3;
            } else if (SUPPORT_RUNTIME.equals(support[i])) {
                supportSignedBundles |= 5;
            } else if (SUPPORT_AUTHORITY.equals(support[i])) {
                supportSignedBundles |= 0xB;
            } else if (SUPPORT_TRUE.equals(support[i]) || SUPPORT_ALL.equals(support[i])) {
                supportSignedBundles |= 0xF;
            }
            ++i;
        }
        if ((supportSignedBundles & 1) != 0) {
            hookRegistry.addStorageHook(new SignedStorageHook());
            hookRegistry.addBundleFileWrapperFactoryHook(this);
        }
    }

    public SignedContent getSignedContent(File content) throws IOException, InvalidKeyException, SignatureException, CertificateException, NoSuchAlgorithmException, NoSuchProviderException {
        if (content == null) {
            throw new IllegalArgumentException("null content");
        }
        BundleFile contentBundleFile = content.isDirectory() ? new DirBundleFile(content) : new ZipBundleFile(content, null);
        SignedBundleFile result = new SignedBundleFile(null, 15);
        try {
            result.setBundleFile(contentBundleFile);
        }
        catch (InvalidKeyException e) {
            throw (InvalidKeyException)new InvalidKeyException(NLS.bind(SignedContentMessages.Factory_SignedContent_Error, content)).initCause(e);
        }
        catch (SignatureException e) {
            throw (SignatureException)new SignatureException(NLS.bind(SignedContentMessages.Factory_SignedContent_Error, content)).initCause(e);
        }
        catch (CertificateException e) {
            throw (CertificateException)new CertificateException(NLS.bind(SignedContentMessages.Factory_SignedContent_Error, content)).initCause(e);
        }
        catch (NoSuchAlgorithmException e) {
            throw (NoSuchAlgorithmException)new NoSuchAlgorithmException(NLS.bind(SignedContentMessages.Factory_SignedContent_Error, content)).initCause(e);
        }
        catch (NoSuchProviderException e) {
            throw (NoSuchProviderException)new NoSuchProviderException(NLS.bind(SignedContentMessages.Factory_SignedContent_Error, content)).initCause(e);
        }
        return new SignedContentFile(result.getSignedContent());
    }

    public SignedContent getSignedContent(Bundle bundle) throws IOException, InvalidKeyException, SignatureException, CertificateException, NoSuchAlgorithmException, NoSuchProviderException, IllegalArgumentException {
        SignedContentImpl result;
        final BundleData data = ((AbstractBundle)bundle).getBundleData();
        if (!(data instanceof BaseData)) {
            throw new IllegalArgumentException("Invalid bundle object.  No BaseData found.");
        }
        SignedStorageHook hook = (SignedStorageHook)((BaseData)data).getStorageHook(SignedStorageHook.KEY);
        SignedContentImpl signedContentImpl = result = hook != null ? hook.signedContent : null;
        if (result != null) {
            return result;
        }
        if (System.getSecurityManager() == null) {
            return this.getSignedContent(((BaseData)data).getBundleFile().getBaseFile());
        }
        try {
            return AccessController.doPrivileged(new PrivilegedExceptionAction<SignedContent>(){

                @Override
                public SignedContent run() throws Exception {
                    return SignedBundleHook.this.getSignedContent(((BaseData)data).getBundleFile().getBaseFile());
                }
            });
        }
        catch (PrivilegedActionException e) {
            if (e.getException() instanceof IOException) {
                throw (IOException)e.getException();
            }
            if (e.getException() instanceof InvalidKeyException) {
                throw (InvalidKeyException)e.getException();
            }
            if (e.getException() instanceof SignatureException) {
                throw (SignatureException)e.getException();
            }
            if (e.getException() instanceof CertificateException) {
                throw (CertificateException)e.getException();
            }
            if (e.getException() instanceof NoSuchAlgorithmException) {
                throw (NoSuchAlgorithmException)e.getException();
            }
            if (e.getException() instanceof NoSuchProviderException) {
                throw (NoSuchProviderException)e.getException();
            }
            throw new RuntimeException("Unknown error.", e.getException());
        }
    }

    public static void log(String msg, int severity, Throwable t) {
        if (ADAPTOR == null) {
            System.err.println(msg);
            t.printStackTrace();
            return;
        }
        FrameworkLogEntry entry = new FrameworkLogEntry("org.eclipse.osgi", severity, 0, msg, 0, t, null);
        ADAPTOR.getFrameworkLog().log(entry);
    }

    static BundleContext getContext() {
        if (ADAPTOR == null) {
            return null;
        }
        return ADAPTOR.getContext();
    }

    static TrustEngine[] getTrustEngines() {
        Object[] services;
        BundleContext context = SignedBundleHook.getContext();
        if (context == null) {
            return new TrustEngine[0];
        }
        if (trustEngineTracker == null) {
            String trustEngineProp = FrameworkProperties.getProperty("osgi.signedcontent.trust.engine");
            FilterImpl filter = null;
            if (trustEngineProp != null) {
                try {
                    StringBuffer stringBuffer = new StringBuffer("(&(objectClass=");
                    Class<?> clazz = class$1;
                    if (clazz == null) {
                        try {
                            clazz = class$1 = Class.forName("org.eclipse.osgi.service.security.TrustEngine");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    filter = FilterImpl.newInstance(stringBuffer.append(clazz.getName()).append(")(").append("osgi.signedcontent.trust.engine").append("=").append(trustEngineProp).append("))").toString());
                }
                catch (InvalidSyntaxException e) {
                    SignedBundleHook.log("Invalid trust engine filter", 2, e);
                }
            }
            if (filter != null) {
                trustEngineTracker = new ServiceTracker(context, filter, null);
            } else {
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = class$1 = Class.forName("org.eclipse.osgi.service.security.TrustEngine");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                trustEngineTracker = new ServiceTracker(context, clazz.getName(), null);
            }
            trustEngineTracker.open();
        }
        if ((services = trustEngineTracker.getServices()) != null) {
            TrustEngine[] engines = new TrustEngine[services.length];
            System.arraycopy(services, 0, engines, 0, services.length);
            return engines;
        }
        return new TrustEngine[0];
    }
}

