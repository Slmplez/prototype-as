/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.service.security;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.util.Properties;
import org.eclipse.core.runtime.adaptor.LocationManager;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.baseadaptor.DevClassPathHelper;
import org.eclipse.osgi.internal.provisional.service.security.AuthorizationEngine;
import org.eclipse.osgi.internal.provisional.service.security.AuthorizationEvent;
import org.eclipse.osgi.internal.signedcontent.SignedBundleHook;
import org.eclipse.osgi.internal.signedcontent.SignedStorageHook;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Version;

public class DefaultAuthorizationEngine
extends AuthorizationEngine {
    private static final String VERSION_PROP = "Version";
    private static final String VERSION_NUM = "1.0";
    private static final Version VERSION_MAX = new Version(2, 0, 0);
    private final State systemState;
    private final BundleContext bundleContext;
    public static final int ENFORCE_NONE = 0;
    public static final int ENFORCE_SIGNED = 1;
    public static final int ENFORCE_TRUSTED = 2;
    public static final int ENFORCE_VALIDITY = 4;
    private static final String STR_ENFORCE_NONE = "any";
    private static final String STR_ENFORCE_SIGNED = "signed";
    private static final String STR_ENFORCE_TRUSTED = "trusted";
    private static final String STR_ENFORCE_VALIDITY = "validity";
    private static final String POLICY_NAME = "org.eclipse.equinox.security";
    private static final String POLICY_PROP = "osgi.signedcontent.authorization.engine.policy";
    private static final String FILE_LOAD_POLICY = ".loadpolicy";
    private static int enforceFlags = 0;
    private static final File policyFile;

    static {
        File osgiFile = LocationManager.getOSGiConfigurationDir();
        policyFile = new File(String.valueOf(osgiFile.getPath()) + File.separatorChar + FILE_LOAD_POLICY);
        Properties properties = null;
        if (policyFile.exists()) {
            try {
                properties = new Properties();
                properties.load(new FileInputStream(policyFile));
            }
            catch (IOException e) {
                SignedBundleHook.log("Error loading policy file", 4, e);
            }
        }
        if (properties != null) {
            String policy;
            Version version = new Version(0, 0, 0);
            String versionProp = properties.getProperty(VERSION_PROP);
            if (versionProp != null) {
                try {
                    version = new Version(versionProp);
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            if (VERSION_MAX.compareTo(version) > 0 && (policy = properties.getProperty(POLICY_PROP)) != null) {
                try {
                    enforceFlags = Integer.parseInt(policy);
                }
                catch (NumberFormatException numberFormatException) {}
            }
        } else {
            String policy = FrameworkProperties.getProperty(POLICY_PROP);
            if (policy == null || STR_ENFORCE_NONE.equals(policy)) {
                enforceFlags = 0;
            } else if (STR_ENFORCE_TRUSTED.equals(policy)) {
                enforceFlags = 3;
            } else if (STR_ENFORCE_SIGNED.equals(policy)) {
                enforceFlags = 1;
            } else if (STR_ENFORCE_VALIDITY.equals(policy)) {
                enforceFlags = 7;
            }
        }
    }

    public DefaultAuthorizationEngine(BundleContext context, State systemState) {
        super(context);
        this.bundleContext = context;
        this.systemState = systemState;
    }

    protected AuthorizationEvent doAuthorize(SignedContent content, Object context) {
        boolean enabled = this.isEnabled(content, context);
        AuthorizationEvent event = null;
        if (context instanceof Bundle) {
            BundleDescription desc = this.systemState.getBundle(((Bundle)context).getBundleId());
            if (!enabled) {
                DisabledInfo info = new DisabledInfo(POLICY_NAME, null, desc);
                this.systemState.addDisabledInfo(info);
                event = new AuthorizationEvent(1, content, context, 0);
            } else {
                DisabledInfo info = this.systemState.getDisabledInfo(desc, POLICY_NAME);
                if (info != null) {
                    this.systemState.removeDisabledInfo(info);
                }
                event = new AuthorizationEvent(0, content, context, 0);
            }
        }
        return event;
    }

    private boolean isEnabled(SignedContent content, Object context) {
        String[] devClassPath;
        if (context instanceof Bundle && DevClassPathHelper.inDevelopmentMode() && (devClassPath = DevClassPathHelper.getDevClassPath(((Bundle)context).getSymbolicName())) != null && devClassPath.length > 0) {
            return true;
        }
        if (!((enforceFlags & 1) == 0 || content != null && content.isSigned())) {
            return false;
        }
        SignerInfo[] signerInfos = content == null ? new SignerInfo[]{} : content.getSignerInfos();
        int i = 0;
        while (i < signerInfos.length) {
            if ((enforceFlags & 2) != 0 && !signerInfos[i].isTrusted()) {
                return false;
            }
            if ((enforceFlags & 4) != 0) {
                try {
                    content.checkValidity(signerInfos[i]);
                }
                catch (CertificateException certificateException) {
                    return false;
                }
            }
            ++i;
        }
        return true;
    }

    public int getStatus() {
        if (this.systemState.getDisabledBundles().length != 0) {
            return 1;
        }
        return 0;
    }

    public void processInstalledBundles() {
        Bundle[] bundles = this.bundleContext.getBundles();
        int i = 0;
        while (i < bundles.length) {
            BaseData baseData = (BaseData)((AbstractBundle)bundles[i]).getBundleData();
            SignedStorageHook hook = (SignedStorageHook)baseData.getStorageHook(SignedStorageHook.KEY);
            SignedContent signedContent = hook != null ? hook.getSignedContent() : null;
            this.authorize(signedContent, bundles[i]);
            ++i;
        }
    }

    public void setLoadPolicy(int policy) {
        if ((policy | 1 | 2 | 4) != 7) {
            throw new IllegalArgumentException("Invalid policy: " + policy);
        }
        enforceFlags = policy;
        Properties properties = new Properties();
        properties.setProperty(POLICY_PROP, Integer.toString(policy));
        properties.setProperty(VERSION_PROP, VERSION_NUM);
        try {
            properties.store(new FileOutputStream(policyFile), null);
        }
        catch (IOException e) {
            SignedBundleHook.log("Error saving load policy file", 4, e);
        }
    }

    public int getLoadPolicy() {
        return enforceFlags;
    }
}

