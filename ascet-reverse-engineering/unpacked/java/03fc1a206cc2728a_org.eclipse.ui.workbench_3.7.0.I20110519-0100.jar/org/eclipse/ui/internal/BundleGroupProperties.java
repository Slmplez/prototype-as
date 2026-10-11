/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IBundleGroup
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal;

import java.net.URL;
import org.eclipse.core.runtime.IBundleGroup;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.branding.IBundleGroupConstants;
import org.eclipse.ui.internal.BrandingProperties;

public class BundleGroupProperties
extends BrandingProperties
implements IBundleGroupConstants {
    private final IBundleGroup bundleGroup;
    private ImageDescriptor featureImageDescriptor;
    private URL featureImageUrl;
    private String tipsAndTricksHref;
    private URL welcomePageUrl;
    private String welcomePerspective;
    private URL licenseUrl;
    private String featureLabel;
    private String featureId;
    private String providerName;
    private String versionId;
    private String brandingId;
    private String brandingVersion;

    public BundleGroupProperties(IBundleGroup bundleGroup) {
        if (bundleGroup == null) {
            throw new IllegalArgumentException();
        }
        this.bundleGroup = bundleGroup;
    }

    public ImageDescriptor getFeatureImage() {
        if (this.featureImageDescriptor == null) {
            this.featureImageDescriptor = BundleGroupProperties.getFeatureImage(this.bundleGroup);
        }
        return this.featureImageDescriptor;
    }

    public URL getFeatureImageUrl() {
        if (this.featureImageUrl == null) {
            this.featureImageUrl = BundleGroupProperties.getFeatureImageUrl(this.bundleGroup);
        }
        return this.featureImageUrl;
    }

    public String getTipsAndTricksHref() {
        if (this.tipsAndTricksHref == null) {
            this.tipsAndTricksHref = BundleGroupProperties.getTipsAndTricksHref(this.bundleGroup);
        }
        return this.tipsAndTricksHref;
    }

    public URL getWelcomePageUrl() {
        if (this.welcomePageUrl == null) {
            this.welcomePageUrl = BundleGroupProperties.getWelcomePageUrl(this.bundleGroup);
        }
        return this.welcomePageUrl;
    }

    public String getWelcomePerspective() {
        if (this.welcomePerspective == null) {
            this.welcomePerspective = BundleGroupProperties.getWelcomePerspective(this.bundleGroup);
        }
        return this.welcomePerspective;
    }

    public URL getLicenseUrl() {
        if (this.licenseUrl == null) {
            this.licenseUrl = BundleGroupProperties.getLicenseUrl(this.bundleGroup);
        }
        return this.licenseUrl;
    }

    public String getFeatureLabel() {
        if (this.featureLabel == null) {
            this.featureLabel = BundleGroupProperties.getFeatureLabel(this.bundleGroup);
        }
        return this.featureLabel;
    }

    public String getFeatureId() {
        if (this.featureId == null) {
            this.featureId = BundleGroupProperties.getFeatureId(this.bundleGroup);
        }
        return this.featureId;
    }

    public String getProviderName() {
        if (this.providerName == null) {
            this.providerName = BundleGroupProperties.getProviderName(this.bundleGroup);
        }
        return this.providerName;
    }

    public String getFeatureVersion() {
        if (this.versionId == null) {
            this.versionId = BundleGroupProperties.getFeatureVersion(this.bundleGroup);
        }
        return this.versionId;
    }

    public String getBrandingBundleId() {
        if (this.brandingId == null) {
            this.brandingId = BundleGroupProperties.getBrandingBundleId(this.bundleGroup);
        }
        return this.brandingId;
    }

    public String getBrandingBundleVersion() {
        if (this.brandingVersion == null) {
            this.brandingVersion = BundleGroupProperties.getBrandingBundleVersion(this.bundleGroup);
        }
        return this.brandingVersion;
    }

    public static ImageDescriptor getFeatureImage(IBundleGroup bundleGroup) {
        return BundleGroupProperties.getImage(bundleGroup.getProperty("featureImage"), null);
    }

    public static URL getFeatureImageUrl(IBundleGroup bundleGroup) {
        return BundleGroupProperties.getUrl(bundleGroup.getProperty("featureImage"), null);
    }

    public static String getTipsAndTricksHref(IBundleGroup bundleGroup) {
        return bundleGroup.getProperty("tipsAndTricksHref");
    }

    public static URL getWelcomePageUrl(IBundleGroup bundleGroup) {
        return BundleGroupProperties.getUrl(bundleGroup.getProperty("welcomePage"), null);
    }

    public static String getWelcomePerspective(IBundleGroup bundleGroup) {
        String property = bundleGroup.getProperty("welcomePerspective");
        return property == null ? null : property;
    }

    public static URL getLicenseUrl(IBundleGroup bundleGroup) {
        return BundleGroupProperties.getUrl(bundleGroup.getProperty("licenseHref"), null);
    }

    public static String getFeatureLabel(IBundleGroup bundleGroup) {
        return bundleGroup.getName();
    }

    public static String getFeatureId(IBundleGroup bundleGroup) {
        return bundleGroup.getIdentifier();
    }

    public static String getProviderName(IBundleGroup bundleGroup) {
        return bundleGroup.getProviderName();
    }

    public static String getFeatureVersion(IBundleGroup bundleGroup) {
        return bundleGroup.getVersion();
    }

    public static String getBrandingBundleId(IBundleGroup bundleGroup) {
        return bundleGroup.getProperty("brandingBundleId");
    }

    public static String getBrandingBundleVersion(IBundleGroup bundleGroup) {
        return bundleGroup.getProperty("brandingBundleVersion");
    }
}

