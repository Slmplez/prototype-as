/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.resources;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.internal.events.BuildCommand;
import org.eclipse.core.internal.localstore.SafeFileOutputStream;
import org.eclipse.core.internal.resources.FilterDescription;
import org.eclipse.core.internal.resources.IModelObjectConstants;
import org.eclipse.core.internal.resources.LinkDescription;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.VariableDescription;
import org.eclipse.core.internal.resources.WorkspaceDescription;
import org.eclipse.core.internal.resources.XMLWriter;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.resources.FileInfoMatcherDescription;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceFilterDescription;
import org.eclipse.core.runtime.IPath;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModelObjectWriter
implements IModelObjectConstants {
    private static String triggerString(BuildCommand command) {
        StringBuffer buf = new StringBuffer();
        if (command.isBuilding(9)) {
            buf.append("auto").append(',');
        }
        if (command.isBuilding(15)) {
            buf.append("clean").append(',');
        }
        if (command.isBuilding(6)) {
            buf.append("full").append(',');
        }
        if (command.isBuilding(10)) {
            buf.append("incremental").append(',');
        }
        return buf.toString();
    }

    protected String[] getReferencedProjects(ProjectDescription description) {
        IProject[] projects = description.getReferencedProjects();
        String[] result = new String[projects.length];
        int i = 0;
        while (i < projects.length) {
            result[i] = projects[i].getName();
            ++i;
        }
        return result;
    }

    protected void write(BuildCommand command, XMLWriter writer) {
        writer.startTag("buildCommand", null);
        if (command != null) {
            writer.printSimpleTag("name", command.getName());
            if (this.shouldWriteTriggers(command)) {
                writer.printSimpleTag("triggers", ModelObjectWriter.triggerString(command));
            }
            this.write("arguments", command.getArguments(false), writer);
        }
        writer.endTag("buildCommand");
    }

    private boolean shouldWriteTriggers(BuildCommand command) {
        if (!command.isConfigurable()) {
            return false;
        }
        return !command.isBuilding(9) || !command.isBuilding(15) || !command.isBuilding(6) || !command.isBuilding(10);
    }

    protected void write(LinkDescription description, XMLWriter writer) {
        writer.startTag("link", null);
        if (description != null) {
            writer.printSimpleTag("name", description.getProjectRelativePath());
            writer.printSimpleTag("type", Integer.toString(description.getType()));
            this.writeLocation(description.getLocationURI(), writer);
        }
        writer.endTag("link");
    }

    protected void write(IResourceFilterDescription description, XMLWriter writer) {
        writer.startTag("filter", null);
        if (description != null) {
            writer.printSimpleTag("id", new Long(((FilterDescription)description).getId()));
            writer.printSimpleTag("name", description.getResource().getProjectRelativePath());
            writer.printSimpleTag("type", Integer.toString(description.getType()));
            if (description.getFileInfoMatcherDescription() != null) {
                this.write(description.getFileInfoMatcherDescription(), writer);
            }
        }
        writer.endTag("filter");
    }

    protected void write(FileInfoMatcherDescription description, XMLWriter writer) {
        writer.startTag("matcher", null);
        writer.printSimpleTag("id", description.getId());
        if (description.getArguments() != null) {
            if (description.getArguments() instanceof String) {
                writer.printSimpleTag("arguments", description.getArguments());
            } else if (description.getArguments() instanceof FileInfoMatcherDescription[]) {
                writer.startTag("arguments", null);
                FileInfoMatcherDescription[] array = (FileInfoMatcherDescription[])description.getArguments();
                int i = 0;
                while (i < array.length) {
                    this.write(array[i], writer);
                    ++i;
                }
                writer.endTag("arguments");
            } else {
                writer.printSimpleTag("arguments", "");
            }
        }
        writer.endTag("matcher");
    }

    protected void write(VariableDescription description, XMLWriter writer) {
        writer.startTag("variable", null);
        if (description != null) {
            writer.printSimpleTag("name", description.getName());
            writer.printSimpleTag("value", description.getValue());
        }
        writer.endTag("variable");
    }

    private void writeLocation(URI location, XMLWriter writer) {
        if ("file".equals(location.getScheme())) {
            writer.printSimpleTag("location", FileUtil.toPath(location).toPortableString());
        } else {
            writer.printSimpleTag("locationURI", location.toASCIIString());
        }
    }

    public void write(Object object, IPath location, IPath tempLocation) throws IOException {
        SafeFileOutputStream file = null;
        String tempPath = tempLocation == null ? null : tempLocation.toOSString();
        try {
            file = new SafeFileOutputStream(location.toOSString(), tempPath);
            this.write(object, file);
            file.close();
        }
        catch (Throwable throwable) {
            FileUtil.safeClose(file);
            throw throwable;
        }
        FileUtil.safeClose(file);
    }

    public void write(Object object, OutputStream output) throws IOException {
        try {
            XMLWriter writer = new XMLWriter(output);
            this.write(object, writer);
            writer.flush();
            writer.close();
            if (writer.checkError()) {
                throw new IOException();
            }
        }
        finally {
            FileUtil.safeClose(output);
        }
    }

    protected void write(Object obj, XMLWriter writer) throws IOException {
        if (obj instanceof BuildCommand) {
            this.write((BuildCommand)obj, writer);
            return;
        }
        if (obj instanceof ProjectDescription) {
            this.write((ProjectDescription)obj, writer);
            return;
        }
        if (obj instanceof WorkspaceDescription) {
            this.write((WorkspaceDescription)obj, writer);
            return;
        }
        if (obj instanceof LinkDescription) {
            this.write((LinkDescription)obj, writer);
            return;
        }
        if (obj instanceof IResourceFilterDescription) {
            this.write((IResourceFilterDescription)obj, writer);
            return;
        }
        if (obj instanceof VariableDescription) {
            this.write((VariableDescription)obj, writer);
            return;
        }
        writer.printTabulation();
        writer.println(obj.toString());
    }

    protected void write(ProjectDescription description, XMLWriter writer) throws IOException {
        writer.startTag("projectDescription", null);
        if (description != null) {
            HashMap<String, VariableDescription> variables;
            HashMap<IPath, LinkedList<FilterDescription>> filters;
            writer.printSimpleTag("name", description.getName());
            String comment = description.getComment();
            writer.printSimpleTag("comment", comment == null ? "" : comment);
            URI snapshotLocation = description.getSnapshotLocationURI();
            if (snapshotLocation != null) {
                writer.printSimpleTag("snapshotLocation", snapshotLocation.toString());
            }
            this.write("projects", "project", this.getReferencedProjects(description), writer);
            this.write("buildSpec", Arrays.asList(description.getBuildSpec(false)), writer);
            this.write("natures", "nature", description.getNatureIds(false), writer);
            HashMap<IPath, LinkDescription> links = description.getLinks();
            if (links != null) {
                ArrayList<LinkDescription> sorted = new ArrayList<LinkDescription>(links.values());
                Collections.sort(sorted);
                this.write("linkedResources", sorted, writer);
            }
            if ((filters = description.getFilters()) != null) {
                ArrayList sorted = new ArrayList();
                for (List list : filters.values()) {
                    sorted.addAll(list);
                }
                Collections.sort(sorted);
                this.write("filteredResources", sorted, writer);
            }
            if ((variables = description.getVariables()) != null) {
                ArrayList<VariableDescription> sorted = new ArrayList<VariableDescription>(variables.values());
                Collections.sort(sorted);
                this.write("variableList", sorted, writer);
            }
        }
        writer.endTag("projectDescription");
    }

    protected void write(String name, Collection<?> collection, XMLWriter writer) throws IOException {
        writer.startTag(name, null);
        for (Object o : collection) {
            this.write(o, writer);
        }
        writer.endTag(name);
    }

    protected void write(String name, Map<String, String> table, XMLWriter writer) {
        writer.startTag(name, null);
        if (table != null) {
            ArrayList<String> sorted = new ArrayList<String>(table.keySet());
            Collections.sort(sorted);
            for (String key : sorted) {
                String value = table.get(key);
                writer.startTag("dictionary", null);
                writer.printSimpleTag("key", key);
                writer.printSimpleTag("value", value);
                writer.endTag("dictionary");
            }
        }
        writer.endTag(name);
    }

    protected void write(String name, String elementTagName, String[] array, XMLWriter writer) {
        writer.startTag(name, null);
        int i = 0;
        while (i < array.length) {
            writer.printSimpleTag(elementTagName, array[i]);
            ++i;
        }
        writer.endTag(name);
    }

    protected void write(WorkspaceDescription description, XMLWriter writer) {
        writer.startTag("workspaceDescription", null);
        if (description != null) {
            writer.printSimpleTag("name", description.getName());
            writer.printSimpleTag("autobuild", description.isAutoBuilding() ? "1" : "0");
            writer.printSimpleTag("snapshotInterval", new Long(description.getSnapshotInterval()));
            writer.printSimpleTag("applyFileStatePolicy", description.isApplyFileStatePolicy() ? "1" : "0");
            writer.printSimpleTag("fileStateLongevity", new Long(description.getFileStateLongevity()));
            writer.printSimpleTag("maxFileStateSize", new Long(description.getMaxFileStateSize()));
            writer.printSimpleTag("maxFileStates", new Integer(description.getMaxFileStates()));
            String[] order = description.getBuildOrder(false);
            if (order != null) {
                this.write("buildOrder", "project", order, writer);
            }
        }
        writer.endTag("workspaceDescription");
    }
}

