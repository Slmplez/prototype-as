/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.program.Program
 */
package org.eclipse.ui.internal.registry;

import java.io.File;
import java.io.Serializable;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.program.Program;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorMatchingStrategy;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.ProgramImageDescriptor;
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.internal.tweaklets.InterceptContributions;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public final class EditorDescriptor
implements IEditorDescriptor,
Serializable,
IPluginContribution {
    private static final long serialVersionUID = 3905241225668998961L;
    public static final int OPEN_INTERNAL = 1;
    public static final int OPEN_INPLACE = 2;
    public static final int OPEN_EXTERNAL = 4;
    private String editorName;
    private String imageFilename;
    private transient ImageDescriptor imageDesc;
    private transient Object imageDescLock = new Object();
    private boolean testImage = true;
    private String className;
    private String launcherName;
    private String fileName;
    private String id = "";
    private boolean matchingStrategyChecked = false;
    private IEditorMatchingStrategy matchingStrategy;
    private Program program;
    private String pluginIdentifier;
    private int openMode = 0;
    private transient IConfigurationElement configurationElement;

    EditorDescriptor(String id2, IConfigurationElement element) {
        this.setID(id2);
        this.setConfigurationElement(element);
    }

    EditorDescriptor() {
    }

    public static EditorDescriptor createForProgram(String filename) {
        if (filename == null) {
            throw new IllegalArgumentException();
        }
        EditorDescriptor editor = new EditorDescriptor();
        editor.setFileName(filename);
        editor.setID(filename);
        editor.setOpenMode(4);
        int start = filename.lastIndexOf(File.separator);
        String name = start != -1 ? filename.substring(start + 1) : filename;
        int end = name.lastIndexOf(46);
        if (end != -1) {
            name = name.substring(0, end);
        }
        editor.setName(name);
        ProgramImageDescriptor imageDescriptor = new ProgramImageDescriptor(filename, 0);
        editor.setImageDescriptor(imageDescriptor);
        return editor;
    }

    private static Program findProgram(String programName) {
        Program[] programs = Program.getPrograms();
        int i = 0;
        while (i < programs.length) {
            if (programs[i].getName().equals(programName)) {
                return programs[i];
            }
            ++i;
        }
        return null;
    }

    public IEditorActionBarContributor createActionBarContributor() {
        if (this.configurationElement == null) {
            return null;
        }
        String className = this.configurationElement.getAttribute("contributorClass");
        if (className == null) {
            return null;
        }
        IEditorActionBarContributor contributor = null;
        try {
            contributor = (IEditorActionBarContributor)WorkbenchPlugin.createExtension(this.configurationElement, "contributorClass");
        }
        catch (CoreException e) {
            WorkbenchPlugin.log("Unable to create editor contributor: " + this.id, e.getStatus());
        }
        return contributor;
    }

    public String getClassName() {
        if (this.configurationElement == null) {
            return this.className;
        }
        return RegistryReader.getClassValue(this.configurationElement, "class");
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configurationElement;
    }

    public IEditorPart createEditor() throws CoreException {
        Object extension = WorkbenchPlugin.createExtension(this.getConfigurationElement(), "class");
        return ((InterceptContributions)Tweaklets.get(InterceptContributions.KEY)).tweakEditor(extension);
    }

    public String getFileName() {
        if (this.program == null) {
            if (this.configurationElement == null) {
                return this.fileName;
            }
            return this.configurationElement.getAttribute("command");
        }
        return this.program.getName();
    }

    public String getId() {
        if (this.program == null) {
            if (this.configurationElement == null) {
                return Util.safeString(this.id);
            }
            return Util.safeString(this.configurationElement.getAttribute("id"));
        }
        return Util.safeString(this.program.getName());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ImageDescriptor getImageDescriptor() {
        ImageDescriptor tempDescriptor = null;
        Object object = this.imageDescLock;
        synchronized (object) {
            if (!this.testImage) {
                return this.imageDesc;
            }
            if (this.imageDesc == null) {
                String imageFileName = this.getImageFilename();
                String command = this.getFileName();
                if (imageFileName != null && this.configurationElement != null) {
                    tempDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(this.configurationElement.getNamespaceIdentifier(), imageFileName);
                } else if (command != null) {
                    tempDescriptor = WorkbenchImages.getImageDescriptorFromProgram(command, 0);
                }
            } else {
                tempDescriptor = this.imageDesc;
            }
            if (tempDescriptor == null) {
                this.imageDesc = WorkbenchImages.getImageDescriptor("IMG_OBJ_FILE");
                this.testImage = false;
                return this.imageDesc;
            }
        }
        Image img = tempDescriptor.createImage(false);
        if (img == null) {
            tempDescriptor = WorkbenchImages.getImageDescriptor("IMG_OBJ_FILE");
        } else {
            img.dispose();
        }
        Object object2 = this.imageDescLock;
        synchronized (object2) {
            if (!this.testImage) {
                return this.imageDesc;
            }
            this.imageDesc = tempDescriptor;
            this.testImage = false;
            return this.imageDesc;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setImageDescriptor(ImageDescriptor desc) {
        Object object = this.imageDescLock;
        synchronized (object) {
            this.imageDesc = desc;
            this.testImage = true;
        }
    }

    public String getImageFilename() {
        if (this.configurationElement == null) {
            return this.imageFilename;
        }
        return this.configurationElement.getAttribute("icon");
    }

    public String getLabel() {
        if (this.program == null) {
            if (this.configurationElement == null) {
                return this.editorName;
            }
            return this.configurationElement.getAttribute("name");
        }
        return this.program.getName();
    }

    public String getLauncher() {
        if (this.configurationElement == null) {
            return this.launcherName;
        }
        return this.configurationElement.getAttribute("launcher");
    }

    public String getPluginID() {
        if (this.configurationElement != null) {
            return this.configurationElement.getNamespace();
        }
        return this.pluginIdentifier;
    }

    public Program getProgram() {
        return this.program;
    }

    public boolean isInternal() {
        return this.getOpenMode() == 1;
    }

    public boolean isOpenInPlace() {
        return this.getOpenMode() == 2;
    }

    public boolean isOpenExternal() {
        return this.getOpenMode() == 4;
    }

    protected boolean loadValues(IMemento memento) {
        this.editorName = memento.getString("label");
        this.imageFilename = memento.getString("image");
        this.className = memento.getString("class");
        this.launcherName = memento.getString("launcher");
        this.fileName = memento.getString("file");
        this.id = Util.safeString(memento.getString("id"));
        this.pluginIdentifier = memento.getString("plugin");
        Integer openModeInt = memento.getInteger("openMode");
        if (openModeInt != null) {
            this.openMode = openModeInt;
        } else {
            boolean internal = new Boolean(memento.getString("internal"));
            boolean openInPlace = new Boolean(memento.getString("open_in_place"));
            this.openMode = internal ? 1 : (openInPlace ? 2 : 4);
        }
        if (this.openMode != 4 && this.openMode != 1 && this.openMode != 2) {
            WorkbenchPlugin.log("Ignoring editor descriptor with invalid openMode: " + this);
            return false;
        }
        String programName = memento.getString("program_name");
        if (programName != null) {
            this.program = EditorDescriptor.findProgram(programName);
        }
        return true;
    }

    protected void saveValues(IMemento memento) {
        memento.putString("label", this.getLabel());
        memento.putString("image", this.getImageFilename());
        memento.putString("class", this.getClassName());
        memento.putString("launcher", this.getLauncher());
        memento.putString("file", this.getFileName());
        memento.putString("id", this.getId());
        memento.putString("plugin", this.getPluginId());
        memento.putInteger("openMode", this.getOpenMode());
        memento.putString("internal", String.valueOf(this.isInternal()));
        memento.putString("open_in_place", String.valueOf(this.isOpenInPlace()));
        if (this.program != null) {
            memento.putString("program_name", this.program.getName());
        }
    }

    private int getOpenMode() {
        if (this.configurationElement == null) {
            return this.openMode;
        }
        if (this.getLauncher() != null) {
            return 4;
        }
        if (this.getFileName() != null) {
            return 4;
        }
        if (this.getPluginId() != null) {
            return 1;
        }
        return 0;
    }

    void setClassName(String newClassName) {
        this.className = newClassName;
    }

    void setConfigurationElement(IConfigurationElement newConfigurationElement) {
        this.configurationElement = newConfigurationElement;
    }

    void setFileName(String aFileName) {
        this.fileName = aFileName;
    }

    void setID(String anID) {
        Assert.isNotNull((Object)anID);
        this.id = anID;
    }

    void setImageFilename(String aFileName) {
        this.imageFilename = aFileName;
    }

    void setLauncher(String newLauncher) {
        this.launcherName = newLauncher;
    }

    void setName(String newName) {
        this.editorName = newName;
    }

    public void setOpenMode(int mode) {
        this.openMode = mode;
    }

    void setPluginIdentifier(String anID) {
        this.pluginIdentifier = anID;
    }

    void setProgram(Program newProgram) {
        this.program = newProgram;
        if (this.editorName == null) {
            this.setName(newProgram.getName());
        }
    }

    public String toString() {
        return "EditorDescriptor(id=" + this.getId() + ", label=" + this.getLabel() + ")";
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return this.getPluginID();
    }

    public IEditorMatchingStrategy getEditorMatchingStrategy() {
        if (this.matchingStrategy == null && !this.matchingStrategyChecked) {
            this.matchingStrategyChecked = true;
            if (this.program == null && this.configurationElement != null && this.configurationElement.getAttribute("matchingStrategy") != null) {
                try {
                    this.matchingStrategy = (IEditorMatchingStrategy)WorkbenchPlugin.createExtension(this.configurationElement, "matchingStrategy");
                }
                catch (CoreException e) {
                    WorkbenchPlugin.log("Error creating editor management policy for editor id " + this.getId(), e);
                }
            }
        }
        return this.matchingStrategy;
    }
}

