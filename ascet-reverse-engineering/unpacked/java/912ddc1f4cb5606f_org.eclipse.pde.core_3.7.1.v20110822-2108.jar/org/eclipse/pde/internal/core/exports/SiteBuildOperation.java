/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.exports;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URI;
import java.util.Map;
import java.util.regex.Pattern;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.exports.FeatureBasedExportOperation;
import org.eclipse.pde.internal.core.exports.FeatureExportInfo;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.isite.ISiteDescription;
import org.eclipse.pde.internal.core.isite.ISiteFeature;
import org.eclipse.pde.internal.core.isite.ISiteModel;
import org.eclipse.pde.internal.core.site.WorkspaceSiteModel;
import org.eclipse.pde.internal.core.util.PatternConstructor;
import org.osgi.framework.Version;

public class SiteBuildOperation
extends FeatureBasedExportOperation {
    private long fBuildTime;
    private IFeatureModel[] fFeatureModels;
    private ISiteModel fSiteModel;
    private IContainer fSiteContainer;

    public SiteBuildOperation(IFeatureModel[] features, ISiteModel site, String jobName) {
        super(SiteBuildOperation.getInfo(features, site), jobName);
        this.fFeatureModels = features;
        this.fSiteModel = site;
        this.fSiteContainer = site.getUnderlyingResource().getParent();
        this.setRule(MultiRule.combine((ISchedulingRule)this.fSiteContainer.getProject(), (ISchedulingRule)this.getRule()));
    }

    private static FeatureExportInfo getInfo(IFeatureModel[] models, ISiteModel siteModel) {
        FeatureExportInfo info = new FeatureExportInfo();
        info.useJarFormat = true;
        info.toDirectory = true;
        info.allowBinaryCycles = true;
        info.destinationDirectory = siteModel.getUnderlyingResource().getParent().getLocation().toOSString();
        info.items = models;
        return info;
    }

    protected IStatus run(IProgressMonitor monitor) {
        this.fBuildTime = System.currentTimeMillis();
        IStatus status = super.run(monitor);
        try {
            this.fSiteContainer.refreshLocal(2, monitor);
            this.updateSiteFeatureVersions();
        }
        catch (CoreException ce) {
            return ce.getStatus();
        }
        return status;
    }

    private void updateSiteFeatureVersions() throws CoreException {
        int i = 0;
        while (i < this.fFeatureModels.length) {
            ISiteFeature reVersionCandidate;
            String newVersion;
            IFeature feature = this.fFeatureModels[i].getFeature();
            Version pvi = Version.parseVersion((String)feature.getVersion());
            if ("qualifier".equals(pvi.getQualifier()) && (newVersion = this.findBuiltVersion(feature.getId(), pvi.getMajor(), pvi.getMinor(), pvi.getMicro())) != null && (reVersionCandidate = this.findSiteFeature(feature, pvi)) != null) {
                reVersionCandidate.setVersion(newVersion);
                reVersionCandidate.setURL("features/" + feature.getId() + "_" + newVersion + ".jar");
            }
            ++i;
        }
        ((WorkspaceSiteModel)this.fSiteModel).save();
    }

    private ISiteFeature findSiteFeature(IFeature feature, Version pvi) {
        ISiteFeature reversionCandidate = null;
        ISiteFeature[] siteFeatures = this.fSiteModel.getSite().getFeatures();
        int s = 0;
        while (s < siteFeatures.length) {
            if (siteFeatures[s].getId().equals(feature.getId()) && siteFeatures[s].getVersion().equals(feature.getVersion())) {
                return siteFeatures[s];
            }
            ++s;
        }
        String highestQualifier = null;
        int s2 = 0;
        while (s2 < siteFeatures.length) {
            if (siteFeatures[s2].getId().equals(feature.getId())) {
                Version candidatePvi = Version.parseVersion((String)siteFeatures[s2].getVersion());
                if (pvi.getMajor() == candidatePvi.getMajor() && pvi.getMinor() == candidatePvi.getMinor() && pvi.getMicro() == candidatePvi.getMicro() && (reversionCandidate == null || candidatePvi.getQualifier().compareTo(highestQualifier) > 0)) {
                    reversionCandidate = siteFeatures[s2];
                    highestQualifier = candidatePvi.getQualifier();
                }
            }
            ++s2;
        }
        return reversionCandidate;
    }

    private String findBuiltVersion(String id, int major, int minor, int service) {
        IFolder featuresFolder = this.fSiteContainer.getFolder((IPath)new Path("features"));
        if (!featuresFolder.exists()) {
            return null;
        }
        IResource[] featureJars = null;
        try {
            featureJars = featuresFolder.members();
        }
        catch (CoreException coreException) {
            return null;
        }
        Pattern pattern = PatternConstructor.createPattern(String.valueOf(id) + "_" + major + "." + minor + "." + service + "*.jar", true);
        String newestName = null;
        long newestTime = 0L;
        int i = 0;
        while (i < featureJars.length) {
            File file = new File(featureJars[i].getLocation().toOSString());
            long jarTime = file.lastModified();
            String jarName = featureJars[i].getName();
            if (jarTime >= this.fBuildTime && jarTime > newestTime && pattern.matcher(jarName).matches()) {
                newestName = featureJars[i].getName();
                newestTime = jarTime;
            }
            ++i;
        }
        if (newestName == null) {
            return null;
        }
        return newestName.substring(id.length() + 1, newestName.length() - 4);
    }

    protected void createPostProcessingFiles() {
        this.createPostProcessingFile(new File(this.fFeatureLocation, FEATURE_POST_PROCESSING));
        this.createPostProcessingFile(new File(this.fFeatureLocation, PLUGIN_POST_PROCESSING));
    }

    protected boolean publishingP2Metadata() {
        return true;
    }

    protected void setP2MetaDataProperties(Map map) {
        if (this.fInfo.toDirectory) {
            ISiteDescription description;
            map.put("generate.p2.metadata", "true");
            map.put("p2.flavor", "tooling");
            map.put("p2.publish.artifacts", "true");
            map.put("p2.final.mode.override", "true");
            map.put("p2.compress", "true");
            map.put("p2.gathering", Boolean.toString(this.publishingP2Metadata()));
            IResource siteXML = this.fSiteModel.getUnderlyingResource();
            if (siteXML.exists() && siteXML.getLocationURI() != null) {
                map.put("p2.category.site", URIUtil.toUnencodedString((URI)siteXML.getLocationURI()));
            }
            String name = (description = this.fSiteModel.getSite().getDescription()) != null && description.getName() != null && description.getName().length() > 0 ? description.getName() : PDECoreMessages.SiteBuildOperation_0;
            map.put("p2.metadata.repo.name", name);
            map.put("p2.artifact.repo.name", name);
            try {
                String destination = new File(this.fBuildTempMetadataLocation).toURL().toString();
                map.put("p2.build.repo", destination);
            }
            catch (MalformedURLException e) {
                PDECore.log(e);
            }
        }
    }
}

