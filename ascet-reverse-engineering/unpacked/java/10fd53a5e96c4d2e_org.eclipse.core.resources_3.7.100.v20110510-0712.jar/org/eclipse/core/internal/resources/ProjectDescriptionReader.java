/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Stack;
import java.util.StringTokenizer;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.events.BuildCommand;
import org.eclipse.core.internal.localstore.SafeFileInputStream;
import org.eclipse.core.internal.resources.FilterDescription;
import org.eclipse.core.internal.resources.IModelObjectConstants;
import org.eclipse.core.internal.resources.LinkDescription;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.VariableDescription;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.FileInfoMatcherDescription;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

public class ProjectDescriptionReader
extends DefaultHandler
implements IModelObjectConstants {
    protected static final int S_BUILD_COMMAND = 0;
    protected static final int S_BUILD_COMMAND_ARGUMENTS = 1;
    protected static final int S_BUILD_COMMAND_NAME = 2;
    protected static final int S_BUILD_COMMAND_TRIGGERS = 3;
    protected static final int S_BUILD_SPEC = 4;
    protected static final int S_DICTIONARY = 5;
    protected static final int S_DICTIONARY_KEY = 6;
    protected static final int S_DICTIONARY_VALUE = 7;
    protected static final int S_INITIAL = 8;
    protected static final int S_LINK = 9;
    protected static final int S_LINK_LOCATION = 10;
    protected static final int S_LINK_LOCATION_URI = 11;
    protected static final int S_LINK_PATH = 12;
    protected static final int S_LINK_TYPE = 13;
    protected static final int S_LINKED_RESOURCES = 14;
    protected static final int S_NATURE_NAME = 15;
    protected static final int S_NATURES = 16;
    protected static final int S_PROJECT_COMMENT = 17;
    protected static final int S_PROJECT_DESC = 18;
    protected static final int S_PROJECT_NAME = 19;
    protected static final int S_PROJECTS = 20;
    protected static final int S_REFERENCED_PROJECT_NAME = 21;
    protected static final int S_FILTERED_RESOURCES = 23;
    protected static final int S_FILTER = 24;
    protected static final int S_FILTER_ID = 25;
    protected static final int S_FILTER_PATH = 26;
    protected static final int S_FILTER_TYPE = 27;
    protected static final int S_MATCHER = 28;
    protected static final int S_MATCHER_ID = 29;
    protected static final int S_MATCHER_ARGUMENTS = 30;
    protected static final int S_VARIABLE_LIST = 31;
    protected static final int S_VARIABLE = 32;
    protected static final int S_VARIABLE_NAME = 33;
    protected static final int S_VARIABLE_VALUE = 34;
    protected static final int S_SNAPSHOT_LOCATION = 35;
    private static SAXParserFactory singletonParserFactory;
    private static SAXParser singletonParser;
    protected final StringBuffer charBuffer = new StringBuffer();
    protected Stack<Object> objectStack;
    protected MultiStatus problems;
    private final IProject project;
    ProjectDescription projectDescription = null;
    protected int state = 8;

    private static synchronized SAXParser createParser() throws ParserConfigurationException, SAXException {
        if (!ProjectDescriptionReader.isWorkspaceLocked()) {
            return ProjectDescriptionReader.createParserFactory().newSAXParser();
        }
        if (singletonParser == null) {
            singletonParser = ProjectDescriptionReader.createParserFactory().newSAXParser();
        }
        return singletonParser;
    }

    private static synchronized SAXParserFactory createParserFactory() throws ParserConfigurationException {
        if (singletonParserFactory == null) {
            singletonParserFactory = SAXParserFactory.newInstance();
            singletonParserFactory.setNamespaceAware(true);
            try {
                singletonParserFactory.setFeature("http://xml.org/sax/features/string-interning", true);
            }
            catch (SAXException sAXException) {}
        }
        return singletonParserFactory;
    }

    private static boolean isWorkspaceLocked() {
        try {
            return ((Workspace)ResourcesPlugin.getWorkspace()).getWorkManager().isLockAlreadyAcquired();
        }
        catch (CoreException coreException) {
            return false;
        }
    }

    public ProjectDescriptionReader() {
        this.project = null;
    }

    public ProjectDescriptionReader(IProject project) {
        this.project = project;
    }

    public void characters(char[] chars, int offset, int length) {
        this.charBuffer.append(chars, offset, length);
    }

    private void endBuildCommandElement(String elementName) {
        if (elementName.equals("buildCommand")) {
            BuildCommand command = (BuildCommand)this.objectStack.pop();
            ArrayList commandList = (ArrayList)this.objectStack.peek();
            commandList.add(command);
            this.state = 4;
        }
    }

    private void endBuildSpecElement(String elementName) {
        if (elementName.equals("buildSpec")) {
            ArrayList commands = (ArrayList)this.objectStack.pop();
            this.state = 18;
            if (commands.isEmpty()) {
                return;
            }
            ICommand[] commandArray = commands.toArray(new ICommand[commands.size()]);
            this.projectDescription.setBuildSpec(commandArray);
        }
    }

    private void endBuildTriggersElement(String elementName) {
        if (elementName.equals("triggers")) {
            this.state = 0;
            BuildCommand command = (BuildCommand)this.objectStack.peek();
            command.setConfigurable(true);
            command.setBuilding(9, false);
            command.setBuilding(15, false);
            command.setBuilding(6, false);
            command.setBuilding(10, false);
            StringTokenizer tokens = new StringTokenizer(this.charBuffer.toString(), ",");
            while (tokens.hasMoreTokens()) {
                String next = tokens.nextToken();
                if (next.toLowerCase().equals("auto")) {
                    command.setBuilding(9, true);
                    continue;
                }
                if (next.toLowerCase().equals("clean")) {
                    command.setBuilding(15, true);
                    continue;
                }
                if (next.toLowerCase().equals("full")) {
                    command.setBuilding(6, true);
                    continue;
                }
                if (!next.toLowerCase().equals("incremental")) continue;
                command.setBuilding(10, true);
            }
        }
    }

    private void endDictionary(String elementName) {
        if (elementName.equals("dictionary")) {
            String value = (String)this.objectStack.pop();
            String key = (String)this.objectStack.pop();
            ((HashMap)this.objectStack.peek()).put(key, value);
            this.state = 1;
        }
    }

    private void endDictionaryKey(String elementName) {
        if (elementName.equals("key")) {
            String value = (String)this.objectStack.pop();
            String oldKey = (String)this.objectStack.pop();
            String newKey = this.charBuffer.toString();
            if (oldKey != null && oldKey.length() != 0) {
                this.parseProblem(NLS.bind((String)Messages.projRead_whichKey, (Object)oldKey, (Object)newKey));
                this.objectStack.push(oldKey);
            } else {
                this.objectStack.push(newKey);
            }
            this.objectStack.push(value);
            this.state = 5;
        }
    }

    private void endDictionaryValue(String elementName) {
        if (elementName.equals("value")) {
            String newValue = this.charBuffer.toString();
            String oldValue = (String)this.objectStack.pop();
            if (oldValue != null && oldValue.length() != 0) {
                this.parseProblem(NLS.bind((String)Messages.projRead_whichValue, (Object)oldValue, (Object)newValue));
                this.objectStack.push(oldValue);
            } else {
                this.objectStack.push(newValue);
            }
            this.state = 5;
        }
    }

    public void endElement(String uri, String elementName, String qname) {
        switch (this.state) {
            case 18: {
                break;
            }
            case 19: {
                if (!elementName.equals("name")) break;
                this.projectDescription.setName(this.charBuffer.toString().trim());
                this.state = 18;
                break;
            }
            case 20: {
                if (!elementName.equals("projects")) break;
                this.endProjectsElement(elementName);
                this.state = 18;
                break;
            }
            case 5: {
                this.endDictionary(elementName);
                break;
            }
            case 1: {
                if (!elementName.equals("arguments")) break;
                HashMap dictionaryArgs = (HashMap)this.objectStack.pop();
                this.state = 0;
                if (dictionaryArgs.isEmpty()) break;
                ((BuildCommand)this.objectStack.peek()).setArguments(dictionaryArgs);
                break;
            }
            case 0: {
                this.endBuildCommandElement(elementName);
                break;
            }
            case 4: {
                this.endBuildSpecElement(elementName);
                break;
            }
            case 3: {
                this.endBuildTriggersElement(elementName);
                break;
            }
            case 16: {
                this.endNaturesElement(elementName);
                break;
            }
            case 9: {
                this.endLinkElement(elementName);
                break;
            }
            case 14: {
                this.endLinkedResourcesElement(elementName);
                break;
            }
            case 32: {
                this.endVariableElement(elementName);
                break;
            }
            case 24: {
                this.endFilterElement(elementName);
                break;
            }
            case 23: {
                this.endFilteredResourcesElement(elementName);
                break;
            }
            case 31: {
                this.endVariableListElement(elementName);
                break;
            }
            case 17: {
                if (!elementName.equals("comment")) break;
                this.projectDescription.setComment(this.charBuffer.toString());
                this.state = 18;
                break;
            }
            case 21: {
                if (!elementName.equals("project")) break;
                ((ArrayList)this.objectStack.peek()).add(this.charBuffer.toString().trim());
                this.state = 20;
                break;
            }
            case 2: {
                if (!elementName.equals("name")) break;
                ((BuildCommand)this.objectStack.peek()).setName(this.charBuffer.toString().trim());
                this.state = 0;
                break;
            }
            case 6: {
                this.endDictionaryKey(elementName);
                break;
            }
            case 7: {
                this.endDictionaryValue(elementName);
                break;
            }
            case 15: {
                if (!elementName.equals("nature")) break;
                ((ArrayList)this.objectStack.peek()).add(this.charBuffer.toString().trim());
                this.state = 16;
                break;
            }
            case 12: {
                this.endLinkPath(elementName);
                break;
            }
            case 13: {
                this.endLinkType(elementName);
                break;
            }
            case 10: {
                this.endLinkLocation(elementName);
                break;
            }
            case 11: {
                this.endLinkLocationURI(elementName);
                break;
            }
            case 25: {
                this.endFilterId(elementName);
                break;
            }
            case 26: {
                this.endFilterPath(elementName);
                break;
            }
            case 27: {
                this.endFilterType(elementName);
                break;
            }
            case 28: {
                this.endMatcherElement(elementName);
                break;
            }
            case 29: {
                this.endMatcherID(elementName);
                break;
            }
            case 30: {
                this.endMatcherArguments(elementName);
                break;
            }
            case 33: {
                this.endVariableName(elementName);
                break;
            }
            case 34: {
                this.endVariableValue(elementName);
                break;
            }
            case 35: {
                this.endSnapshotLocation(elementName);
            }
        }
        this.charBuffer.setLength(0);
    }

    private void endLinkedResourcesElement(String elementName) {
        if (elementName.equals("linkedResources")) {
            HashMap linkedResources = (HashMap)this.objectStack.pop();
            this.state = 18;
            if (linkedResources.isEmpty()) {
                return;
            }
            this.projectDescription.setLinkDescriptions(linkedResources);
        }
    }

    private void endFilteredResourcesElement(String elementName) {
        if (elementName.equals("filteredResources")) {
            HashMap filteredResources = (HashMap)this.objectStack.pop();
            this.state = 18;
            if (filteredResources.isEmpty()) {
                return;
            }
            this.projectDescription.setFilterDescriptions(filteredResources);
        }
    }

    private void endVariableListElement(String elementName) {
        if (elementName.equals("variableList")) {
            HashMap variableList = (HashMap)this.objectStack.pop();
            this.state = 18;
            if (variableList.isEmpty()) {
                return;
            }
            this.projectDescription.setVariableDescriptions(variableList);
        }
    }

    private void endLinkElement(String elementName) {
        if (elementName.equals("link")) {
            this.state = 14;
            LinkDescription link = (LinkDescription)this.objectStack.pop();
            IPath path = link.getProjectRelativePath();
            int type = link.getType();
            URI location = link.getLocationURI();
            if (location == null) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badLinkLocation, (Object)path, (Object)Integer.toString(type)));
                return;
            }
            if (path == null || path.segmentCount() == 0) {
                this.parseProblem(NLS.bind((String)Messages.projRead_emptyLinkName, (Object)Integer.toString(type), (Object)location));
                return;
            }
            if (type == -1) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badLinkType, (Object)path, (Object)location));
                return;
            }
            ((HashMap)this.objectStack.peek()).put(link.getProjectRelativePath(), link);
        }
    }

    private void endMatcherElement(String elementName) {
        if (elementName.equals("matcher")) {
            Object[] matcher = (Object[])this.objectStack.pop();
            String id = (String)matcher[0];
            if (id == null) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badFilterID, (Object)id));
                return;
            }
            if (this.objectStack.peek() instanceof ArrayList) {
                this.state = 30;
                ArrayList list = (ArrayList)this.objectStack.peek();
                list.add(new FileInfoMatcherDescription((String)matcher[0], matcher[1]));
            }
            if (this.objectStack.peek() instanceof FilterDescription) {
                this.state = 24;
                FilterDescription d = (FilterDescription)this.objectStack.peek();
                d.setFileInfoMatcherDescription(new FileInfoMatcherDescription((String)matcher[0], matcher[1]));
            }
        }
    }

    private void endFilterElement(String elementName) {
        if (elementName.equals("filter")) {
            FilterDescription filter = (FilterDescription)this.objectStack.pop();
            if (this.project != null) {
                IPath path = filter.getResource().getProjectRelativePath();
                int type = filter.getType();
                if (path == null) {
                    this.parseProblem(NLS.bind((String)Messages.projRead_emptyFilterName, (Object)Integer.toString(type)));
                    return;
                }
                if (type == -1) {
                    this.parseProblem(NLS.bind((String)Messages.projRead_badFilterType, (Object)path));
                    return;
                }
                HashMap map = (HashMap)this.objectStack.peek();
                LinkedList<FilterDescription> list = (LinkedList<FilterDescription>)map.get(filter.getResource().getProjectRelativePath());
                if (list == null) {
                    list = new LinkedList<FilterDescription>();
                    map.put(filter.getResource().getProjectRelativePath(), list);
                }
                list.add(filter);
            } else {
                String key = new String();
                HashMap map = (HashMap)this.objectStack.peek();
                LinkedList<FilterDescription> list = (LinkedList<FilterDescription>)map.get(key);
                if (list == null) {
                    list = new LinkedList<FilterDescription>();
                    map.put(key, list);
                }
                list.add(filter);
            }
            this.state = 23;
        }
    }

    private void endVariableElement(String elementName) {
        if (elementName.equals("variable")) {
            this.state = 31;
            VariableDescription desc = (VariableDescription)this.objectStack.pop();
            if (desc.getName().length() == 0) {
                this.parseProblem(NLS.bind((String)Messages.projRead_emptyVariableName, (Object)this.project.getName()));
                return;
            }
            ((HashMap)this.objectStack.peek()).put(desc.getName(), desc);
        }
    }

    private void endLinkLocation(String elementName) {
        if (elementName.equals("location")) {
            String newLocation = this.charBuffer.toString().trim();
            URI oldLocation = ((LinkDescription)this.objectStack.peek()).getLocationURI();
            if (oldLocation != null) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badLocation, (Object)oldLocation, (Object)newLocation));
            } else {
                ((LinkDescription)this.objectStack.peek()).setLocationURI(URIUtil.toURI((IPath)Path.fromPortableString((String)newLocation)));
            }
            this.state = 9;
        }
    }

    private void endLinkLocationURI(String elementName) {
        if (elementName.equals("locationURI")) {
            String newLocation = this.charBuffer.toString().trim();
            URI oldLocation = ((LinkDescription)this.objectStack.peek()).getLocationURI();
            if (oldLocation != null) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badLocation, (Object)oldLocation, (Object)newLocation));
            } else {
                try {
                    ((LinkDescription)this.objectStack.peek()).setLocationURI(new URI(newLocation));
                }
                catch (URISyntaxException e) {
                    String msg = Messages.projRead_failureReadingProjectDesc;
                    this.problems.add((IStatus)new Status(2, "org.eclipse.core.resources", 567, msg, (Throwable)e));
                }
            }
            this.state = 9;
        }
    }

    private void endLinkPath(String elementName) {
        if (elementName.equals("name")) {
            Path newPath = new Path(this.charBuffer.toString());
            IPath oldPath = ((LinkDescription)this.objectStack.peek()).getProjectRelativePath();
            if (oldPath.segmentCount() != 0) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badLinkName, (Object)oldPath, (Object)newPath));
            } else {
                ((LinkDescription)this.objectStack.peek()).setPath((IPath)newPath);
            }
            this.state = 9;
        }
    }

    private void endMatcherID(String elementName) {
        if (elementName.equals("id")) {
            String newID = this.charBuffer.toString().trim();
            String oldID = (String)((Object[])this.objectStack.peek())[0];
            if (oldID != null) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badID, (Object)oldID, (Object)newID));
            } else {
                ((Object[])this.objectStack.peek())[0] = newID;
            }
            this.state = 28;
        }
    }

    private void endMatcherArguments(String elementName) {
        if (elementName.equals("arguments")) {
            String oldArguments;
            ArrayList matchers = (ArrayList)this.objectStack.pop();
            FileInfoMatcherDescription[] newArguments = this.charBuffer.toString();
            if (matchers.size() > 0) {
                newArguments = matchers.toArray(new FileInfoMatcherDescription[matchers.size()]);
            }
            if ((oldArguments = (String)((Object[])this.objectStack.peek())[1]) != null) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badArguments, (Object)oldArguments, (Object)newArguments));
            } else {
                ((Object[])this.objectStack.peek())[1] = newArguments;
            }
            this.state = 28;
        }
    }

    private void endFilterId(String elementName) {
        if (elementName.equals("id")) {
            Long newId = new Long(this.charBuffer.toString());
            long oldId = ((FilterDescription)this.objectStack.peek()).getId();
            if (oldId != 0L) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badFilterName, (Object)new Long(oldId), (Object)newId));
            } else {
                ((FilterDescription)this.objectStack.peek()).setId(newId);
            }
            this.state = 24;
        }
    }

    private void endFilterPath(String elementName) {
        if (elementName.equals("name")) {
            Path newPath = new Path(this.charBuffer.toString());
            IResource oldResource = ((FilterDescription)this.objectStack.peek()).getResource();
            if (oldResource != null) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badFilterName, (Object)oldResource.getProjectRelativePath(), (Object)newPath));
            } else if (this.project != null) {
                ((FilterDescription)this.objectStack.peek()).setResource(newPath.isEmpty() ? this.project : this.project.getFolder((IPath)newPath));
            } else {
                ((FilterDescription)this.objectStack.peek()).setResource(null);
            }
            this.state = 24;
        }
    }

    private void endFilterType(String elementName) {
        if (elementName.equals("type")) {
            int newType = -1;
            try {
                newType = Integer.parseInt(this.charBuffer.toString().trim());
            }
            catch (NumberFormatException e) {
                this.log(e);
            }
            int oldType = ((FilterDescription)this.objectStack.peek()).getType();
            if (oldType != -1) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badFilterType2, (Object)Integer.toString(oldType), (Object)Integer.toString(newType)));
            } else {
                ((FilterDescription)this.objectStack.peek()).setType(newType);
            }
            this.state = 24;
        }
    }

    private void endVariableName(String elementName) {
        if (elementName.equals("name")) {
            String value = this.charBuffer.toString();
            ((VariableDescription)this.objectStack.peek()).setName(value);
            this.state = 32;
        }
    }

    private void endVariableValue(String elementName) {
        if (elementName.equals("value")) {
            String value = this.charBuffer.toString();
            ((VariableDescription)this.objectStack.peek()).setValue(value);
            this.state = 32;
        }
    }

    private void endLinkType(String elementName) {
        if (elementName.equals("type")) {
            int newType = 1;
            try {
                newType = Integer.parseInt(this.charBuffer.toString().trim());
            }
            catch (NumberFormatException e) {
                this.log(e);
            }
            int oldType = ((LinkDescription)this.objectStack.peek()).getType();
            if (oldType != -1) {
                this.parseProblem(NLS.bind((String)Messages.projRead_badLinkType2, (Object)Integer.toString(oldType), (Object)Integer.toString(newType)));
            } else {
                ((LinkDescription)this.objectStack.peek()).setType(newType);
            }
            this.state = 9;
        }
    }

    private void endNaturesElement(String elementName) {
        if (elementName.equals("natures")) {
            ArrayList natures = (ArrayList)this.objectStack.pop();
            this.state = 18;
            if (natures.size() == 0) {
                return;
            }
            String[] natureNames = natures.toArray(new String[natures.size()]);
            this.projectDescription.setNatureIds(natureNames);
        }
    }

    private void endProjectsElement(String elementName) {
        ArrayList referencedProjects = (ArrayList)this.objectStack.pop();
        if (referencedProjects.size() == 0) {
            return;
        }
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        IProject[] projects = new IProject[referencedProjects.size()];
        int i = 0;
        while (i < projects.length) {
            projects[i] = root.getProject((String)referencedProjects.get(i));
            ++i;
        }
        this.projectDescription.setReferencedProjects(projects);
    }

    private void endSnapshotLocation(String elementName) {
        if (elementName.equals("snapshotLocation")) {
            String location = this.charBuffer.toString().trim();
            try {
                this.projectDescription.setSnapshotLocationURI(new URI(location));
            }
            catch (URISyntaxException e) {
                String msg = NLS.bind((String)Messages.projRead_badSnapshotLocation, (Object)location);
                this.problems.add((IStatus)new Status(2, "org.eclipse.core.resources", 567, msg, (Throwable)e));
            }
            this.state = 18;
        }
    }

    public void error(SAXParseException error) {
        this.log(error);
    }

    public void fatalError(SAXParseException error) throws SAXException {
        String message = error.getMessage();
        if (this.project != null) {
            message = NLS.bind((String)Messages.resources_readMeta, (Object)this.project.getName());
        }
        this.problems.add((IStatus)new Status(4, "org.eclipse.core.resources", 567, message == null ? "" : message, (Throwable)error));
        throw error;
    }

    protected void log(Exception ex) {
        String message = ex.getMessage();
        if (this.project != null) {
            message = NLS.bind((String)Messages.resources_readMeta, (Object)this.project.getName());
        }
        this.problems.add((IStatus)new Status(2, "org.eclipse.core.resources", 567, message == null ? "" : message, (Throwable)ex));
    }

    private void parseProblem(String errorMessage) {
        this.problems.add((IStatus)new Status(2, "org.eclipse.core.resources", 567, errorMessage, null));
    }

    private void parseProjectDescription(String elementName) {
        if (elementName.equals("name")) {
            this.state = 19;
            return;
        }
        if (elementName.equals("comment")) {
            this.state = 17;
            return;
        }
        if (elementName.equals("projects")) {
            this.state = 20;
            this.objectStack.push(new ArrayList());
            return;
        }
        if (elementName.equals("buildSpec")) {
            this.state = 4;
            this.objectStack.push(new ArrayList());
            return;
        }
        if (elementName.equals("natures")) {
            this.state = 16;
            this.objectStack.push(new ArrayList());
            return;
        }
        if (elementName.equals("linkedResources")) {
            this.objectStack.push(new HashMap());
            this.state = 14;
            return;
        }
        if (elementName.equals("filteredResources")) {
            this.objectStack.push(new HashMap());
            this.state = 23;
            return;
        }
        if (elementName.equals("variableList")) {
            this.objectStack.push(new HashMap());
            this.state = 31;
            return;
        }
        if (elementName.equals("snapshotLocation")) {
            this.state = 35;
            return;
        }
    }

    public ProjectDescription read(InputSource input) {
        this.problems = new MultiStatus("org.eclipse.core.resources", 567, Messages.projRead_failureReadingProjectDesc, null);
        this.objectStack = new Stack();
        this.state = 8;
        try {
            ProjectDescriptionReader.createParser().parse(input, (DefaultHandler)this);
        }
        catch (ParserConfigurationException e) {
            this.log(e);
        }
        catch (IOException e) {
            this.log(e);
        }
        catch (SAXException e) {
            this.log(e);
        }
        switch (this.problems.getSeverity()) {
            case 4: {
                Policy.log((IStatus)this.problems);
                return null;
            }
            case 1: 
            case 2: {
                Policy.log((IStatus)this.problems);
            }
        }
        return this.projectDescription;
    }

    public ProjectDescription read(IPath location) throws IOException {
        ProjectDescription projectDescription;
        BufferedInputStream file = null;
        try {
            file = new BufferedInputStream(new FileInputStream(location.toFile()));
            projectDescription = this.read(new InputSource(file));
        }
        catch (Throwable throwable) {
            FileUtil.safeClose(file);
            throw throwable;
        }
        FileUtil.safeClose(file);
        return projectDescription;
    }

    public ProjectDescription read(IPath location, IPath tempLocation) throws IOException {
        SafeFileInputStream file = new SafeFileInputStream(location.toOSString(), tempLocation.toOSString());
        try {
            ProjectDescription projectDescription = this.read(new InputSource(file));
            return projectDescription;
        }
        finally {
            file.close();
        }
    }

    public void startElement(String uri, String elementName, String qname, Attributes attributes) throws SAXException {
        this.charBuffer.setLength(0);
        switch (this.state) {
            case 8: {
                if (elementName.equals("projectDescription")) {
                    this.state = 18;
                    this.projectDescription = new ProjectDescription();
                    break;
                }
                throw new SAXException(NLS.bind((String)Messages.projRead_notProjectDescription, (Object)elementName));
            }
            case 18: {
                this.parseProjectDescription(elementName);
                break;
            }
            case 20: {
                if (!elementName.equals("project")) break;
                this.state = 21;
                break;
            }
            case 4: {
                if (!elementName.equals("buildCommand")) break;
                this.state = 0;
                this.objectStack.push(new BuildCommand());
                break;
            }
            case 0: {
                if (elementName.equals("name")) {
                    this.state = 2;
                    break;
                }
                if (elementName.equals("triggers")) {
                    this.state = 3;
                    break;
                }
                if (!elementName.equals("arguments")) break;
                this.state = 1;
                this.objectStack.push(new HashMap());
                break;
            }
            case 1: {
                if (!elementName.equals("dictionary")) break;
                this.state = 5;
                this.objectStack.push(new String());
                this.objectStack.push(new String());
                break;
            }
            case 5: {
                if (elementName.equals("key")) {
                    this.state = 6;
                    break;
                }
                if (!elementName.equals("value")) break;
                this.state = 7;
                break;
            }
            case 16: {
                if (!elementName.equals("nature")) break;
                this.state = 15;
                break;
            }
            case 14: {
                if (!elementName.equals("link")) break;
                this.state = 9;
                this.objectStack.push(new LinkDescription());
                break;
            }
            case 31: {
                if (!elementName.equals("variable")) break;
                this.state = 32;
                this.objectStack.push(new VariableDescription());
                break;
            }
            case 9: {
                if (elementName.equals("name")) {
                    this.state = 12;
                    break;
                }
                if (elementName.equals("type")) {
                    this.state = 13;
                    break;
                }
                if (elementName.equals("location")) {
                    this.state = 10;
                    break;
                }
                if (!elementName.equals("locationURI")) break;
                this.state = 11;
                break;
            }
            case 23: {
                if (!elementName.equals("filter")) break;
                this.state = 24;
                this.objectStack.push(new FilterDescription());
                break;
            }
            case 24: {
                if (elementName.equals("id")) {
                    this.state = 25;
                    break;
                }
                if (elementName.equals("name")) {
                    this.state = 26;
                    break;
                }
                if (elementName.equals("type")) {
                    this.state = 27;
                    break;
                }
                if (!elementName.equals("matcher")) break;
                this.state = 28;
                this.objectStack.push(new Object[2]);
                break;
            }
            case 28: {
                if (elementName.equals("id")) {
                    this.state = 29;
                    break;
                }
                if (!elementName.equals("arguments")) break;
                this.state = 30;
                this.objectStack.push(new ArrayList());
                break;
            }
            case 30: {
                if (!elementName.equals("matcher")) break;
                this.state = 28;
                this.objectStack.push(new Object[2]);
                break;
            }
            case 32: {
                if (elementName.equals("name")) {
                    this.state = 33;
                    break;
                }
                if (!elementName.equals("value")) break;
                this.state = 34;
            }
        }
    }

    public void warning(SAXParseException error) {
        this.log(error);
    }
}

