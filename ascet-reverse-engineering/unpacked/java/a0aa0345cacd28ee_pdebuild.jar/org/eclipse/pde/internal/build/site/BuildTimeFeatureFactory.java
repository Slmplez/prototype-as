/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.site;

import java.io.IOException;
import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.IBuildPropertiesConstants;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeFeatureParser;
import org.eclipse.pde.internal.build.site.BuildTimeSite;
import org.eclipse.pde.internal.build.site.BuildTimeSiteContentProvider;
import org.eclipse.pde.internal.build.site.QualifierReplacer;
import org.xml.sax.SAXException;

public class BuildTimeFeatureFactory
implements IPDEBuildConstants,
IBuildPropertiesConstants {
    public static final String BUILDTIME_FEATURE_FACTORY_ID = "org.eclipse.pde.build.BuildTimeFeatureFactory";
    private static BuildTimeFeatureFactory factoryInstance = null;

    public BuildTimeFeatureFactory() {
        factoryInstance = this;
    }

    public static BuildTimeFeatureFactory getInstance() {
        if (factoryInstance == null) {
            factoryInstance = new BuildTimeFeatureFactory();
        }
        return factoryInstance;
    }

    public BuildTimeFeature createFeature(URL url, BuildTimeSite site) throws CoreException {
        BuildTimeFeature feature = null;
        if (url == null) {
            if (site != null) {
                return this.createFeature(site);
            }
            return null;
        }
        try {
            URL featureURL = new URL(url, "feature.xml");
            feature = this.parseBuildFeature(featureURL);
            String qualifier = AbstractScriptGenerator.readProperties(new Path(url.getFile()).removeLastSegments(1).toOSString(), "build.properties", 0).getProperty("qualifier");
            String newVersion = QualifierReplacer.replaceQualifierInVersion(feature.getVersion(), feature.getId(), qualifier, site != null ? site.getFeatureVersions() : null);
            if (newVersion != null) {
                if (feature.getVersion().endsWith("qualifier") && (qualifier == null || !qualifier.equalsIgnoreCase("none"))) {
                    int idx = feature.getVersion().lastIndexOf(".");
                    feature.setContextQualifierLength(newVersion.length() - idx - 1);
                }
                feature.setVersion(newVersion);
            }
            feature.setSite(site);
            feature.setURL(featureURL);
        }
        catch (CoreException e) {
            String message = NLS.bind((String)Messages.error_creatingFeature, (Object)url);
            BundleHelper.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.pde.build", 17, message, (Throwable)e));
            throw e;
        }
        catch (Exception e) {
            String message = NLS.bind((String)Messages.exception_readingFile, (Object)url);
            Status status = new Status(4, "org.eclipse.pde.build", 1, message, (Throwable)e);
            BundleHelper.getDefault().getLog().log((IStatus)status);
            throw new CoreException((IStatus)status);
        }
        return feature;
    }

    public BuildTimeFeature parseBuildFeature(URL featureURL) throws CoreException {
        BuildTimeFeatureParser parser = new BuildTimeFeatureParser();
        BuildTimeFeature feature = null;
        try {
            feature = (BuildTimeFeature)parser.parse(featureURL);
            if (parser.getStatus() != null) {
                throw new CoreException((IStatus)parser.getStatus());
            }
        }
        catch (SAXException e) {
            String message = NLS.bind((String)Messages.error_creatingFeature, (Object)featureURL.toString());
            Status status = new Status(4, "org.eclipse.pde.build", 17, message, (Throwable)e);
            BundleHelper.getDefault().getLog().log((IStatus)status);
            throw new CoreException((IStatus)status);
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.exception_readingFile, (Object)featureURL.toString());
            Status status = new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e);
            BundleHelper.getDefault().getLog().log((IStatus)status);
            throw new CoreException((IStatus)status);
        }
        return feature;
    }

    private BuildTimeFeature createFeature(BuildTimeSite site) {
        BuildTimeSiteContentProvider contentProvider = new BuildTimeSiteContentProvider(null, null, null);
        BuildTimeFeature feature = this.createFeatureModel();
        feature.setSite(site);
        feature.setFeatureContentProvider(contentProvider);
        return feature;
    }

    public BuildTimeFeature createFeatureModel() {
        return new BuildTimeFeature();
    }
}

