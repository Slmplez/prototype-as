/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.build.builder;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.builder.BuildDirector;

public class CompilationScriptGenerator
extends AbstractScriptGenerator {
    private String featureId = "all";
    private boolean parallel = true;
    private int threadCount = 0;
    private int threadsPerProcessor = 3;
    protected AssemblyInformation assemblyData;
    protected BuildDirector director;

    public void generate() throws CoreException {
        this.openScript(CompilationScriptGenerator.getWorkingDirectory(), this.getScriptName());
        try {
            this.generateScript();
        }
        finally {
            this.closeScript();
        }
    }

    public void setAssemblyData(AssemblyInformation assemblyData) {
        this.assemblyData = assemblyData;
    }

    public void setFeatureId(String featureId) {
        this.featureId = featureId;
    }

    public void setDirector(BuildDirector director) {
        this.director = director;
    }

    public void setParallel(boolean parallel) {
        this.parallel = parallel;
    }

    public void setThreadCount(int count) {
        if (count != -1) {
            this.threadCount = count;
        }
    }

    public void setThreadsPerProcessor(int threads) {
        if (threads != -1) {
            this.threadsPerProcessor = threads;
        }
    }

    protected String getScriptName() {
        return "compile." + this.featureId + ".xml";
    }

    private void generateScript() throws CoreException {
        this.generatePrologue();
        this.generatePlugins();
        this.generateEpilogue();
    }

    private void generatePrologue() {
        this.script.printProjectDeclaration("Compile " + this.featureId, "main", null);
        this.script.printTargetDeclaration("main", null, null, null, null);
    }

    private void generateEpilogue() {
        this.script.printTargetEnd();
        this.script.printProjectEnd();
    }

    private void generatePlugins() throws CoreException {
        Set plugins = this.assemblyData.getAllCompiledPlugins();
        List sortedPlugins = Utils.extractPlugins(this.getSite(false).getRegistry().getSortedBundles(), plugins);
        Path basePath = new Path(workingDirectory);
        HashSet<Long> bucket = null;
        if (this.parallel) {
            bucket = new HashSet<Long>();
            this.script.printParallel(this.threadCount, this.threadsPerProcessor);
        }
        Iterator iterator = sortedPlugins.iterator();
        while (iterator.hasNext()) {
            BundleDescription bundle = (BundleDescription)iterator.next();
            if (Utils.isSourceBundle(bundle)) continue;
            if (this.parallel) {
                if (this.requiredInBucket(bundle, bucket)) {
                    this.script.printEndParallel();
                    this.script.printParallel(this.threadCount, this.threadsPerProcessor);
                    bucket.clear();
                }
                bucket.add(new Long(bundle.getBundleId()));
            }
            IPath location = Utils.makeRelative((IPath)new Path(this.getLocation(bundle)), (IPath)basePath);
            this.script.printAntTask("build.xml", location.toString(), "build.jars", null, null, null);
        }
        if (this.parallel) {
            this.script.printEndParallel();
        }
    }

    private boolean requiredInBucket(BundleDescription bundle, Set bucket) {
        String required;
        Properties properties = (Properties)bundle.getUserObject();
        if (properties != null && (required = properties.getProperty("requiredBundleIds")) != null) {
            String[] ids = Utils.getArrayFromString(required, ":");
            int i = 0;
            while (i < ids.length) {
                try {
                    if (bucket.contains(new Long(ids[i]))) {
                        return true;
                    }
                }
                catch (NumberFormatException numberFormatException) {}
                ++i;
            }
        }
        return false;
    }
}

