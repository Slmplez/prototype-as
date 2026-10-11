/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.StringConverter
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.registry;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveRegistry;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.handlers.ClosePerspectiveHandler;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.registry.PerspectiveRegistryReader;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.statushandlers.IStatusAdapterConstants;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;

public class PerspectiveRegistry
implements IPerspectiveRegistry,
IExtensionChangeHandler {
    private String defaultPerspID;
    private static final String EXT = "_persp.xml";
    private static final String ID_DEF_PERSP = "PerspectiveRegistry.DEFAULT_PERSP";
    private static final String PERSP = "_persp";
    private static final char SPACE_DELIMITER = ' ';
    private List perspectives = new ArrayList(10);
    private ArrayList perspToRemove = new ArrayList(5);
    private IPropertyChangeListener preferenceListener;

    public PerspectiveRegistry() {
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        tracker.registerHandler((IExtensionChangeHandler)this, null);
        this.initializePreferenceChangeListener();
        WorkbenchPlugin.getDefault().getPreferenceStore().addPropertyChangeListener(this.preferenceListener);
    }

    private void initializePreferenceChangeListener() {
        this.preferenceListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getProperty().endsWith(PerspectiveRegistry.PERSP)) {
                    this.mergePerspectives(event);
                } else if (event.getProperty().equals("perspectives")) {
                    this.updatePreferenceList((IPreferenceStore)event.getSource());
                }
            }

            private void mergePerspectives(PropertyChangeEvent event) {
                String id;
                IPreferenceStore store = (IPreferenceStore)event.getSource();
                if (event.getNewValue() == null || event.getNewValue().equals("")) {
                    IPerspectiveDescriptor[] perspectiveList = PerspectiveRegistry.this.getPerspectives();
                    int i = 0;
                    while (i < perspectiveList.length) {
                        String id2 = perspectiveList[i].getId();
                        if (event.getProperty().equals(String.valueOf(id2) + PerspectiveRegistry.PERSP)) {
                            if (!PerspectiveRegistry.this.perspToRemove.contains(id2)) {
                                store.setValue(String.valueOf(id2) + PerspectiveRegistry.PERSP, (String)event.getOldValue());
                            } else {
                                PerspectiveRegistry.this.perspToRemove.remove(id2);
                            }
                        }
                        ++i;
                    }
                } else if ((event.getOldValue() == null || event.getOldValue().equals("")) && PerspectiveRegistry.this.findPerspectiveWithId(id = event.getProperty().substring(0, event.getProperty().lastIndexOf(PerspectiveRegistry.PERSP))) == null) {
                    PerspectiveDescriptor desc = new PerspectiveDescriptor(null, null, null);
                    StringReader reader = new StringReader((String)event.getNewValue());
                    try {
                        XMLMemento memento = XMLMemento.createReadRoot(reader);
                        desc.restoreState(memento);
                        PerspectiveRegistry.this.addPerspective(desc);
                    }
                    catch (WorkbenchException e) {
                        PerspectiveRegistry.this.unableToLoadPerspective(e.getStatus());
                    }
                }
                this.updatePreferenceList(store);
            }

            private void updatePreferenceList(IPreferenceStore store) {
                IPerspectiveDescriptor[] perspectiveList = PerspectiveRegistry.this.getPerspectives();
                StringBuffer perspBuffer = new StringBuffer();
                int i = 0;
                while (i < perspectiveList.length) {
                    PerspectiveDescriptor desc = (PerspectiveDescriptor)perspectiveList[i];
                    if (PerspectiveRegistry.this.hasCustomDefinition(desc)) {
                        perspBuffer.append(desc.getId()).append(' ');
                    }
                    ++i;
                }
                String newList = perspBuffer.toString().trim();
                store.setValue("perspectives", newList);
            }
        };
    }

    public void addPerspective(PerspectiveDescriptor desc) {
        if (desc == null) {
            return;
        }
        this.add(desc);
    }

    private void add(PerspectiveDescriptor desc) {
        this.perspectives.add(desc);
        IConfigurationElement element = desc.getConfigElement();
        if (element != null) {
            PlatformUI.getWorkbench().getExtensionTracker().registerObject(element.getDeclaringExtension(), (Object)desc, 2);
        }
    }

    public PerspectiveDescriptor createPerspective(String label, PerspectiveDescriptor originalDescriptor) {
        if (!this.validateLabel(label)) {
            return null;
        }
        if (this.findPerspectiveWithLabel(label) != null) {
            return null;
        }
        String id = label.replace(' ', '_');
        id = id.trim();
        PerspectiveDescriptor desc = new PerspectiveDescriptor(id, label, originalDescriptor);
        this.add(desc);
        return desc;
    }

    public void revertPerspectives(ArrayList perspToRevert) {
        int i = 0;
        while (i < perspToRevert.size()) {
            PerspectiveDescriptor desc = (PerspectiveDescriptor)perspToRevert.get(i);
            this.perspToRemove.add(desc.getId());
            desc.revertToPredefined();
            ++i;
        }
    }

    public void deletePerspectives(ArrayList perspToDelete) {
        int i = 0;
        while (i < perspToDelete.size()) {
            this.deletePerspective((IPerspectiveDescriptor)perspToDelete.get(i));
            ++i;
        }
    }

    public void deletePerspective(IPerspectiveDescriptor in) {
        PerspectiveDescriptor desc = (PerspectiveDescriptor)in;
        if (!desc.isPredefined()) {
            this.perspToRemove.add(desc.getId());
            this.perspectives.remove(desc);
            desc.deleteCustomDefinition();
            this.verifyDefaultPerspective();
        }
    }

    private void internalDeletePerspective(PerspectiveDescriptor desc) {
        this.perspToRemove.add(desc.getId());
        this.perspectives.remove(desc);
        desc.deleteCustomDefinition();
        this.verifyDefaultPerspective();
    }

    void deleteCustomDefinition(PerspectiveDescriptor desc) {
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        store.setToDefault(String.valueOf(desc.getId()) + PERSP);
    }

    boolean hasCustomDefinition(PerspectiveDescriptor desc) {
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        return store.contains(String.valueOf(desc.getId()) + PERSP);
    }

    public IPerspectiveDescriptor findPerspectiveWithId(String id) {
        Iterator i = this.perspectives.iterator();
        while (i.hasNext()) {
            PerspectiveDescriptor desc = (PerspectiveDescriptor)i.next();
            if (!desc.getId().equals(id)) continue;
            if (WorkbenchActivityHelper.restrictUseOf(desc)) {
                return null;
            }
            return desc;
        }
        return null;
    }

    public IPerspectiveDescriptor findPerspectiveWithLabel(String label) {
        Iterator i = this.perspectives.iterator();
        while (i.hasNext()) {
            PerspectiveDescriptor desc = (PerspectiveDescriptor)i.next();
            if (!desc.getLabel().equals(label)) continue;
            if (WorkbenchActivityHelper.restrictUseOf(desc)) {
                return null;
            }
            return desc;
        }
        return null;
    }

    public String getDefaultPerspective() {
        return this.defaultPerspID;
    }

    public IPerspectiveDescriptor[] getPerspectives() {
        Collection descs = WorkbenchActivityHelper.restrictCollection(this.perspectives, new ArrayList());
        return descs.toArray(new IPerspectiveDescriptor[descs.size()]);
    }

    public void load() {
        this.loadPredefined();
        this.loadCustom();
        IDialogSettings dialogSettings = WorkbenchPlugin.getDefault().getDialogSettings();
        String str = dialogSettings.get(ID_DEF_PERSP);
        if (str != null && str.length() > 0) {
            this.setDefaultPerspective(str);
            dialogSettings.put(ID_DEF_PERSP, "");
        }
        this.verifyDefaultPerspective();
    }

    private void loadCustom() {
        Reader reader = null;
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        String customPerspectives = store.getString("perspectives");
        String[] perspectivesList = StringConverter.asArray((String)customPerspectives);
        int i = 0;
        while (i < perspectivesList.length) {
            try {
                String xmlString = store.getString(String.valueOf(perspectivesList[i]) + PERSP);
                if (xmlString == null || xmlString.length() == 0) {
                    throw new WorkbenchException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, NLS.bind((String)WorkbenchMessages.Perspective_couldNotBeFound, (Object)perspectivesList[i])));
                }
                reader = new StringReader(xmlString);
                XMLMemento memento = XMLMemento.createReadRoot(reader);
                PerspectiveDescriptor newPersp = new PerspectiveDescriptor(null, null, null);
                newPersp.restoreState(memento);
                String id = newPersp.getId();
                IPerspectiveDescriptor oldPersp = this.findPerspectiveWithId(id);
                if (oldPersp == null) {
                    this.add(newPersp);
                }
                reader.close();
            }
            catch (IOException iOException) {
                this.unableToLoadPerspective(null);
            }
            catch (WorkbenchException e) {
                this.unableToLoadPerspective(e.getStatus());
            }
            ++i;
        }
        IPath path = WorkbenchPlugin.getDefault().getDataLocation();
        if (path == null) {
            return;
        }
        File folder = path.toFile();
        if (folder.isDirectory()) {
            File[] fileList = folder.listFiles();
            int nSize = fileList.length;
            int nX = 0;
            while (nX < nSize) {
                File file = fileList[nX];
                if (file.getName().endsWith(EXT)) {
                    FileInputStream stream = null;
                    try {
                        stream = new FileInputStream(file);
                        reader = new BufferedReader(new InputStreamReader((InputStream)stream, "utf-8"));
                        XMLMemento memento = XMLMemento.createReadRoot(reader);
                        PerspectiveDescriptor newPersp = new PerspectiveDescriptor(null, null, null);
                        newPersp.restoreState(memento);
                        IPerspectiveDescriptor oldPersp = this.findPerspectiveWithId(newPersp.getId());
                        if (oldPersp == null) {
                            this.add(newPersp);
                        }
                        this.saveCustomPersp(newPersp, memento);
                        file.delete();
                        reader.close();
                        ((InputStream)stream).close();
                    }
                    catch (IOException iOException) {
                        this.unableToLoadPerspective(null);
                    }
                    catch (WorkbenchException e) {
                        this.unableToLoadPerspective(e.getStatus());
                    }
                }
                ++nX;
            }
        }
    }

    private void unableToLoadPerspective(IStatus status) {
        String msg = "Unable to load perspective.";
        if (status == null) {
            Status errStatus = new Status(4, WorkbenchPlugin.PI_WORKBENCH, msg);
            StatusManager.getManager().handle((IStatus)errStatus, 3);
        } else {
            StatusAdapter adapter = new StatusAdapter(status);
            adapter.setProperty(IStatusAdapterConstants.TITLE_PROPERTY, msg);
            StatusManager.getManager().handle(adapter, 3);
        }
    }

    public void saveCustomPersp(PerspectiveDescriptor desc, XMLMemento memento) throws IOException {
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        StringWriter writer = new StringWriter();
        memento.save(writer);
        ((Writer)writer).close();
        store.setValue(String.valueOf(desc.getId()) + PERSP, ((Object)writer).toString());
    }

    public IMemento getCustomPersp(String id) throws WorkbenchException, IOException {
        StringReader reader = null;
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        String xmlString = store.getString(String.valueOf(id) + PERSP);
        if (xmlString == null || xmlString.length() == 0) {
            throw new WorkbenchException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, NLS.bind((String)WorkbenchMessages.Perspective_couldNotBeFound, (Object)id)));
        }
        reader = new StringReader(xmlString);
        XMLMemento memento = XMLMemento.createReadRoot(reader);
        ((Reader)reader).close();
        return memento;
    }

    private void loadPredefined() {
        PerspectiveRegistryReader reader = new PerspectiveRegistryReader(this);
        reader.readPerspectives(Platform.getExtensionRegistry());
    }

    public void setDefaultPerspective(String id) {
        IPerspectiveDescriptor desc = this.findPerspectiveWithId(id);
        if (desc != null) {
            this.defaultPerspID = id;
            PrefUtil.getAPIPreferenceStore().setValue("defaultPerspectiveId", id);
        }
    }

    public boolean validateLabel(String label) {
        return (label = label.trim()).length() > 0;
    }

    private void verifyDefaultPerspective() {
        IPerspectiveDescriptor desc = null;
        if (this.defaultPerspID != null) {
            desc = this.findPerspectiveWithId(this.defaultPerspID);
        }
        if (desc != null) {
            return;
        }
        String str = PrefUtil.getAPIPreferenceStore().getString("defaultPerspectiveId");
        if (str != null && str.length() > 0) {
            desc = this.findPerspectiveWithId(str);
        }
        if (desc != null) {
            this.defaultPerspID = str;
            return;
        }
        Workbench instance = Workbench.getInstance();
        if (instance != null) {
            this.defaultPerspID = instance.getDefaultPerspectiveId();
        }
    }

    public IPerspectiveDescriptor clonePerspective(String id, String label, IPerspectiveDescriptor originalDescriptor) {
        if (label == null || label.trim().length() <= 0) {
            throw new IllegalArgumentException();
        }
        IPerspectiveDescriptor desc = this.findPerspectiveWithId(id);
        if (desc != null) {
            throw new IllegalArgumentException();
        }
        desc = new PerspectiveDescriptor(id, label, (PerspectiveDescriptor)originalDescriptor);
        this.add((PerspectiveDescriptor)desc);
        return desc;
    }

    public void revertPerspective(IPerspectiveDescriptor perspToRevert) {
        PerspectiveDescriptor desc = (PerspectiveDescriptor)perspToRevert;
        this.perspToRemove.add(desc.getId());
        desc.revertToPredefined();
    }

    public void dispose() {
        PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler((IExtensionChangeHandler)this);
        WorkbenchPlugin.getDefault().getPreferenceStore().removePropertyChangeListener(this.preferenceListener);
    }

    public void removeExtension(IExtension source, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof PerspectiveDescriptor) {
                IWorkbenchWindow[] windows = PlatformUI.getWorkbench().getWorkbenchWindows();
                PerspectiveDescriptor desc = (PerspectiveDescriptor)objects[i];
                int w = 0;
                while (w < windows.length) {
                    IWorkbenchWindow window = windows[w];
                    IWorkbenchPage[] pages = window.getPages();
                    int p = 0;
                    while (p < pages.length) {
                        WorkbenchPage page = (WorkbenchPage)pages[p];
                        ClosePerspectiveHandler.closePerspective(page, page.findPerspective(desc));
                        ++p;
                    }
                    ++w;
                }
                this.internalDeletePerspective(desc);
            }
            ++i;
        }
    }

    public void addExtension(IExtensionTracker tracker, IExtension addedExtension) {
        IConfigurationElement[] addedElements = addedExtension.getConfigurationElements();
        int i = 0;
        while (i < addedElements.length) {
            PerspectiveRegistryReader reader = new PerspectiveRegistryReader(this);
            reader.readElement(addedElements[i]);
            ++i;
        }
    }
}

