/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleControlAdapter
 *  org.eclipse.swt.accessibility.AccessibleControlEvent
 *  org.eclipse.swt.accessibility.AccessibleControlListener
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 */
package org.eclipse.ui.dialogs;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleControlListener;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.ui.progress.WorkbenchJob;

public class FilteredTree
extends Composite {
    protected Text filterText;
    protected ToolBarManager filterToolBar;
    protected Control clearButtonControl;
    protected TreeViewer treeViewer;
    protected Composite filterComposite;
    private PatternFilter patternFilter;
    protected String initialText = "";
    private Job refreshJob;
    protected Composite parent;
    protected boolean showFilterControls;
    protected Composite treeComposite;
    private boolean useNewLook = false;
    private static final String CLEAR_ICON = "org.eclipse.ui.internal.dialogs.CLEAR_ICON";
    private static final String DISABLED_CLEAR_ICON = "org.eclipse.ui.internal.dialogs.DCLEAR_ICON";
    private static final long SOFT_MAX_EXPAND_TIME = 200L;
    private static Boolean useNativeSearchField;
    private String previousFilterText;
    private boolean narrowingDown;

    static {
        ImageDescriptor descriptor = AbstractUIPlugin.imageDescriptorFromPlugin("org.eclipse.ui", "$nl$/icons/full/etool16/clear_co.gif");
        if (descriptor != null) {
            JFaceResources.getImageRegistry().put(CLEAR_ICON, descriptor);
        }
        if ((descriptor = AbstractUIPlugin.imageDescriptorFromPlugin("org.eclipse.ui", "$nl$/icons/full/dtool16/clear_co.gif")) != null) {
            JFaceResources.getImageRegistry().put(DISABLED_CLEAR_ICON, descriptor);
        }
    }

    public FilteredTree(Composite parent, int treeStyle, PatternFilter filter) {
        super(parent, 0);
        this.parent = parent;
        this.init(treeStyle, filter);
    }

    public FilteredTree(Composite parent, int treeStyle, PatternFilter filter, boolean useNewLook) {
        super(parent, 0);
        this.parent = parent;
        this.useNewLook = useNewLook;
        this.init(treeStyle, filter);
    }

    protected FilteredTree(Composite parent) {
        super(parent, 0);
        this.parent = parent;
    }

    protected FilteredTree(Composite parent, boolean useNewLook) {
        super(parent, 0);
        this.parent = parent;
        this.useNewLook = useNewLook;
    }

    protected void init(int treeStyle, PatternFilter filter) {
        this.patternFilter = filter;
        this.showFilterControls = PlatformUI.getPreferenceStore().getBoolean("SHOW_FILTERED_TEXTS");
        this.createControl(this.parent, treeStyle);
        this.createRefreshJob();
        this.setInitialText(WorkbenchMessages.FilteredTree_FilterMessage);
        this.setFont(this.parent.getFont());
    }

    protected void createControl(Composite parent, int treeStyle) {
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.setLayout((Layout)layout);
        this.setLayoutData(new GridData(4, 4, true, true));
        if (this.showFilterControls) {
            if (!this.useNewLook || FilteredTree.useNativeSearchField(parent)) {
                this.filterComposite = new Composite((Composite)this, 0);
            } else {
                this.filterComposite = new Composite((Composite)this, 2048);
                this.filterComposite.setBackground(this.getDisplay().getSystemColor(25));
            }
            GridLayout filterLayout = new GridLayout(2, false);
            filterLayout.marginHeight = 0;
            filterLayout.marginWidth = 0;
            this.filterComposite.setLayout((Layout)filterLayout);
            this.filterComposite.setFont(parent.getFont());
            this.createFilterControls(this.filterComposite);
            this.filterComposite.setLayoutData((Object)new GridData(4, 1, true, false));
        }
        this.treeComposite = new Composite((Composite)this, 0);
        GridLayout treeCompositeLayout = new GridLayout();
        treeCompositeLayout.marginHeight = 0;
        treeCompositeLayout.marginWidth = 0;
        this.treeComposite.setLayout((Layout)treeCompositeLayout);
        GridData data = new GridData(4, 4, true, true);
        this.treeComposite.setLayoutData((Object)data);
        this.createTreeControl(this.treeComposite, treeStyle);
    }

    private static boolean useNativeSearchField(Composite composite) {
        if (useNativeSearchField == null) {
            useNativeSearchField = Boolean.FALSE;
            Text testText = null;
            try {
                testText = new Text(composite, 384);
                useNativeSearchField = new Boolean((testText.getStyle() & 0x100) != 0);
            }
            finally {
                if (testText != null) {
                    testText.dispose();
                }
            }
        }
        return useNativeSearchField;
    }

    protected Composite createFilterControls(Composite parent) {
        this.createFilterText(parent);
        if (this.useNewLook) {
            this.createClearTextNew(parent);
        } else {
            this.createClearTextOld(parent);
        }
        if (this.clearButtonControl != null) {
            this.clearButtonControl.setVisible(false);
        }
        if (this.filterToolBar != null) {
            this.filterToolBar.update(false);
            this.filterToolBar.getControl().setVisible(false);
        }
        return parent;
    }

    protected Control createTreeControl(Composite parent, int style) {
        this.treeViewer = this.doCreateTreeViewer(parent, style);
        GridData data = new GridData(4, 4, true, true);
        this.treeViewer.getControl().setLayoutData((Object)data);
        this.treeViewer.getControl().addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                FilteredTree.this.refreshJob.cancel();
            }
        });
        if (this.treeViewer instanceof NotifyingTreeViewer) {
            this.patternFilter.setUseCache(true);
        }
        this.treeViewer.addFilter((ViewerFilter)this.patternFilter);
        return this.treeViewer.getControl();
    }

    protected TreeViewer doCreateTreeViewer(Composite parent, int style) {
        return new NotifyingTreeViewer(parent, style);
    }

    private TreeItem getFirstMatchingItem(TreeItem[] items) {
        int i = 0;
        while (i < items.length) {
            if (this.patternFilter.isLeafMatch((Viewer)this.treeViewer, items[i].getData()) && this.patternFilter.isElementSelectable(items[i].getData())) {
                return items[i];
            }
            TreeItem treeItem = this.getFirstMatchingItem(items[i].getItems());
            if (treeItem != null) {
                return treeItem;
            }
            ++i;
        }
        return null;
    }

    private void createRefreshJob() {
        this.refreshJob = this.doCreateRefreshJob();
        this.refreshJob.setSystem(true);
    }

    protected WorkbenchJob doCreateRefreshJob() {
        return new WorkbenchJob("Refresh Filter"){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                boolean initial;
                if (FilteredTree.this.treeViewer.getControl().isDisposed()) {
                    return Status.CANCEL_STATUS;
                }
                String text = FilteredTree.this.getFilterString();
                if (text == null) {
                    return Status.OK_STATUS;
                }
                boolean bl = initial = FilteredTree.this.initialText != null && FilteredTree.this.initialText.equals(text);
                if (initial) {
                    FilteredTree.this.patternFilter.setPattern(null);
                } else if (text != null) {
                    FilteredTree.this.patternFilter.setPattern(text);
                }
                Composite redrawFalseControl = FilteredTree.this.treeComposite != null ? FilteredTree.this.treeComposite : FilteredTree.this.treeViewer.getControl();
                try {
                    redrawFalseControl.setRedraw(false);
                    if (!FilteredTree.this.narrowingDown) {
                        TreeItem[] is = FilteredTree.this.treeViewer.getTree().getItems();
                        int i = 0;
                        while (i < is.length) {
                            TreeItem item = is[i];
                            if (item.getExpanded()) {
                                FilteredTree.this.treeViewer.setExpandedState(item.getData(), false);
                            }
                            ++i;
                        }
                    }
                    FilteredTree.this.treeViewer.refresh(true);
                    if (text.length() > 0 && !initial) {
                        TreeItem[] items = FilteredTree.this.getViewer().getTree().getItems();
                        int treeHeight = FilteredTree.this.getViewer().getTree().getBounds().height;
                        int numVisibleItems = treeHeight / FilteredTree.this.getViewer().getTree().getItemHeight();
                        long stopTime = 200L + System.currentTimeMillis();
                        boolean cancel = false;
                        if (items.length > 0 && this.recursiveExpand(items, monitor, stopTime, new int[]{numVisibleItems})) {
                            cancel = true;
                        }
                        FilteredTree.this.updateToolbar(true);
                        if (cancel) {
                            IStatus iStatus = Status.CANCEL_STATUS;
                            return iStatus;
                        }
                    } else {
                        FilteredTree.this.updateToolbar(false);
                    }
                }
                finally {
                    TreeItem[] items = FilteredTree.this.getViewer().getTree().getItems();
                    if (items.length > 0 && FilteredTree.this.getViewer().getTree().getSelectionCount() == 0) {
                        FilteredTree.this.treeViewer.getTree().setTopItem(items[0]);
                    }
                    redrawFalseControl.setRedraw(true);
                }
                return Status.OK_STATUS;
            }

            private boolean recursiveExpand(TreeItem[] items, IProgressMonitor monitor, long cancelTime, int[] numItemsLeft) {
                boolean canceled = false;
                int i = 0;
                while (!canceled && i < items.length) {
                    boolean visible;
                    TreeItem item = items[i];
                    int n = numItemsLeft[0];
                    numItemsLeft[0] = n - 1;
                    boolean bl = visible = n >= 0;
                    if (monitor.isCanceled() || !visible && System.currentTimeMillis() > cancelTime) {
                        canceled = true;
                    } else {
                        Object itemData = item.getData();
                        if (itemData != null) {
                            if (!item.getExpanded()) {
                                FilteredTree.this.treeViewer.setExpandedState(itemData, true);
                            }
                            TreeItem[] children = item.getItems();
                            if (items.length > 0) {
                                canceled = this.recursiveExpand(children, monitor, cancelTime, numItemsLeft);
                            }
                        }
                    }
                    ++i;
                }
                return canceled;
            }
        };
    }

    protected void updateToolbar(boolean visible) {
        if (this.clearButtonControl != null) {
            this.clearButtonControl.setVisible(visible);
        }
        if (this.filterToolBar != null) {
            this.filterToolBar.getControl().setVisible(visible);
        }
    }

    protected void createFilterText(Composite parent) {
        this.filterText = this.doCreateFilterText(parent);
        this.filterText.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                String filterTextString = FilteredTree.this.filterText.getText();
                e.result = filterTextString.length() == 0 || filterTextString.equals(FilteredTree.this.initialText) ? FilteredTree.this.initialText : NLS.bind((String)WorkbenchMessages.FilteredTree_AccessibleListenerFiltered, (Object[])new String[]{filterTextString, String.valueOf(this.getFilteredItemsCount())});
            }

            private int getFilteredItemsCount() {
                int total = 0;
                TreeItem[] items = FilteredTree.this.getViewer().getTree().getItems();
                int i = 0;
                while (i < items.length) {
                    total += this.itemCount(items[i]);
                    ++i;
                }
                return total;
            }

            private int itemCount(TreeItem treeItem) {
                int count = 1;
                TreeItem[] children = treeItem.getItems();
                int i = 0;
                while (i < children.length) {
                    count += this.itemCount(children[i]);
                    ++i;
                }
                return count;
            }
        });
        this.filterText.addFocusListener((FocusListener)new FocusAdapter(){

            public void focusGained(FocusEvent e) {
                if (!FilteredTree.this.useNewLook) {
                    Display display = FilteredTree.this.filterText.getDisplay();
                    display.asyncExec(new Runnable(this){
                        final /* synthetic */ 4 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void run() {
                            if (!4.access$0(this.this$1).filterText.isDisposed() && 4.access$0(this.this$1).getInitialText().equals(4.access$0(this.this$1).filterText.getText().trim())) {
                                4.access$0(this.this$1).filterText.selectAll();
                            }
                        }
                    });
                    return;
                }
            }

            public void focusLost(FocusEvent e) {
                if (!FilteredTree.this.useNewLook) {
                    return;
                }
                if (FilteredTree.this.filterText.getText().equals(FilteredTree.this.initialText)) {
                    FilteredTree.this.setFilterText("");
                    FilteredTree.this.textChanged();
                }
            }

            static /* synthetic */ FilteredTree access$0(4 var0) {
                return var0.FilteredTree.this;
            }
        });
        if (this.useNewLook) {
            this.filterText.addMouseListener((MouseListener)new MouseAdapter(){

                public void mouseDown(MouseEvent e) {
                    if (FilteredTree.this.filterText.getText().equals(FilteredTree.this.initialText)) {
                        FilteredTree.this.setFilterText("");
                        FilteredTree.this.textChanged();
                    }
                }
            });
        }
        this.filterText.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyPressed(KeyEvent e) {
                boolean hasItems;
                boolean bl = hasItems = FilteredTree.this.getViewer().getTree().getItemCount() > 0;
                if (hasItems && e.keyCode == 0x1000002) {
                    FilteredTree.this.treeViewer.getTree().setFocus();
                    return;
                }
            }
        });
        this.filterText.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                if (e.detail == 4) {
                    e.doit = false;
                    if (FilteredTree.this.getViewer().getTree().getItemCount() == 0) {
                        Display.getCurrent().beep();
                    } else {
                        Tree tree;
                        TreeItem item;
                        boolean textChanged;
                        boolean hasFocus = FilteredTree.this.getViewer().getTree().setFocus();
                        boolean bl = textChanged = !FilteredTree.this.getInitialText().equals(FilteredTree.this.filterText.getText().trim());
                        if (hasFocus && textChanged && FilteredTree.this.filterText.getText().trim().length() > 0 && (item = (tree = FilteredTree.this.getViewer().getTree()).getSelectionCount() > 0 ? FilteredTree.this.getFirstMatchingItem(tree.getSelection()) : FilteredTree.this.getFirstMatchingItem(tree.getItems())) != null) {
                            tree.setSelection(new TreeItem[]{item});
                            ISelection sel = FilteredTree.this.getViewer().getSelection();
                            FilteredTree.this.getViewer().setSelection(sel, true);
                        }
                    }
                }
            }
        });
        this.filterText.addModifyListener(new ModifyListener(){

            public void modifyText(ModifyEvent e) {
                FilteredTree.this.textChanged();
            }
        });
        if ((this.filterText.getStyle() & 0x100) != 0) {
            this.filterText.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetDefaultSelected(SelectionEvent e) {
                    if (e.detail == 256) {
                        FilteredTree.this.clearText();
                    }
                }
            });
        }
        GridData gridData = new GridData(4, 0x1000000, true, false);
        if ((this.filterText.getStyle() & 0x100) != 0) {
            gridData.horizontalSpan = 2;
        }
        this.filterText.setLayoutData((Object)gridData);
    }

    protected Text doCreateFilterText(Composite parent) {
        if (!this.useNewLook || FilteredTree.useNativeSearchField(parent)) {
            return new Text(parent, 2436);
        }
        return new Text(parent, 4);
    }

    protected void textChanged() {
        this.narrowingDown = this.previousFilterText == null || this.previousFilterText.equals(WorkbenchMessages.FilteredTree_FilterMessage) || this.getFilterString().startsWith(this.previousFilterText);
        this.previousFilterText = this.getFilterString();
        this.refreshJob.cancel();
        this.refreshJob.schedule(this.getRefreshJobDelay());
    }

    protected long getRefreshJobDelay() {
        return 200L;
    }

    public void setBackground(Color background) {
        super.setBackground(background);
        if (this.filterComposite != null && (!this.useNewLook || FilteredTree.useNativeSearchField(this.filterComposite))) {
            this.filterComposite.setBackground(background);
        }
        if (this.filterToolBar != null && this.filterToolBar.getControl() != null) {
            this.filterToolBar.getControl().setBackground(background);
        }
    }

    private void createClearTextOld(Composite parent) {
        if ((this.filterText.getStyle() & 0x100) == 0) {
            this.filterToolBar = new ToolBarManager(0x800100);
            this.filterToolBar.createControl(parent);
            Action clearTextAction = new Action("", 1){

                public void run() {
                    FilteredTree.this.clearText();
                }
            };
            clearTextAction.setToolTipText(WorkbenchMessages.FilteredTree_ClearToolTip);
            clearTextAction.setImageDescriptor(JFaceResources.getImageRegistry().getDescriptor(CLEAR_ICON));
            clearTextAction.setDisabledImageDescriptor(JFaceResources.getImageRegistry().getDescriptor(DISABLED_CLEAR_ICON));
            this.filterToolBar.add((IAction)clearTextAction);
        }
    }

    private void createClearTextNew(Composite parent) {
        if ((this.filterText.getStyle() & 0x100) == 0) {
            final Image inactiveImage = JFaceResources.getImageRegistry().getDescriptor(DISABLED_CLEAR_ICON).createImage();
            final Image activeImage = JFaceResources.getImageRegistry().getDescriptor(CLEAR_ICON).createImage();
            final Image pressedImage = new Image((Device)this.getDisplay(), activeImage, 2);
            final Label clearButton = new Label(parent, 0);
            clearButton.setLayoutData((Object)new GridData(1, 0x1000000, false, false));
            clearButton.setImage(inactiveImage);
            clearButton.setBackground(parent.getDisplay().getSystemColor(25));
            clearButton.setToolTipText(WorkbenchMessages.FilteredTree_ClearToolTip);
            clearButton.addMouseListener((MouseListener)new MouseAdapter(){
                private MouseMoveListener fMoveListener;

                public void mouseDown(MouseEvent e) {
                    clearButton.setImage(pressedImage);
                    this.fMoveListener = new MouseMoveListener(this, clearButton, pressedImage, inactiveImage){
                        private boolean fMouseInButton;
                        final /* synthetic */ 12 this$1;
                        private final /* synthetic */ Label val$clearButton;
                        private final /* synthetic */ Image val$pressedImage;
                        private final /* synthetic */ Image val$inactiveImage;
                        {
                            this.this$1 = var1_1;
                            this.val$clearButton = label;
                            this.val$pressedImage = image;
                            this.val$inactiveImage = image2;
                            this.fMouseInButton = true;
                        }

                        public void mouseMove(MouseEvent e) {
                            boolean mouseInButton = 12.access$0(this.this$1, e);
                            if (mouseInButton != this.fMouseInButton) {
                                this.fMouseInButton = mouseInButton;
                                this.val$clearButton.setImage(mouseInButton ? this.val$pressedImage : this.val$inactiveImage);
                            }
                        }
                    };
                    clearButton.addMouseMoveListener(this.fMoveListener);
                }

                public void mouseUp(MouseEvent e) {
                    if (this.fMoveListener != null) {
                        clearButton.removeMouseMoveListener(this.fMoveListener);
                        this.fMoveListener = null;
                        boolean mouseInButton = this.isMouseInButton(e);
                        clearButton.setImage(mouseInButton ? activeImage : inactiveImage);
                        if (mouseInButton) {
                            FilteredTree.this.clearText();
                            FilteredTree.this.filterText.setFocus();
                        }
                    }
                }

                private boolean isMouseInButton(MouseEvent e) {
                    Point buttonSize = clearButton.getSize();
                    return e.x >= 0 && e.x < buttonSize.x && e.y >= 0 && e.y < buttonSize.y;
                }

                static /* synthetic */ boolean access$0(12 var0, MouseEvent mouseEvent) {
                    return var0.isMouseInButton(mouseEvent);
                }
            });
            clearButton.addMouseTrackListener(new MouseTrackListener(){

                public void mouseEnter(MouseEvent e) {
                    clearButton.setImage(activeImage);
                }

                public void mouseExit(MouseEvent e) {
                    clearButton.setImage(inactiveImage);
                }

                public void mouseHover(MouseEvent e) {
                }
            });
            clearButton.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    inactiveImage.dispose();
                    activeImage.dispose();
                    pressedImage.dispose();
                }
            });
            clearButton.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

                public void getName(AccessibleEvent e) {
                    e.result = WorkbenchMessages.FilteredTree_AccessibleListenerClearButton;
                }
            });
            clearButton.getAccessible().addAccessibleControlListener((AccessibleControlListener)new AccessibleControlAdapter(){

                public void getRole(AccessibleControlEvent e) {
                    e.detail = 43;
                }
            });
            this.clearButtonControl = clearButton;
        }
    }

    protected void clearText() {
        this.setFilterText("");
        this.textChanged();
    }

    protected void setFilterText(String string) {
        if (this.filterText != null) {
            this.filterText.setText(string);
            this.selectAll();
        }
    }

    public final PatternFilter getPatternFilter() {
        return this.patternFilter;
    }

    public TreeViewer getViewer() {
        return this.treeViewer;
    }

    public Text getFilterControl() {
        return this.filterText;
    }

    protected String getFilterString() {
        return this.filterText != null ? this.filterText.getText() : null;
    }

    public void setInitialText(String text) {
        this.initialText = text;
        if (this.useNewLook && this.filterText != null) {
            this.filterText.setMessage(text);
            if (this.filterText.isFocusControl()) {
                this.setFilterText(this.initialText);
                this.textChanged();
            } else {
                this.getDisplay().asyncExec(new Runnable(){

                    public void run() {
                        if (!FilteredTree.this.filterText.isDisposed() && FilteredTree.this.filterText.isFocusControl()) {
                            FilteredTree.this.setFilterText(FilteredTree.this.initialText);
                            FilteredTree.this.textChanged();
                        }
                    }
                });
            }
        } else {
            this.setFilterText(this.initialText);
            this.textChanged();
        }
    }

    protected void selectAll() {
        if (this.filterText != null) {
            this.filterText.selectAll();
        }
    }

    protected String getInitialText() {
        return this.initialText;
    }

    public static Font getBoldFont(Object element, FilteredTree tree, PatternFilter filter) {
        String filterText = tree.getFilterString();
        if (filterText == null) {
            return null;
        }
        String initialText = tree.getInitialText();
        if (!filterText.equals("") && !filterText.equals(initialText)) {
            if (tree.getPatternFilter() != filter) {
                boolean initial;
                boolean bl = initial = initialText != null && initialText.equals(filterText);
                if (initial) {
                    filter.setPattern(null);
                } else if (filterText != null) {
                    filter.setPattern(filterText);
                }
            }
            if (filter.isElementVisible((Viewer)tree.getViewer(), element) && filter.isLeafMatch((Viewer)tree.getViewer(), element)) {
                return JFaceResources.getFontRegistry().getBold("org.eclipse.jface.dialogfont");
            }
        }
        return null;
    }

    class NotifyingTreeViewer
    extends TreeViewer {
        public NotifyingTreeViewer(Composite parent, int style) {
            super(parent, style);
        }

        public void add(Object parentElementOrTreePath, Object childElement) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.add(parentElementOrTreePath, childElement);
        }

        public void add(Object parentElementOrTreePath, Object[] childElements) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.add(parentElementOrTreePath, childElements);
        }

        protected void inputChanged(Object input, Object oldInput) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.inputChanged(input, oldInput);
        }

        public void insert(Object parentElementOrTreePath, Object element, int position) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.insert(parentElementOrTreePath, element, position);
        }

        public void refresh() {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.refresh();
        }

        public void refresh(boolean updateLabels) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.refresh(updateLabels);
        }

        public void refresh(Object element) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.refresh(element);
        }

        public void refresh(Object element, boolean updateLabels) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.refresh(element, updateLabels);
        }

        public void remove(Object elementsOrTreePaths) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.remove(elementsOrTreePaths);
        }

        public void remove(Object parent, Object[] elements) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.remove(parent, elements);
        }

        public void remove(Object[] elementsOrTreePaths) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.remove(elementsOrTreePaths);
        }

        public void replace(Object parentElementOrTreePath, int index, Object element) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.replace(parentElementOrTreePath, index, element);
        }

        public void setChildCount(Object elementOrTreePath, int count) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.setChildCount(elementOrTreePath, count);
        }

        public void setContentProvider(IContentProvider provider) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.setContentProvider(provider);
        }

        public void setHasChildren(Object elementOrTreePath, boolean hasChildren) {
            FilteredTree.this.getPatternFilter().clearCaches();
            super.setHasChildren(elementOrTreePath, hasChildren);
        }
    }
}

