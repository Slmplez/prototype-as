/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IBundleGroup
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.about;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import org.eclipse.core.runtime.IBundleGroup;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.about.AboutData;

public class AboutBundleGroupData
extends AboutData {
    private IBundleGroup bundleGroup;
    private URL licenseUrl;
    private URL featureImageUrl;
    private Long featureImageCrc;
    private ImageDescriptor featureImage;

    public AboutBundleGroupData(IBundleGroup bundleGroup) {
        super(bundleGroup.getProviderName(), bundleGroup.getName(), bundleGroup.getVersion(), bundleGroup.getIdentifier());
        this.bundleGroup = bundleGroup;
    }

    public IBundleGroup getBundleGroup() {
        return this.bundleGroup;
    }

    public URL getLicenseUrl() {
        if (this.licenseUrl == null) {
            this.licenseUrl = AboutBundleGroupData.getURL(this.bundleGroup.getProperty("licenseHref"));
        }
        return this.licenseUrl;
    }

    public URL getFeatureImageUrl() {
        if (this.featureImageUrl == null) {
            this.featureImageUrl = AboutBundleGroupData.getURL(this.bundleGroup.getProperty("featureImage"));
        }
        return this.featureImageUrl;
    }

    public ImageDescriptor getFeatureImage() {
        if (this.featureImage == null) {
            this.featureImage = AboutBundleGroupData.getImage(this.getFeatureImageUrl());
        }
        return this.featureImage;
    }

    /*
     * Loose catch block
     */
    public Long getFeatureImageCrc() {
        Long l;
        InputStream in;
        block14: {
            if (this.featureImageCrc != null) {
                return this.featureImageCrc;
            }
            URL url = this.getFeatureImageUrl();
            if (url == null) {
                return null;
            }
            in = null;
            CRC32 checksum = new CRC32();
            in = new CheckedInputStream(url.openStream(), checksum);
            byte[] sink = new byte[1024];
            while (in.read(sink) > 0) {
            }
            l = this.featureImageCrc = new Long(checksum.getValue());
            if (in == null) break block14;
            try {
                in.close();
            }
            catch (IOException iOException) {}
        }
        return l;
        catch (IOException iOException) {
            block15: {
                try {
                    if (in == null) break block15;
                }
                catch (Throwable throwable) {
                    if (in != null) {
                        try {
                            in.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    throw throwable;
                }
                try {
                    in.close();
                }
                catch (IOException iOException3) {}
            }
            return null;
        }
    }

    public String getAboutText() {
        return this.bundleGroup.getProperty("aboutText");
    }
}

