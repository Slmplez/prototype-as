/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.DirectoryScanner
 *  org.apache.tools.ant.types.FileSet
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.updatesite.CategoryXMLAction
 *  org.eclipse.equinox.internal.p2.updatesite.SiteXMLAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.eclipse.BundlesAction
 *  org.eclipse.equinox.p2.publisher.eclipse.FeaturesAction
 *  org.eclipse.pde.internal.build.publisher.BuildPublisherApplication
 */
package org.eclipse.pde.internal.build.publisher;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.DirectoryScanner;
import org.apache.tools.ant.types.FileSet;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.updatesite.CategoryXMLAction;
import org.eclipse.equinox.internal.p2.updatesite.SiteXMLAction;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.p2.publisher.eclipse.FeaturesAction;
import org.eclipse.pde.internal.build.publisher.AbstractPublisherTask;
import org.eclipse.pde.internal.build.publisher.BuildPublisherApplication;

public class FeaturesAndBundlesTask
extends AbstractPublisherTask {
    private final ArrayList features = new ArrayList();
    private final ArrayList bundles = new ArrayList();
    private URI siteXML = null;
    private URI categoryXML = null;
    private String siteQualifier = "";
    private String categoryVersion = null;

    public void execute() throws BuildException {
        SiteXMLAction action;
        File[] f = this.getLocations(this.features);
        File[] b = this.getLocations(this.bundles);
        BuildPublisherApplication application = this.createPublisherApplication();
        if (f.length > 0) {
            application.addAction((IPublisherAction)new FeaturesAction(f));
        }
        if (b.length > 0) {
            application.addAction((IPublisherAction)new BundlesAction(b));
        }
        if (this.siteXML != null) {
            action = new SiteXMLAction(this.siteXML, this.siteQualifier);
            if (this.categoryVersion != null) {
                action.setCategoryVersion(this.categoryVersion);
            }
            application.addAction((IPublisherAction)action);
        }
        if (this.categoryXML != null) {
            action = new CategoryXMLAction(this.categoryXML, this.siteQualifier);
            if (this.categoryVersion != null) {
                action.setCategoryVersion(this.categoryVersion);
            }
            application.addAction((IPublisherAction)action);
        }
        try {
            application.run(this.getPublisherInfo());
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    private File[] getLocations(List collection) {
        ArrayList<File> results = new ArrayList<File>();
        Iterator iterator = collection.iterator();
        while (iterator.hasNext()) {
            FileSet set = (FileSet)iterator.next();
            DirectoryScanner scanner = set.getDirectoryScanner(this.getProject());
            String[][] elements = new String[][]{scanner.getIncludedDirectories(), scanner.getIncludedFiles()};
            int i = 0;
            while (i < 2) {
                int j = 0;
                while (j < elements[i].length) {
                    results.add(new File(set.getDir(), elements[i][j]));
                    ++j;
                }
                ++i;
            }
        }
        return results.toArray(new File[results.size()]);
    }

    public FileSet createFeatures() {
        FileSet set = new FileSet();
        this.features.add(set);
        return set;
    }

    public FileSet createBundles() {
        FileSet set = new FileSet();
        this.bundles.add(set);
        return set;
    }

    public void setSiteQualifier(String siteQualifier) {
        if (siteQualifier != null && !siteQualifier.startsWith("${")) {
            this.siteQualifier = siteQualifier;
        }
    }

    public void setCategory(String value) {
        if (value != null && value.length() > 0 && !value.startsWith("${")) {
            try {
                this.categoryXML = URIUtil.fromString((String)value);
            }
            catch (URISyntaxException uRISyntaxException) {
                throw new IllegalArgumentException("Category description location (" + value + ") must be a URL.");
            }
        }
    }

    public void setCategoryVersion(String version) {
        if (version != null && !version.startsWith("${")) {
            this.categoryVersion = version;
        }
    }

    public void setSite(String value) {
        if (value != null && value.length() > 0 && !value.startsWith("${")) {
            try {
                this.siteXML = URIUtil.fromString((String)value);
            }
            catch (URISyntaxException uRISyntaxException) {
                throw new IllegalArgumentException("Artifact repository location (" + value + ") must be a URL.");
            }
        }
    }
}

