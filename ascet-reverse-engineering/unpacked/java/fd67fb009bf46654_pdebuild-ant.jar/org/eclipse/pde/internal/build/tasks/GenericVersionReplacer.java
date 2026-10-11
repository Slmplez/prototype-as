/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.Task
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.File;
import org.apache.tools.ant.Task;
import org.eclipse.pde.internal.build.tasks.ManifestModifier;
import org.eclipse.pde.internal.build.tasks.PluginVersionReplaceTask;

public class GenericVersionReplacer
extends Task {
    private static final String FRAGMENT = "fragment.xml";
    private static final String PLUGIN = "plugin.xml";
    private static final String MANIFEST = "META-INF/MANIFEST.MF";
    private String rootPath;
    private String version;
    private String attributes;

    public void execute() {
        File root = new File(this.rootPath);
        if (root.exists() && root.isFile() && root.getName().equals(MANIFEST)) {
            this.callManifestModifier(this.rootPath);
            return;
        }
        File foundFile = new File(root, PLUGIN);
        if (foundFile.exists() && foundFile.isFile()) {
            this.callPluginVersionModifier(foundFile.getAbsolutePath(), PLUGIN);
        }
        if ((foundFile = new File(root, FRAGMENT)).exists() && foundFile.isFile()) {
            this.callPluginVersionModifier(foundFile.getAbsolutePath(), FRAGMENT);
        }
        if ((foundFile = new File(root, MANIFEST)).exists() && foundFile.isFile()) {
            this.callManifestModifier(foundFile.getAbsolutePath());
        }
    }

    private void callPluginVersionModifier(String path, String input) {
        PluginVersionReplaceTask modifier = new PluginVersionReplaceTask();
        modifier.setProject(this.getProject());
        modifier.setPluginFilePath(path);
        modifier.setVersionNumber(this.version);
        modifier.setInput(input);
        modifier.execute();
    }

    private void callManifestModifier(String path) {
        ManifestModifier modifier = new ManifestModifier();
        modifier.setProject(this.getProject());
        modifier.setManifestLocation(path);
        modifier.setKeyValue("Bundle-Version|" + this.version);
        if (this.attributes != null) {
            modifier.setKeyValue(this.attributes);
        }
        modifier.execute();
    }

    public void setPath(String location) {
        this.rootPath = location;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public void setAttributes(String attributes) {
        this.attributes = attributes;
    }
}

