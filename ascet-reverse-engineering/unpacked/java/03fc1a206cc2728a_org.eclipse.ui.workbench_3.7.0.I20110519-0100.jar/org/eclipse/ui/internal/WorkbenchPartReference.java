/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.resource.DeviceResourceDescriptor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.ISizeProvider;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPart2;
import org.eclipse.ui.IWorkbenchPart3;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.SaveablesList;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.UIListenerLogging;
import org.eclipse.ui.internal.util.Util;

public abstract class WorkbenchPartReference
implements IWorkbenchPartReference,
ISizeProvider {
    public static final int INTERNAL_PROPERTY_OPENED = 529;
    public static final int INTERNAL_PROPERTY_CLOSED = 530;
    public static final int INTERNAL_PROPERTY_PINNED = 531;
    public static final int INTERNAL_PROPERTY_VISIBLE = 532;
    public static final int INTERNAL_PROPERTY_ZOOMED = 533;
    public static final int INTERNAL_PROPERTY_ACTIVE_CHILD_CHANGED = 534;
    public static final int INTERNAL_PROPERTY_MAXIMIZED = 535;
    public static int STATE_LAZY = 0;
    public static int STATE_CREATION_IN_PROGRESS = 1;
    public static int STATE_CREATED = 2;
    public static int STATE_DISPOSED = 3;
    private int state = STATE_LAZY;
    protected IWorkbenchPart part;
    private String id;
    protected PartPane pane;
    private boolean pinned = false;
    private String title;
    private String tooltip;
    private Image image = null;
    private ImageDescriptor defaultImageDescriptor;
    private ImageDescriptor imageDescriptor;
    private ListenerList propChangeListeners = new ListenerList();
    private ListenerList internalPropChangeListeners = new ListenerList();
    private ListenerList partChangeListeners = new ListenerList();
    private String partName;
    private String contentDescription;
    protected Map propertyCache = new HashMap();
    private BitSet queuedEvents = new BitSet();
    private boolean queueEvents = false;
    private DisposeListener prematureDisposeListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            WorkbenchPlugin.log(new RuntimeException("Widget disposed too early for part " + WorkbenchPartReference.this.getId()));
        }
    };
    private IPropertyListener propertyChangeListener = new IPropertyListener(){

        public void propertyChanged(Object source, int propId) {
            WorkbenchPartReference.this.partPropertyChanged(source, propId);
        }
    };
    private IPropertyChangeListener partPropertyChangeListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            WorkbenchPartReference.this.partPropertyChanged(event);
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public boolean isDisposed() {
        return this.state == STATE_DISPOSED;
    }

    protected void checkReference() {
        if (this.state == STATE_DISPOSED) {
            throw new RuntimeException("Error: IWorkbenchPartReference disposed");
        }
    }

    private void deferEvents(boolean shouldQueue) {
        this.queueEvents = shouldQueue;
        if (!this.queueEvents) {
            int i = 0;
            int n = this.queuedEvents.size();
            while (i < n) {
                if (this.queuedEvents.get(i)) {
                    this.firePropertyChange(i);
                    this.queuedEvents.clear(i);
                }
                ++i;
            }
        }
    }

    protected void setTitle(String newTitle) {
        if (Util.equals(this.title, newTitle)) {
            return;
        }
        this.title = newTitle;
        this.firePropertyChange(1);
    }

    protected void setPartName(String newPartName) {
        if (Util.equals(this.partName, newPartName)) {
            return;
        }
        this.partName = newPartName;
        this.firePropertyChange(260);
    }

    protected void setContentDescription(String newContentDescription) {
        if (Util.equals(this.contentDescription, newContentDescription)) {
            return;
        }
        this.contentDescription = newContentDescription;
        this.firePropertyChange(261);
    }

    protected void setImageDescriptor(ImageDescriptor descriptor) {
        if (Util.equals(this.imageDescriptor, descriptor)) {
            return;
        }
        Image oldImage = this.image;
        ImageDescriptor oldDescriptor = this.imageDescriptor;
        this.image = null;
        this.imageDescriptor = descriptor;
        this.immediateFirePropertyChange(1);
        if (this.queueEvents) {
            this.queuedEvents.clear(1);
        }
        if (oldImage != null) {
            JFaceResources.getResources().destroy((DeviceResourceDescriptor)oldDescriptor);
        }
    }

    protected void setToolTip(String newToolTip) {
        if (Util.equals(this.tooltip, newToolTip)) {
            return;
        }
        this.tooltip = newToolTip;
        this.firePropertyChange(1);
    }

    protected void partPropertyChanged(Object source, int propId) {
        IWorkbenchPart actualPart;
        if (propId == 261 || propId == 260 || propId == 1) {
            this.refreshFromPart();
        } else {
            this.firePropertyChange(propId);
        }
        if (propId == 257 && (actualPart = this.getPart(false)) != null) {
            IWorkbenchPartSite iWorkbenchPartSite = actualPart.getSite();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            SaveablesList modelManager = (SaveablesList)iWorkbenchPartSite.getService(clazz);
            modelManager.dirtyChanged(actualPart);
        }
    }

    protected void partPropertyChanged(PropertyChangeEvent event) {
        this.firePartPropertyChange(event);
    }

    protected void refreshFromPart() {
        this.deferEvents(true);
        this.setPartName(this.computePartName());
        this.setTitle(this.computeTitle());
        this.setContentDescription(this.computeContentDescription());
        this.setToolTip(this.getRawToolTip());
        this.setImageDescriptor(this.computeImageDescriptor());
        this.deferEvents(false);
    }

    protected ImageDescriptor computeImageDescriptor() {
        if (this.part != null) {
            return ImageDescriptor.createFromImage((Image)this.part.getTitleImage(), (Device)Display.getCurrent());
        }
        return this.defaultImageDescriptor;
    }

    public void init(String id, String title, String tooltip, ImageDescriptor desc, String paneName, String contentDescription) {
        Assert.isNotNull((Object)id);
        Assert.isNotNull((Object)title);
        Assert.isNotNull((Object)tooltip);
        Assert.isNotNull((Object)desc);
        Assert.isNotNull((Object)paneName);
        Assert.isNotNull((Object)contentDescription);
        this.id = id;
        this.title = title;
        this.tooltip = tooltip;
        this.partName = paneName;
        this.contentDescription = contentDescription;
        this.defaultImageDescriptor = desc;
        this.imageDescriptor = this.computeImageDescriptor();
    }

    protected void releaseReferences() {
    }

    void addInternalPropertyListener(IPropertyListener listener) {
        this.internalPropChangeListeners.add((Object)listener);
    }

    void removeInternalPropertyListener(IPropertyListener listener) {
        this.internalPropChangeListeners.remove((Object)listener);
    }

    protected void fireInternalPropertyChange(int id) {
        Object[] listeners = this.internalPropChangeListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyListener)listeners[i]).propertyChanged(this, id);
            ++i;
        }
    }

    public void addPropertyListener(IPropertyListener listener) {
        if (this.isDisposed()) {
            return;
        }
        this.propChangeListeners.add((Object)listener);
    }

    public void removePropertyListener(IPropertyListener listener) {
        if (this.isDisposed()) {
            return;
        }
        this.propChangeListeners.remove((Object)listener);
    }

    public final String getId() {
        IWorkbenchPartSite site;
        if (this.part != null && (site = this.part.getSite()) != null) {
            return site.getId();
        }
        return Util.safeString(this.id);
    }

    public String getTitleToolTip() {
        return Util.safeString(this.tooltip);
    }

    protected final String getRawToolTip() {
        return Util.safeString(this.part.getTitleToolTip());
    }

    public String getPartName() {
        return Util.safeString(this.partName);
    }

    protected final String getRawPartName() {
        String result = "";
        if (this.part instanceof IWorkbenchPart2) {
            IWorkbenchPart2 part2 = (IWorkbenchPart2)this.part;
            result = Util.safeString(part2.getPartName());
        }
        return result;
    }

    protected String computePartName() {
        return this.getRawPartName();
    }

    public String getContentDescription() {
        return Util.safeString(this.contentDescription);
    }

    protected String computeContentDescription() {
        return this.getRawContentDescription();
    }

    protected final String getRawContentDescription() {
        if (this.part instanceof IWorkbenchPart2) {
            IWorkbenchPart2 part2 = (IWorkbenchPart2)this.part;
            return part2.getContentDescription();
        }
        return "";
    }

    public boolean isDirty() {
        if (!(this.part instanceof ISaveablePart)) {
            return false;
        }
        return ((ISaveablePart)((Object)this.part)).isDirty();
    }

    public String getTitle() {
        return Util.safeString(this.title);
    }

    protected String computeTitle() {
        return this.getRawTitle();
    }

    protected final String getRawTitle() {
        return Util.safeString(this.part.getTitle());
    }

    public final Image getTitleImage() {
        if (this.isDisposed()) {
            return PlatformUI.getWorkbench().getSharedImages().getImage("IMG_DEF_VIEW");
        }
        if (this.image == null) {
            this.image = JFaceResources.getResources().createImageWithDefault(this.imageDescriptor);
        }
        return this.image;
    }

    public ImageDescriptor getTitleImageDescriptor() {
        if (this.isDisposed()) {
            return PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_DEF_VIEW");
        }
        return this.imageDescriptor;
    }

    void fireVisibilityChange() {
        this.fireInternalPropertyChange(532);
    }

    void fireZoomChange() {
        this.fireInternalPropertyChange(533);
    }

    public boolean getVisible() {
        if (this.isDisposed()) {
            return false;
        }
        return this.getPane().getVisible();
    }

    public void setVisible(boolean isVisible) {
        if (this.isDisposed()) {
            return;
        }
        this.getPane().setVisible(isVisible);
    }

    protected void firePropertyChange(int id) {
        if (this.queueEvents) {
            this.queuedEvents.set(id);
            return;
        }
        this.immediateFirePropertyChange(id);
    }

    private void immediateFirePropertyChange(int id) {
        UIListenerLogging.logPartReferencePropertyChange(this, id);
        Object[] listeners = this.propChangeListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyListener)listeners[i]).propertyChanged(this.part, id);
            ++i;
        }
        this.fireInternalPropertyChange(id);
    }

    public final IWorkbenchPart getPart(boolean restore) {
        block11: {
            if (this.isDisposed()) {
                return null;
            }
            if (this.part == null && restore) {
                if (this.state == STATE_CREATION_IN_PROGRESS) {
                    IStatus result = WorkbenchPlugin.getStatus((Throwable)((Object)new PartInitException(NLS.bind((String)"Warning: Detected recursive attempt by part {0} to create itself (this is probably, but not necessarily, a bug)", (Object)this.getId()))));
                    WorkbenchPlugin.log(result);
                    return null;
                }
                try {
                    ISizeProvider sizeProvider;
                    this.state = STATE_CREATION_IN_PROGRESS;
                    IWorkbenchPart newPart = this.createPart();
                    if (newPart == null) break block11;
                    this.part = newPart;
                    this.getPane().getControl().addDisposeListener(this.prematureDisposeListener);
                    this.part.addPropertyListener(this.propertyChangeListener);
                    if (this.part instanceof IWorkbenchPart3) {
                        ((IWorkbenchPart3)this.part).addPartPropertyListener(this.partPropertyChangeListener);
                    }
                    this.refreshFromPart();
                    this.releaseReferences();
                    this.fireInternalPropertyChange(529);
                    Class<?> clazz = class$1;
                    if (clazz == null) {
                        try {
                            clazz = class$1 = Class.forName("org.eclipse.ui.ISizeProvider");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if ((sizeProvider = (ISizeProvider)Util.getAdapter(this.part, clazz)) != null && (sizeProvider.getSizeFlags(true) != 0 || sizeProvider.getSizeFlags(false) != 0)) {
                        this.fireInternalPropertyChange(771);
                    }
                }
                finally {
                    this.state = STATE_CREATED;
                }
            }
        }
        return this.part;
    }

    protected abstract IWorkbenchPart createPart();

    protected abstract PartPane createPane();

    public final PartPane getPane() {
        if (this.pane == null) {
            this.pane = this.createPane();
        }
        return this.pane;
    }

    public final void dispose() {
        if (this.isDisposed()) {
            return;
        }
        this.partName = this.getPartName();
        this.contentDescription = this.getContentDescription();
        this.tooltip = this.getTitleToolTip();
        this.title = this.getTitle();
        if (this.state == STATE_CREATION_IN_PROGRESS) {
            IStatus result = WorkbenchPlugin.getStatus((Throwable)((Object)new PartInitException(NLS.bind((String)"Warning: Blocked recursive attempt by part {0} to dispose itself during creation", (Object)this.getId()))));
            WorkbenchPlugin.log(result);
            return;
        }
        this.doDisposeNestedParts();
        if (this.pane != null) {
            Control targetControl = this.getPane().getControl();
            if (targetControl != null) {
                targetControl.removeDisposeListener(this.prematureDisposeListener);
            }
            this.pane.dispose();
        }
        this.doDisposePart();
        if (this.pane != null) {
            this.pane.removeContributions();
        }
        this.clearListenerList(this.internalPropChangeListeners);
        this.clearListenerList(this.partChangeListeners);
        Image oldImage = this.image;
        ImageDescriptor oldDescriptor = this.imageDescriptor;
        this.image = null;
        this.state = STATE_DISPOSED;
        this.imageDescriptor = ImageDescriptor.getMissingImageDescriptor();
        this.defaultImageDescriptor = ImageDescriptor.getMissingImageDescriptor();
        this.immediateFirePropertyChange(1);
        this.clearListenerList(this.propChangeListeners);
        if (oldImage != null) {
            JFaceResources.getResources().destroy((DeviceResourceDescriptor)oldDescriptor);
        }
    }

    protected void doDisposeNestedParts() {
    }

    private final void clearListenerList(ListenerList list) {
        Object[] listeners = list.getListeners();
        int i = 0;
        while (i < listeners.length) {
            list.remove(listeners[i]);
            ++i;
        }
    }

    protected void doDisposePart() {
        if (this.part != null) {
            this.fireInternalPropertyChange(530);
            try {
                this.part.removePropertyListener(this.propertyChangeListener);
                if (this.part instanceof IWorkbenchPart3) {
                    ((IWorkbenchPart3)this.part).removePartPropertyListener(this.partPropertyChangeListener);
                }
                this.part.dispose();
            }
            catch (Exception e) {
                WorkbenchPlugin.log(e);
            }
            this.part = null;
        }
    }

    public void setPinned(boolean newPinned) {
        if (this.isDisposed()) {
            return;
        }
        if (newPinned == this.pinned) {
            return;
        }
        this.pinned = newPinned;
        this.setImageDescriptor(this.computeImageDescriptor());
        this.fireInternalPropertyChange(531);
    }

    public boolean isPinned() {
        return this.pinned;
    }

    public String getPartProperty(String key) {
        if (this.part != null) {
            if (this.part instanceof IWorkbenchPart3) {
                return ((IWorkbenchPart3)this.part).getPartProperty(key);
            }
        } else {
            return (String)this.propertyCache.get(key);
        }
        return null;
    }

    public void addPartPropertyListener(IPropertyChangeListener listener) {
        if (this.isDisposed()) {
            return;
        }
        this.partChangeListeners.add((Object)listener);
    }

    public void removePartPropertyListener(IPropertyChangeListener listener) {
        if (this.isDisposed()) {
            return;
        }
        this.partChangeListeners.remove((Object)listener);
    }

    protected void firePartPropertyChange(PropertyChangeEvent event) {
        Object[] l = this.partChangeListeners.getListeners();
        int i = 0;
        while (i < l.length) {
            ((IPropertyChangeListener)l[i]).propertyChange(event);
            ++i;
        }
    }

    protected void createPartProperties(IWorkbenchPart3 workbenchPart) {
        Iterator i = this.propertyCache.entrySet().iterator();
        while (i.hasNext()) {
            Map.Entry e = i.next();
            workbenchPart.setPartProperty((String)e.getKey(), (String)e.getValue());
        }
    }

    public int computePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredResult) {
        ISizeProvider sizeProvider;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.ISizeProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((sizeProvider = (ISizeProvider)Util.getAdapter(this.part, clazz)) != null) {
            return sizeProvider.computePreferredSize(width, availableParallel, availablePerpendicular, preferredResult);
        }
        return preferredResult;
    }

    public int getSizeFlags(boolean width) {
        ISizeProvider sizeProvider;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.ISizeProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((sizeProvider = (ISizeProvider)Util.getAdapter(this.part, clazz)) != null) {
            return sizeProvider.getSizeFlags(width);
        }
        return 0;
    }
}

