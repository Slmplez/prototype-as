/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.garbagecollector.MarkSet
 *  org.eclipse.equinox.internal.p2.garbagecollector.MarkSetProvider
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.artifact.ArtifactKeyQuery
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.garbagecollector.MarkSet;
import org.eclipse.equinox.internal.p2.garbagecollector.MarkSetProvider;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.WhatIsRunning;
import org.eclipse.equinox.internal.p2.update.Configuration;
import org.eclipse.equinox.internal.p2.update.Feature;
import org.eclipse.equinox.internal.p2.update.Site;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.artifact.ArtifactKeyQuery;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EclipseMarkSetProvider
extends MarkSetProvider {
    private static final String ARTIFACT_CLASSIFIER_OSGI_BUNDLE = "osgi.bundle";
    private static final String ARTIFACT_CLASSIFIER_FEATURE = "org.eclipse.update.feature";
    private Collection<IArtifactKey> artifactKeyList = null;

    public MarkSet[] getMarkSets(IProvisioningAgent agent, IProfile inProfile) {
        this.artifactKeyList = new HashSet<IArtifactKey>();
        IFileArtifactRepository repositoryToGC = Util.getBundlePoolRepository(agent, inProfile);
        if (repositoryToGC == null) {
            return new MarkSet[0];
        }
        this.addArtifactKeys(inProfile);
        IProfile currentProfile = this.getCurrentProfile(agent);
        if (currentProfile != null && inProfile.getProfileId().equals(currentProfile.getProfileId())) {
            this.addRunningBundles((IArtifactRepository)repositoryToGC);
            this.addRunningFeatures(inProfile, (IArtifactRepository)repositoryToGC);
        }
        return new MarkSet[]{new MarkSet(this.artifactKeyList.toArray(new IArtifactKey[this.artifactKeyList.size()]), (IArtifactRepository)repositoryToGC)};
    }

    private void addRunningFeatures(IProfile profile, IArtifactRepository repositoryToGC) {
        try {
            List<Feature> allFeatures = this.getAllFeatures(Configuration.load(new File(Util.getConfigurationFolder(profile), "org.eclipse.update/platform.xml"), null));
            for (Feature f : allFeatures) {
                IArtifactKey match = this.searchArtifact(f.getId(), Version.create((String)f.getVersion()), ARTIFACT_CLASSIFIER_FEATURE, repositoryToGC);
                if (match == null) continue;
                this.artifactKeyList.add(match);
            }
        }
        catch (ProvisionException provisionException) {}
    }

    private List<Feature> getAllFeatures(Configuration cfg) {
        if (cfg == null) {
            return CollectionUtils.emptyList();
        }
        List<Site> sites = cfg.getSites();
        ArrayList<Feature> result = new ArrayList<Feature>();
        for (Site object : sites) {
            Feature[] features = object.getFeatures();
            int i = 0;
            while (i < features.length) {
                result.add(features[i]);
                ++i;
            }
        }
        return result;
    }

    private IProfile getCurrentProfile(IProvisioningAgent agent) {
        IProfileRegistry pr = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
        if (pr == null) {
            return null;
        }
        return pr.getProfile("_SELF_");
    }

    private void addArtifactKeys(IProfile aProfile) {
        Iterator installableUnits = aProfile.query(QueryUtil.createIUAnyQuery(), null).iterator();
        while (installableUnits.hasNext()) {
            Collection keys = ((IInstallableUnit)installableUnits.next()).getArtifacts();
            if (keys == null) continue;
            this.artifactKeyList.addAll(keys);
        }
    }

    public IArtifactRepository getRepository(IProvisioningAgent agent, IProfile aProfile) {
        return Util.getBundlePoolRepository(agent, aProfile);
    }

    private void addRunningBundles(IArtifactRepository repo) {
        this.artifactKeyList.addAll(this.findCorrespondinArtifacts(new WhatIsRunning().getBundlesBeingRun(), repo));
    }

    private IArtifactKey searchArtifact(String searchedId, Version searchedVersion, String classifier, IArtifactRepository repo) {
        VersionRange range = searchedVersion != null ? new VersionRange(searchedVersion, true, searchedVersion, true) : null;
        ArtifactKeyQuery query = new ArtifactKeyQuery(classifier, searchedId, range);
        IQueryResult keys = repo.query((IQuery)query, null);
        if (!keys.isEmpty()) {
            return (IArtifactKey)keys.iterator().next();
        }
        return null;
    }

    private List<IArtifactKey> findCorrespondinArtifacts(BundleInfo[] bis, IArtifactRepository repo) {
        ArrayList<IArtifactKey> toRetain = new ArrayList<IArtifactKey>();
        int i = 0;
        while (i < bis.length) {
            Version version = "0.0.0".equals(bis[i].getVersion()) ? null : Version.create((String)bis[i].getVersion());
            IArtifactKey match = this.searchArtifact(bis[i].getSymbolicName(), version, ARTIFACT_CLASSIFIER_OSGI_BUNDLE, repo);
            if (match != null) {
                toRetain.add(match);
            }
            ++i;
        }
        return toRetain;
    }
}

