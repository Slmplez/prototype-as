/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.swt.program.Program
 */
package org.eclipse.ui.internal.registry;

import com.ibm.icu.text.Collator;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.swt.program.Program;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IFileEditorMapping;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.editorsupport.ComponentSupport;
import org.eclipse.ui.internal.misc.ExternalProgramImageDescriptor;
import org.eclipse.ui.internal.misc.ProgramImageDescriptor;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.registry.EditorRegistryReader;
import org.eclipse.ui.internal.registry.FileEditorMapping;
import org.eclipse.ui.internal.registry.MockMapping;

public class EditorRegistry
extends EventManager
implements IEditorRegistry,
IExtensionChangeHandler {
    private static final IEditorDescriptor[] EMPTY = new IEditorDescriptor[0];
    private Map contentTypeToEditorMappings = new HashMap();
    private Map extensionImages = new HashMap();
    private List sortedEditorsFromPlugins = new ArrayList();
    private Map mapIDtoEditor = this.initialIdToEditorMap(10);
    private EditorMap typeEditorMappings;
    private static final Comparator comparer = new Comparator(){
        private Collator collator = Collator.getInstance();

        public int compare(Object arg0, Object arg1) {
            String s1 = ((IEditorDescriptor)arg0).getLabel();
            String s2 = ((IEditorDescriptor)arg1).getLabel();
            return this.collator.compare(s1, s2);
        }
    };
    private RelatedRegistry relatedRegistry;
    public static final String EMPTY_EDITOR_ID = "org.eclipse.ui.internal.emptyEditorTab";

    public EditorRegistry() {
        this.initializeFromStorage();
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPointFilter()));
        this.relatedRegistry = new RelatedRegistry();
    }

    public void addEditorFromPlugin(EditorDescriptor editor, List extensions, List filenames, List contentTypeVector, boolean bDefault) {
        FileEditorMapping mapping;
        PlatformUI.getWorkbench().getExtensionTracker().registerObject(editor.getConfigurationElement().getDeclaringExtension(), (Object)editor, 2);
        this.sortedEditorsFromPlugins.add(editor);
        Iterator itr = extensions.iterator();
        while (itr.hasNext()) {
            String fileExtension = (String)itr.next();
            if (fileExtension == null || fileExtension.length() <= 0) continue;
            mapping = this.getMappingFor("*." + fileExtension);
            if (mapping == null) {
                mapping = new FileEditorMapping(fileExtension);
                this.typeEditorMappings.putDefault(this.mappingKeyFor(mapping), mapping);
            }
            mapping.addEditor(editor);
            if (!bDefault) continue;
            mapping.setDefaultEditor(editor);
        }
        itr = filenames.iterator();
        while (itr.hasNext()) {
            String filename = (String)itr.next();
            if (filename == null || filename.length() <= 0) continue;
            mapping = this.getMappingFor(filename);
            if (mapping == null) {
                String extension;
                String name;
                int index = filename.indexOf(46);
                if (index < 0) {
                    name = filename;
                    extension = "";
                } else {
                    name = filename.substring(0, index);
                    extension = filename.substring(index + 1);
                }
                mapping = new FileEditorMapping(name, extension);
                this.typeEditorMappings.putDefault(this.mappingKeyFor(mapping), mapping);
            }
            mapping.addEditor(editor);
            if (!bDefault) continue;
            mapping.setDefaultEditor(editor);
        }
        itr = contentTypeVector.iterator();
        while (itr.hasNext()) {
            IContentType contentType;
            String contentTypeId = (String)itr.next();
            if (contentTypeId == null || contentTypeId.length() <= 0 || (contentType = Platform.getContentTypeManager().getContentType(contentTypeId)) == null) continue;
            IEditorDescriptor[] editorArray = (IEditorDescriptor[])this.contentTypeToEditorMappings.get(contentType);
            if (editorArray == null) {
                editorArray = new IEditorDescriptor[]{editor};
                this.contentTypeToEditorMappings.put(contentType, editorArray);
                continue;
            }
            IEditorDescriptor[] newArray = new IEditorDescriptor[editorArray.length + 1];
            if (bDefault) {
                newArray[0] = editor;
                System.arraycopy(editorArray, 0, newArray, 1, editorArray.length);
            } else {
                newArray[editorArray.length] = editor;
                System.arraycopy(editorArray, 0, newArray, 0, editorArray.length);
            }
            this.contentTypeToEditorMappings.put(contentType, newArray);
        }
        this.mapIDtoEditor.put(editor.getId(), editor);
    }

    private void addExternalEditorsToEditorMap() {
        IEditorDescriptor desc = null;
        FileEditorMapping[] maps = this.typeEditorMappings.allMappings();
        int i = 0;
        while (i < maps.length) {
            FileEditorMapping map = maps[i];
            IEditorDescriptor[] descArray = map.getEditors();
            int n = 0;
            while (n < descArray.length) {
                desc = descArray[n];
                this.mapIDtoEditor.put(desc.getId(), desc);
                ++n;
            }
            ++i;
        }
    }

    public void addPropertyListener(IPropertyListener l) {
        this.addListenerObject(l);
    }

    public IEditorDescriptor findEditor(String id) {
        Object desc = this.mapIDtoEditor.get(id);
        if (WorkbenchActivityHelper.restrictUseOf(desc)) {
            return null;
        }
        return (IEditorDescriptor)desc;
    }

    private void firePropertyChange(final int type) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            final IPropertyListener l = (IPropertyListener)array[nX];
            Platform.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.propertyChanged(EditorRegistry.this, type);
                }
            });
            ++nX;
        }
    }

    public IEditorDescriptor getDefaultEditor() {
        return this.findEditor("org.eclipse.ui.systemExternalEditor");
    }

    public IEditorDescriptor getDefaultEditor(String filename) {
        return this.getDefaultEditor(filename, this.guessAtContentType(filename));
    }

    private IContentType guessAtContentType(String filename) {
        return Platform.getContentTypeManager().findContentTypeFor(filename);
    }

    private ImageDescriptor getDefaultImage() {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_FILE");
    }

    public IEditorDescriptor[] getEditors(String filename) {
        return this.getEditors(filename, this.guessAtContentType(filename));
    }

    public IFileEditorMapping[] getFileEditorMappings() {
        IFileEditorMapping[] array = this.typeEditorMappings.allMappings();
        final Collator collator = Collator.getInstance();
        Arrays.sort(array, new Comparator(){

            public int compare(Object o1, Object o2) {
                String s1 = ((FileEditorMapping)o1).getLabel();
                String s2 = ((FileEditorMapping)o2).getLabel();
                return collator.compare(s1, s2);
            }
        });
        return array;
    }

    public ImageDescriptor getImageDescriptor(String filename) {
        return this.getImageDescriptor(filename, this.guessAtContentType(filename));
    }

    private FileEditorMapping getMappingFor(String ext) {
        if (ext == null) {
            return null;
        }
        String key = this.mappingKeyFor(ext);
        return this.typeEditorMappings.get(key);
    }

    private FileEditorMapping[] getMappingForFilename(String filename) {
        FileEditorMapping[] mapping = new FileEditorMapping[2];
        mapping[0] = this.getMappingFor(filename);
        int index = filename.lastIndexOf(46);
        if (index > -1) {
            String extension = filename.substring(index);
            mapping[1] = this.getMappingFor("*" + extension);
        }
        return mapping;
    }

    public IEditorDescriptor[] getSortedEditorsFromOS() {
        ArrayList<EditorDescriptor> externalEditors = new ArrayList<EditorDescriptor>();
        Program[] programs = Program.getPrograms();
        int i = 0;
        while (i < programs.length) {
            EditorDescriptor editor = new EditorDescriptor();
            editor.setOpenMode(4);
            editor.setProgram(programs[i]);
            ExternalProgramImageDescriptor desc = new ExternalProgramImageDescriptor(programs[i]);
            editor.setImageDescriptor(desc);
            externalEditors.add(editor);
            ++i;
        }
        Object[] tempArray = this.sortEditors(externalEditors);
        IEditorDescriptor[] array = new IEditorDescriptor[externalEditors.size()];
        int i2 = 0;
        while (i2 < tempArray.length) {
            array[i2] = (IEditorDescriptor)tempArray[i2];
            ++i2;
        }
        return array;
    }

    public IEditorDescriptor[] getSortedEditorsFromPlugins() {
        Collection descs = WorkbenchActivityHelper.restrictCollection(this.sortedEditorsFromPlugins, new ArrayList());
        return descs.toArray(new IEditorDescriptor[descs.size()]);
    }

    private HashMap initialIdToEditorMap(int initialSize) {
        HashMap map = new HashMap(initialSize);
        this.addSystemEditors(map);
        return map;
    }

    private void addSystemEditors(HashMap map) {
        EditorDescriptor editor = new EditorDescriptor();
        editor.setID("org.eclipse.ui.systemExternalEditor");
        editor.setName(WorkbenchMessages.SystemEditorDescription_name);
        editor.setOpenMode(4);
        map.put("org.eclipse.ui.systemExternalEditor", editor);
        if (ComponentSupport.inPlaceEditorSupported()) {
            editor = new EditorDescriptor();
            editor.setID("org.eclipse.ui.systemInPlaceEditor");
            editor.setName(WorkbenchMessages.SystemInPlaceDescription_name);
            editor.setOpenMode(2);
            map.put("org.eclipse.ui.systemInPlaceEditor", editor);
        }
        EditorDescriptor emptyEditorDescriptor = new EditorDescriptor();
        emptyEditorDescriptor.setID(EMPTY_EDITOR_ID);
        emptyEditorDescriptor.setName("(Empty)");
        emptyEditorDescriptor.setImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_OBJ_ELEMENT"));
        map.put(EMPTY_EDITOR_ID, emptyEditorDescriptor);
    }

    private void initializeFromStorage() {
        this.typeEditorMappings = new EditorMap();
        this.extensionImages = new HashMap();
        EditorRegistryReader registryReader = new EditorRegistryReader();
        registryReader.addEditors(this);
        this.sortInternalEditors();
        this.rebuildInternalEditorMap();
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        String defaultEditors = store.getString("defaultEditors");
        String chachedDefaultEditors = store.getString("defaultEditorsCache");
        if (defaultEditors == null || defaultEditors.equals(chachedDefaultEditors)) {
            this.setProductDefaults(defaultEditors);
            this.loadAssociations();
        } else {
            this.loadAssociations();
            this.setProductDefaults(defaultEditors);
            store.putValue("defaultEditorsCache", defaultEditors);
        }
        this.addExternalEditorsToEditorMap();
    }

    private void setProductDefaults(String defaultEditors) {
        if (defaultEditors == null || defaultEditors.length() == 0) {
            return;
        }
        StringTokenizer extEditors = new StringTokenizer(defaultEditors, new Character(';').toString());
        while (extEditors.hasMoreTokens()) {
            String extEditor = extEditors.nextToken().trim();
            int index = extEditor.indexOf(58);
            if (extEditor.length() < 3 || index <= 0 || index >= extEditor.length() - 1) {
                WorkbenchPlugin.log("Error setting default editor. Could not parse '" + extEditor + "'. Default editors should be specified as '*.ext1:editorId1;*.ext2:editorId2'");
                return;
            }
            String ext = extEditor.substring(0, index).trim();
            String editorId = extEditor.substring(index + 1).trim();
            FileEditorMapping mapping = this.getMappingFor(ext);
            if (mapping == null) {
                WorkbenchPlugin.log("Error setting default editor. Could not find mapping for '" + ext + "'.");
                continue;
            }
            EditorDescriptor editor = (EditorDescriptor)this.findEditor(editorId);
            if (editor == null) {
                WorkbenchPlugin.log("Error setting default editor. Could not find editor: '" + editorId + "'.");
                continue;
            }
            mapping.setDefaultEditor(editor);
        }
    }

    private boolean readEditors(Map editorTable) {
        IPath workbenchStatePath = WorkbenchPlugin.getDefault().getDataLocation();
        if (workbenchStatePath == null) {
            return false;
        }
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        Reader reader = null;
        FileInputStream stream = null;
        try {
            try {
                String xmlString = store.getString("editors");
                if (xmlString == null || xmlString.length() == 0) {
                    stream = new FileInputStream(workbenchStatePath.append("editors.xml").toOSString());
                    reader = new BufferedReader(new InputStreamReader((InputStream)stream, "utf-8"));
                } else {
                    reader = new StringReader(xmlString);
                }
                XMLMemento memento = XMLMemento.createReadRoot(reader);
                IMemento[] edMementos = memento.getChildren("descriptor");
                int i = 0;
                while (i < edMementos.length) {
                    EditorDescriptor editor = new EditorDescriptor();
                    boolean valid = editor.loadValues(edMementos[i]);
                    if (valid) {
                        if (editor.getPluginID() != null) {
                            EditorDescriptor validEditorDescritor = (EditorDescriptor)this.mapIDtoEditor.get(editor.getId());
                            if (validEditorDescritor != null) {
                                editorTable.put(validEditorDescritor.getId(), validEditorDescritor);
                            }
                        } else {
                            ImageDescriptor descriptor = editor.getProgram() == null ? new ProgramImageDescriptor(editor.getFileName(), 0) : new ExternalProgramImageDescriptor(editor.getProgram());
                            editor.setImageDescriptor(descriptor);
                            editorTable.put(editor.getId(), editor);
                        }
                    }
                    ++i;
                }
            }
            catch (IOException iOException) {
                try {
                    if (reader != null) {
                        reader.close();
                    } else if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException ex) {
                    WorkbenchPlugin.log("Error reading editors: Could not close steam", ex);
                }
                return false;
            }
            catch (WorkbenchException e) {
                ErrorDialog.openError(null, (String)WorkbenchMessages.EditorRegistry_errorTitle, (String)WorkbenchMessages.EditorRegistry_errorMessage, (IStatus)e.getStatus());
                try {
                    if (reader != null) {
                        reader.close();
                    } else if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException ex) {
                    WorkbenchPlugin.log("Error reading editors: Could not close steam", ex);
                }
                return false;
            }
        }
        finally {
            try {
                if (reader != null) {
                    reader.close();
                } else if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException ex) {
                WorkbenchPlugin.log("Error reading editors: Could not close steam", ex);
            }
        }
        return true;
    }

    public void readResources(Map editorTable, Reader reader) throws WorkbenchException {
        XMLMemento memento = XMLMemento.createReadRoot(reader);
        String versionString = memento.getString("version");
        boolean versionIs31 = "3.1".equals(versionString);
        IMemento[] extMementos = memento.getChildren("info");
        int i = 0;
        while (i < extMementos.length) {
            int j;
            EditorDescriptor editor;
            String name = extMementos[i].getString("name");
            if (name == null) {
                name = "*";
            }
            String extension = extMementos[i].getString("extension");
            IMemento[] idMementos = extMementos[i].getChildren("editor");
            String[] editorIDs = new String[idMementos.length];
            int j2 = 0;
            while (j2 < idMementos.length) {
                editorIDs[j2] = idMementos[j2].getString("id");
                ++j2;
            }
            idMementos = extMementos[i].getChildren("deletedEditor");
            String[] deletedEditorIDs = new String[idMementos.length];
            int j3 = 0;
            while (j3 < idMementos.length) {
                deletedEditorIDs[j3] = idMementos[j3].getString("id");
                ++j3;
            }
            FileEditorMapping mapping = this.getMappingFor(String.valueOf(name) + "." + extension);
            if (mapping == null) {
                mapping = new FileEditorMapping(name, extension);
            }
            ArrayList<IEditorDescriptor> editors = new ArrayList<IEditorDescriptor>();
            int j4 = 0;
            while (j4 < editorIDs.length) {
                EditorDescriptor editor2;
                if (editorIDs[j4] != null && (editor2 = (EditorDescriptor)editorTable.get(editorIDs[j4])) != null) {
                    editors.add(editor2);
                }
                ++j4;
            }
            ArrayList<EditorDescriptor> deletedEditors = new ArrayList<EditorDescriptor>();
            int j5 = 0;
            while (j5 < deletedEditorIDs.length) {
                if (deletedEditorIDs[j5] != null && (editor = (EditorDescriptor)editorTable.get(deletedEditorIDs[j5])) != null) {
                    deletedEditors.add(editor);
                }
                ++j5;
            }
            ArrayList<IEditorDescriptor> defaultEditors = new ArrayList<IEditorDescriptor>();
            if (versionIs31) {
                idMementos = extMementos[i].getChildren("defaultEditor");
                String[] defaultEditorIds = new String[idMementos.length];
                j = 0;
                while (j < idMementos.length) {
                    defaultEditorIds[j] = idMementos[j].getString("id");
                    ++j;
                }
                j = 0;
                while (j < defaultEditorIds.length) {
                    EditorDescriptor editor3;
                    if (defaultEditorIds[j] != null && (editor3 = (EditorDescriptor)editorTable.get(defaultEditorIds[j])) != null) {
                        defaultEditors.add(editor3);
                    }
                    ++j;
                }
            } else {
                if (!editors.isEmpty() && (editor = (EditorDescriptor)editors.get(0)) != null) {
                    defaultEditors.add(editor);
                }
                defaultEditors.addAll(Arrays.asList(mapping.getDeclaredDefaultEditors()));
            }
            IEditorDescriptor[] editorsArray = mapping.getEditors();
            j = 0;
            while (j < editorsArray.length) {
                if (!this.contains(editors, editorsArray[j]) && !deletedEditors.contains(editorsArray[j])) {
                    editors.add(editorsArray[j]);
                }
                ++j;
            }
            mapping.setEditorsList(editors);
            mapping.setDeletedEditorsList(deletedEditors);
            mapping.setDefaultEditors(defaultEditors);
            this.typeEditorMappings.put(this.mappingKeyFor(mapping), mapping);
            ++i;
        }
    }

    private boolean contains(List editorsArray, IEditorDescriptor editorDescriptor) {
        IEditorDescriptor currentEditorDescriptor = null;
        Iterator i = editorsArray.iterator();
        while (i.hasNext()) {
            currentEditorDescriptor = (IEditorDescriptor)i.next();
            if (!currentEditorDescriptor.getId().equals(editorDescriptor.getId())) continue;
            return true;
        }
        return false;
    }

    private boolean readResources(Map editorTable) {
        IPath workbenchStatePath = WorkbenchPlugin.getDefault().getDataLocation();
        if (workbenchStatePath == null) {
            return false;
        }
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        Reader reader = null;
        FileInputStream stream = null;
        try {
            try {
                String xmlString = store.getString("resourcetypes");
                if (xmlString == null || xmlString.length() == 0) {
                    stream = new FileInputStream(workbenchStatePath.append("resourcetypes.xml").toOSString());
                    reader = new BufferedReader(new InputStreamReader((InputStream)stream, "utf-8"));
                } else {
                    reader = new StringReader(xmlString);
                }
                this.readResources(editorTable, reader);
            }
            catch (IOException iOException) {
                MessageDialog.openError(null, (String)WorkbenchMessages.EditorRegistry_errorTitle, (String)WorkbenchMessages.EditorRegistry_errorMessage);
                try {
                    if (reader != null) {
                        reader.close();
                    } else if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException ex) {
                    WorkbenchPlugin.log("Error reading resources: Could not close steam", ex);
                }
                return false;
            }
            catch (WorkbenchException e) {
                ErrorDialog.openError(null, (String)WorkbenchMessages.EditorRegistry_errorTitle, (String)WorkbenchMessages.EditorRegistry_errorMessage, (IStatus)e.getStatus());
                try {
                    if (reader != null) {
                        reader.close();
                    } else if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException ex) {
                    WorkbenchPlugin.log("Error reading resources: Could not close steam", ex);
                }
                return false;
            }
        }
        finally {
            try {
                if (reader != null) {
                    reader.close();
                } else if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException ex) {
                WorkbenchPlugin.log("Error reading resources: Could not close steam", ex);
            }
        }
        return true;
    }

    private boolean loadAssociations() {
        HashMap editorTable = new HashMap();
        if (!this.readEditors(editorTable)) {
            return false;
        }
        return this.readResources(editorTable);
    }

    private String mappingKeyFor(String type) {
        return type.toLowerCase();
    }

    private String mappingKeyFor(FileEditorMapping mapping) {
        return this.mappingKeyFor(String.valueOf(mapping.getName()) + (mapping.getExtension().length() == 0 ? "" : "." + mapping.getExtension()));
    }

    private void rebuildEditorMap() {
        this.rebuildInternalEditorMap();
        this.addExternalEditorsToEditorMap();
    }

    private void rebuildInternalEditorMap() {
        Iterator itr = null;
        IEditorDescriptor desc = null;
        this.mapIDtoEditor = this.initialIdToEditorMap(this.mapIDtoEditor.size());
        itr = this.sortedEditorsFromPlugins.iterator();
        while (itr.hasNext()) {
            desc = (IEditorDescriptor)itr.next();
            this.mapIDtoEditor.put(desc.getId(), desc);
        }
    }

    public void removePropertyListener(IPropertyListener l) {
        this.removeListenerObject(l);
    }

    public void saveAssociations() {
        ArrayList<EditorDescriptor> editors = new ArrayList<EditorDescriptor>();
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        XMLMemento memento = XMLMemento.createWriteRoot("editors");
        memento.putString("version", "3.1");
        FileEditorMapping[] maps = this.typeEditorMappings.userMappings();
        int mapsIndex = 0;
        while (mapsIndex < maps.length) {
            IMemento idMemento;
            EditorDescriptor editor;
            FileEditorMapping type = maps[mapsIndex];
            IMemento editorMemento = memento.createChild("info");
            editorMemento.putString("name", type.getName());
            editorMemento.putString("extension", type.getExtension());
            IEditorDescriptor[] editorArray = type.getEditors();
            int i = 0;
            while (i < editorArray.length) {
                editor = (EditorDescriptor)editorArray[i];
                if (!editors.contains(editor)) {
                    editors.add(editor);
                }
                idMemento = editorMemento.createChild("editor");
                idMemento.putString("id", editorArray[i].getId());
                ++i;
            }
            editorArray = type.getDeletedEditors();
            i = 0;
            while (i < editorArray.length) {
                editor = (EditorDescriptor)editorArray[i];
                if (!editors.contains(editor)) {
                    editors.add(editor);
                }
                idMemento = editorMemento.createChild("deletedEditor");
                idMemento.putString("id", editorArray[i].getId());
                ++i;
            }
            editorArray = type.getDeclaredDefaultEditors();
            i = 0;
            while (i < editorArray.length) {
                editor = (EditorDescriptor)editorArray[i];
                if (!editors.contains(editor)) {
                    editors.add(editor);
                }
                idMemento = editorMemento.createChild("defaultEditor");
                idMemento.putString("id", editorArray[i].getId());
                ++i;
            }
            ++mapsIndex;
        }
        StringWriter writer = null;
        try {
            writer = new StringWriter();
            memento.save(writer);
            ((Writer)writer).close();
            store.setValue("resourcetypes", ((Object)writer).toString());
        }
        catch (IOException iOException) {
            try {
                if (writer != null) {
                    ((Writer)writer).close();
                }
            }
            catch (IOException ex) {
                ex.printStackTrace();
            }
            MessageDialog.openError(null, (String)"Saving Problems", (String)"Unable to save resource associations.");
            return;
        }
        memento = XMLMemento.createWriteRoot("editors");
        Iterator itr = editors.iterator();
        while (itr.hasNext()) {
            EditorDescriptor editor = (EditorDescriptor)itr.next();
            IMemento editorMemento = memento.createChild("descriptor");
            editor.saveValues(editorMemento);
        }
        writer = null;
        try {
            writer = new StringWriter();
            memento.save(writer);
            ((Writer)writer).close();
            store.setValue("editors", ((Object)writer).toString());
        }
        catch (IOException iOException) {
            try {
                if (writer != null) {
                    ((Writer)writer).close();
                }
            }
            catch (IOException ex) {
                ex.printStackTrace();
            }
            MessageDialog.openError(null, (String)"Error", (String)"Unable to save resource associations.");
            return;
        }
    }

    public void setFileEditorMappings(FileEditorMapping[] newResourceTypes) {
        this.typeEditorMappings = new EditorMap();
        int i = 0;
        while (i < newResourceTypes.length) {
            FileEditorMapping mapping = newResourceTypes[i];
            this.typeEditorMappings.put(this.mappingKeyFor(mapping), mapping);
            ++i;
        }
        this.extensionImages = new HashMap();
        this.rebuildEditorMap();
        this.firePropertyChange(1);
    }

    public void setDefaultEditor(String fileName, String editorId) {
        EditorDescriptor desc = (EditorDescriptor)this.findEditor(editorId);
        FileEditorMapping[] mapping = this.getMappingForFilename(fileName);
        if (mapping[0] != null) {
            mapping[0].setDefaultEditor(desc);
        }
        if (mapping[1] != null) {
            mapping[1].setDefaultEditor(desc);
        }
    }

    private Object[] sortEditors(List unsortedList) {
        Object[] array = new Object[unsortedList.size()];
        unsortedList.toArray(array);
        Collections.sort(Arrays.asList(array), comparer);
        return array;
    }

    private void sortInternalEditors() {
        Object[] array = this.sortEditors(this.sortedEditorsFromPlugins);
        this.sortedEditorsFromPlugins = new ArrayList();
        int i = 0;
        while (i < array.length) {
            this.sortedEditorsFromPlugins.add(array[i]);
            ++i;
        }
    }

    public boolean isSystemInPlaceEditorAvailable(String filename) {
        return ComponentSupport.inPlaceEditorAvailable(filename);
    }

    public boolean isSystemExternalEditorAvailable(String filename) {
        int nDot = filename.lastIndexOf(46);
        if (nDot >= 0) {
            String strName = filename.substring(nDot);
            return Program.findProgram((String)strName) != null;
        }
        return false;
    }

    public ImageDescriptor getSystemExternalEditorImageDescriptor(String filename) {
        Program externalProgram = null;
        int extensionIndex = filename.lastIndexOf(46);
        if (extensionIndex >= 0) {
            externalProgram = Program.findProgram((String)filename.substring(extensionIndex));
        }
        if (externalProgram == null) {
            return null;
        }
        return new ExternalProgramImageDescriptor(externalProgram);
    }

    private void removeEditorFromMapping(HashMap map, IEditorDescriptor desc) {
        Iterator iter = map.values().iterator();
        while (iter.hasNext()) {
            FileEditorMapping mapping = (FileEditorMapping)iter.next();
            IEditorDescriptor[] editors = mapping.getUnfilteredEditors();
            int i = 0;
            while (i < editors.length) {
                if (editors[i] == desc) {
                    mapping.removeEditor((EditorDescriptor)editors[i]);
                    break;
                }
                ++i;
            }
            if (editors.length > 0) continue;
            map.remove(mapping);
            break;
        }
    }

    public void removeExtension(IExtension source, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof EditorDescriptor) {
                EditorDescriptor desc = (EditorDescriptor)objects[i];
                this.sortedEditorsFromPlugins.remove(desc);
                this.mapIDtoEditor.values().remove(desc);
                this.removeEditorFromMapping(this.typeEditorMappings.defaultMap, desc);
                this.removeEditorFromMapping(this.typeEditorMappings.map, desc);
                this.removeEditorFromContentTypeMappings(this.contentTypeToEditorMappings, desc);
            }
            ++i;
        }
    }

    private void removeEditorFromContentTypeMappings(Map map, IEditorDescriptor desc) {
        Iterator iter = map.entrySet().iterator();
        while (iter.hasNext()) {
            IEditorDescriptor[] newDescriptors;
            Map.Entry entry = iter.next();
            IEditorDescriptor[] descriptors = (IEditorDescriptor[])entry.getValue();
            if (descriptors == (newDescriptors = this.removeDescriptor(descriptors, desc))) continue;
            if (newDescriptors == null) {
                iter.remove();
                continue;
            }
            entry.setValue(newDescriptors);
        }
    }

    private IEditorDescriptor[] removeDescriptor(IEditorDescriptor[] descriptors, IEditorDescriptor desc) {
        int i = 0;
        while (i < descriptors.length) {
            if (descriptors[i] == desc) {
                if (descriptors.length == 1) {
                    return null;
                }
                IEditorDescriptor[] newDescriptors = new IEditorDescriptor[descriptors.length - 1];
                if (i == 0) {
                    System.arraycopy(descriptors, 1, newDescriptors, 0, newDescriptors.length);
                } else {
                    System.arraycopy(descriptors, 0, newDescriptors, 0, i);
                    if (i < newDescriptors.length) {
                        System.arraycopy(descriptors, i + 1, newDescriptors, i, newDescriptors.length - i);
                    }
                }
                return newDescriptors;
            }
            ++i;
        }
        return descriptors;
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        EditorRegistryReader eReader = new EditorRegistryReader();
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            String id = elements[i].getAttribute("id");
            if (id == null || this.findEditor(id) == null) {
                eReader.readElement(this, elements[i]);
            }
            ++i;
        }
    }

    private IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "editors");
    }

    public IEditorDescriptor getDefaultEditor(String fileName, IContentType contentType) {
        return this.getEditorForContentType(fileName, contentType);
    }

    private IEditorDescriptor getEditorForContentType(String filename, IContentType contentType) {
        IEditorDescriptor desc = null;
        IEditorDescriptor[] contentTypeResults = this.findRelatedObjects(contentType, filename, this.relatedRegistry);
        if (contentTypeResults != null && contentTypeResults.length > 0) {
            desc = contentTypeResults[0];
        }
        return desc;
    }

    public IEditorDescriptor[] getEditors(String fileName, IContentType contentType) {
        return this.findRelatedObjects(contentType, fileName, this.relatedRegistry);
    }

    public ImageDescriptor getImageDescriptor(String filename, IContentType contentType) {
        IEditorDescriptor desc;
        if (filename == null) {
            return this.getDefaultImage();
        }
        if (contentType != null && (desc = this.getEditorForContentType(filename, contentType)) != null) {
            ImageDescriptor anImage = (ImageDescriptor)this.extensionImages.get(desc);
            if (anImage != null) {
                return anImage;
            }
            anImage = desc.getImageDescriptor();
            this.extensionImages.put(desc, anImage);
            return anImage;
        }
        String key = this.mappingKeyFor(filename);
        ImageDescriptor anImage = (ImageDescriptor)this.extensionImages.get(key);
        if (anImage != null) {
            return anImage;
        }
        FileEditorMapping[] mapping = this.getMappingForFilename(filename);
        int i = 0;
        while (i < 2) {
            if (mapping[i] != null) {
                String mappingKey = this.mappingKeyFor(mapping[i]);
                ImageDescriptor mappingImage = (ImageDescriptor)this.extensionImages.get(key);
                if (mappingImage != null) {
                    return mappingImage;
                }
                IEditorDescriptor editor = mapping[i].getDefaultEditor();
                if (editor != null) {
                    mappingImage = editor.getImageDescriptor();
                    this.extensionImages.put(mappingKey, mappingImage);
                    return mappingImage;
                }
            }
            ++i;
        }
        anImage = this.getSystemExternalEditorImageDescriptor(filename);
        if (anImage == null) {
            anImage = this.getDefaultImage();
        }
        return anImage;
    }

    private IEditorDescriptor[] findRelatedObjects(IContentType type, String fileName, RelatedRegistry registry) {
        IEditorDescriptor[] related;
        ArrayList<IEditorDescriptor> allRelated = new ArrayList<IEditorDescriptor>();
        ArrayList<IEditorDescriptor> nonDefaultFileEditors = new ArrayList<IEditorDescriptor>();
        if (fileName != null) {
            String extension;
            int index;
            FileEditorMapping mapping = this.getMappingFor(fileName);
            if (mapping != null) {
                related = mapping.getDeclaredDefaultEditors();
                int i = 0;
                while (i < related.length) {
                    if (!allRelated.contains(related[i]) && !WorkbenchActivityHelper.filterItem(related[i])) {
                        allRelated.add(related[i]);
                    }
                    ++i;
                }
                nonDefaultFileEditors.addAll(Arrays.asList(mapping.getEditors()));
            }
            if ((index = fileName.lastIndexOf(46)) > -1 && (mapping = this.getMappingFor(extension = "*" + fileName.substring(index))) != null) {
                related = mapping.getDeclaredDefaultEditors();
                int i = 0;
                while (i < related.length) {
                    if (!allRelated.contains(related[i]) && !WorkbenchActivityHelper.filterItem(related[i])) {
                        allRelated.add(related[i]);
                    }
                    ++i;
                }
                nonDefaultFileEditors.addAll(Arrays.asList(mapping.getEditors()));
            }
        }
        if (type != null) {
            related = registry.getRelatedObjects(type);
            int i = 0;
            while (i < related.length) {
                if (!allRelated.contains(related[i]) && !WorkbenchActivityHelper.filterItem(related[i])) {
                    allRelated.add(related[i]);
                }
                ++i;
            }
        }
        if (type != null) {
            while ((type = type.getBaseType()) != null) {
                related = registry.getRelatedObjects(type);
                int i = 0;
                while (i < related.length) {
                    if (!allRelated.contains(related[i]) && !WorkbenchActivityHelper.filterItem(related[i])) {
                        allRelated.add(related[i]);
                    }
                    ++i;
                }
            }
        }
        Iterator i = nonDefaultFileEditors.iterator();
        while (i.hasNext()) {
            IEditorDescriptor editor = (IEditorDescriptor)i.next();
            if (allRelated.contains(editor) || WorkbenchActivityHelper.filterItem(editor)) continue;
            allRelated.add(editor);
        }
        return allRelated.toArray(new IEditorDescriptor[allRelated.size()]);
    }

    public IEditorDescriptor[] getEditorsForContentType(IContentType type) {
        ArrayList<IEditorDescriptor> allRelated = new ArrayList<IEditorDescriptor>();
        if (type == null) {
            return new IEditorDescriptor[0];
        }
        IEditorDescriptor[] related = this.relatedRegistry.getRelatedObjects(type);
        int i = 0;
        while (i < related.length) {
            if (!allRelated.contains(related[i]) && !WorkbenchActivityHelper.filterItem(related[i])) {
                allRelated.add(related[i]);
            }
            ++i;
        }
        while ((type = type.getBaseType()) != null) {
            related = this.relatedRegistry.getRelatedObjects(type);
            i = 0;
            while (i < related.length) {
                if (!allRelated.contains(related[i]) && !WorkbenchActivityHelper.filterItem(related[i])) {
                    allRelated.add(related[i]);
                }
                ++i;
            }
        }
        return allRelated.toArray(new IEditorDescriptor[allRelated.size()]);
    }

    public IFileEditorMapping[] getUnifiedMappings() {
        IFileEditorMapping[] standardMappings = PlatformUI.getWorkbench().getEditorRegistry().getFileEditorMappings();
        ArrayList<IFileEditorMapping> allMappings = new ArrayList<IFileEditorMapping>(Arrays.asList(standardMappings));
        IContentType[] contentTypes = Platform.getContentTypeManager().getAllContentTypes();
        int i = 0;
        while (i < contentTypes.length) {
            IContentType type = contentTypes[i];
            String[] extensions = type.getFileSpecs(8);
            int j = 0;
            while (j < extensions.length) {
                String extension = extensions[j];
                boolean found = false;
                Iterator k = allMappings.iterator();
                while (k.hasNext()) {
                    IFileEditorMapping mapping = (IFileEditorMapping)k.next();
                    if (!"*".equals(mapping.getName()) || !extension.equals(mapping.getExtension())) continue;
                    found = true;
                    break;
                }
                if (!found) {
                    MockMapping mockMapping = new MockMapping(type, "*", extension);
                    allMappings.add(mockMapping);
                }
                ++j;
            }
            String[] filenames = type.getFileSpecs(4);
            int j2 = 0;
            while (j2 < filenames.length) {
                String wholename = filenames[j2];
                int idx = wholename.indexOf(46);
                String name = idx == -1 ? wholename : wholename.substring(0, idx);
                String extension = idx == -1 ? "" : wholename.substring(idx + 1);
                boolean found = false;
                Iterator k = allMappings.iterator();
                while (k.hasNext()) {
                    IFileEditorMapping mapping = (IFileEditorMapping)k.next();
                    if (!name.equals(mapping.getName()) || !extension.equals(mapping.getExtension())) continue;
                    found = true;
                    break;
                }
                if (!found) {
                    MockMapping mockMapping = new MockMapping(type, name, extension);
                    allMappings.add(mockMapping);
                }
                ++j2;
            }
            ++i;
        }
        return allMappings.toArray(new IFileEditorMapping[allMappings.size()]);
    }

    private static class EditorMap {
        HashMap defaultMap = new HashMap();
        HashMap map = new HashMap();

        private EditorMap() {
        }

        public void putDefault(String key, FileEditorMapping value) {
            this.defaultMap.put(key, value);
        }

        public void put(String key, FileEditorMapping value) {
            Object result = this.defaultMap.get(key);
            if (value.equals(result)) {
                this.map.remove(key);
            } else {
                this.map.put(key, value);
            }
        }

        public FileEditorMapping get(String key) {
            Object result = this.map.get(key);
            if (result == null) {
                result = this.defaultMap.get(key);
            }
            return (FileEditorMapping)result;
        }

        public FileEditorMapping[] allMappings() {
            HashMap merge = (HashMap)this.defaultMap.clone();
            merge.putAll(this.map);
            Collection values = merge.values();
            FileEditorMapping[] result = new FileEditorMapping[values.size()];
            return values.toArray(result);
        }

        public FileEditorMapping[] userMappings() {
            Collection values = this.map.values();
            FileEditorMapping[] result = new FileEditorMapping[values.size()];
            return values.toArray(result);
        }
    }

    class RelatedRegistry {
        RelatedRegistry() {
        }

        public IEditorDescriptor[] getRelatedObjects(IContentType type) {
            Object[] relatedObjects = (IEditorDescriptor[])EditorRegistry.this.contentTypeToEditorMappings.get(type);
            if (relatedObjects == null) {
                return EMPTY;
            }
            return (IEditorDescriptor[])WorkbenchActivityHelper.restrictArray(relatedObjects);
        }

        public IEditorDescriptor[] getRelatedObjects(String fileName) {
            FileEditorMapping mapping = EditorRegistry.this.getMappingFor(fileName);
            if (mapping == null) {
                return EMPTY;
            }
            return (IEditorDescriptor[])WorkbenchActivityHelper.restrictArray(mapping.getEditors());
        }
    }
}

