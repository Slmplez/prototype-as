/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.DirectoryScanner
 *  org.apache.tools.ant.types.FileSet
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.Publisher
 *  org.eclipse.equinox.p2.publisher.eclipse.BundlesAction
 *  org.eclipse.equinox.p2.publisher.eclipse.FeaturesAction
 */
package org.eclipse.equinox.internal.p2.publisher.ant;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.DirectoryScanner;
import org.apache.tools.ant.types.FileSet;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.equinox.internal.p2.publisher.ant.AbstractPublishTask;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.Publisher;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.p2.publisher.eclipse.FeaturesAction;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FeaturesAndBundlesPublisherTask
extends AbstractPublishTask {
    private ArrayList<Object> features = new ArrayList();
    private ArrayList<Object> bundles = new ArrayList();

    public void execute() throws BuildException {
        try {
            this.initializeRepositories(this.getInfo());
        }
        catch (ProvisionException e) {
            throw new BuildException("Unable to configure repositories", (Throwable)e);
        }
        File[] f = this.getLocations(this.features);
        File[] b = this.getLocations(this.bundles);
        ArrayList<Object> actions = new ArrayList<Object>();
        if (f.length > 0) {
            actions.add(new FeaturesAction(f));
        }
        if (b.length > 0) {
            actions.add(new BundlesAction(b));
        }
        if (actions.size() > 0) {
            new Publisher((IPublisherInfo)this.getInfo()).publish(actions.toArray(new IPublisherAction[actions.size()]), (IProgressMonitor)new NullProgressMonitor());
        }
    }

    private File[] getLocations(List<Object> collection) {
        ArrayList<Object> results = new ArrayList<Object>();
        for (Object obj : collection) {
            if (obj instanceof FileSet) {
                FileSet set = (FileSet)obj;
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
                continue;
            }
            if (!(obj instanceof File)) continue;
            results.add(obj);
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

    public void setSource(String source) {
        this.source = source;
        this.features.add(new File(source, "features"));
        this.bundles.add(new File(source, "plugins"));
    }
}

