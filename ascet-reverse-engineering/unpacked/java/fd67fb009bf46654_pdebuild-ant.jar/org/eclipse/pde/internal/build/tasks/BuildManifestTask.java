/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.build.IPDEBuildConstants
 *  org.eclipse.pde.internal.build.IXMLConstants
 *  org.eclipse.pde.internal.build.Utils
 *  org.eclipse.pde.internal.build.site.BuildTimeFeature
 *  org.eclipse.pde.internal.build.site.BuildTimeFeatureFactory
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.IXMLConstants;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeFeatureFactory;
import org.eclipse.pde.internal.build.tasks.TaskMessages;

public class BuildManifestTask
extends Task
implements IPDEBuildConstants,
IXMLConstants {
    private String buildId;
    protected String buildName;
    private String buildQualifier;
    private String buildType;
    protected boolean children = true;
    protected String destination;
    protected Properties directory;
    protected String directoryLocation;
    protected String[] elements;
    protected String installLocation;

    public void execute() throws BuildException {
        try {
            if (this.elements == null) {
                String message = TaskMessages.error_missingElement;
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 8, message, null));
            }
            this.readDirectory();
            PrintWriter output = new PrintWriter(new BufferedOutputStream(new FileOutputStream(this.destination)));
            try {
                ArrayList entries = new ArrayList(20);
                int i = 0;
                while (i < this.elements.length) {
                    this.collectEntries(entries, this.elements[i]);
                    ++i;
                }
                this.generatePrologue(output);
                this.generateEntries(output, entries);
            }
            finally {
                output.close();
            }
        }
        catch (Exception e) {
            throw new BuildException((Throwable)e);
        }
    }

    protected void generatePrologue(PrintWriter output) {
        String qualifier;
        String type;
        output.print("# Build Manifest for ");
        output.println(this.buildName);
        output.println();
        output.println("# The format of this file is:");
        output.println("# <type>@<element>=<CVS tag>");
        output.println();
        String id = this.getBuildId();
        if (id != null) {
            output.print("build.id=");
            output.println(id);
        }
        if ((type = this.getBuildType()) != null) {
            output.print("build.type=");
            output.println(type);
        }
        if ((qualifier = this.getBuildQualifier()) != null) {
            output.print("build.qualifier=");
            output.println(qualifier);
        }
        output.println();
    }

    protected String getBuildId() {
        if (this.buildId == null) {
            this.buildId = this.getProject().getProperty("build.id");
        }
        return this.buildId;
    }

    protected String getBuildQualifier() {
        if (this.buildQualifier == null) {
            this.buildQualifier = this.getProject().getProperty("build.qualifier");
        }
        return this.buildQualifier;
    }

    protected String getBuildType() {
        if (this.buildType == null) {
            this.buildType = this.getProject().getProperty("build.type");
        }
        return this.buildType;
    }

    protected void generateEntries(PrintWriter output, List entries) {
        Collections.sort(entries);
        Iterator iterator = entries.iterator();
        while (iterator.hasNext()) {
            String entry = (String)iterator.next();
            output.println(entry);
        }
    }

    protected void collectEntries(List entries, String entry) throws CoreException {
        String cvsInfo = this.directory.getProperty(entry);
        if (cvsInfo == null) {
            String message = NLS.bind((String)TaskMessages.error_missingDirectoryEntry, (Object)entry);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 9, message, null));
        }
        int index = entry.indexOf(64);
        String type = entry.substring(0, index);
        String element = entry.substring(index + 1);
        if (type.equals("plugin") || type.equals("fragment")) {
            String[] cvsFields = Utils.getArrayFromString((String)cvsInfo);
            String tag = cvsFields[0];
            StringBuffer sb = new StringBuffer();
            sb.append(entry);
            sb.append("=");
            sb.append(tag);
            entries.add(sb.toString());
        } else if (this.children && type.equals("feature")) {
            BuildTimeFeature feature = this.readFeature(element);
            this.collectChildrenEntries(entries, feature);
        }
    }

    protected void collectChildrenEntries(List entries, BuildTimeFeature feature) throws CoreException {
        FeatureEntry[] pluginEntries = feature.getPluginEntries();
        int i = 0;
        while (i < pluginEntries.length) {
            String elementId = pluginEntries[i].getId();
            if (pluginEntries[i].isFragment()) {
                this.collectEntries(entries, "fragment@" + elementId);
            } else {
                this.collectEntries(entries, "plugin@" + elementId);
            }
            ++i;
        }
    }

    protected BuildTimeFeature readFeature(String element) throws CoreException {
        Path root = new Path(this.installLocation);
        root = root.append("features");
        root = root.append(element);
        try {
            BuildTimeFeatureFactory factory = new BuildTimeFeatureFactory();
            return factory.createFeature(root.toFile().toURL(), null);
        }
        catch (Exception e) {
            String message = NLS.bind((String)TaskMessages.error_creatingFeature, (Object)element);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, (Throwable)e));
        }
    }

    public void setInstall(String installLocation) {
        this.installLocation = installLocation;
    }

    protected void readDirectory() throws CoreException {
        try {
            this.directory = new Properties();
            File file = new File(this.directoryLocation);
            BufferedInputStream is = new BufferedInputStream(new FileInputStream(file));
            try {
                this.directory.load(is);
            }
            finally {
                ((InputStream)is).close();
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)TaskMessages.error_readingDirectory, (Object)this.directoryLocation);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 6, message, (Throwable)e));
        }
    }

    public void setDirectory(String directory) {
        this.directoryLocation = directory;
    }

    public void setElements(String value) {
        this.elements = Utils.getArrayFromString((String)value);
    }

    public void setDestination(String value) {
        this.destination = value;
    }

    public void setChildren(boolean children) {
        this.children = children;
    }

    public void setBuildName(String value) {
        this.buildName = value;
    }

    public void setBuildId(String buildId) {
        this.buildId = buildId;
    }

    public void setBuildQualifier(String buildQualifier) {
        this.buildQualifier = buildQualifier;
    }

    public void setBuildType(String buildType) {
        this.buildType = buildType;
    }
}

