/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.PopupDialog
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.ITreeSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.PopupDialog;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.ITreeSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.CapabilityFilter;
import org.eclipse.ui.internal.dialogs.ViewComparator;
import org.eclipse.ui.internal.dialogs.ViewContentProvider;
import org.eclipse.ui.internal.dialogs.ViewLabelProvider;
import org.eclipse.ui.internal.dialogs.ViewPatternFilter;
import org.eclipse.ui.internal.registry.ViewRegistry;
import org.eclipse.ui.views.IViewCategory;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class ShowViewDialog
extends Dialog
implements ISelectionChangedListener,
IDoubleClickListener {
    private static final String DIALOG_SETTING_SECTION_NAME = "ShowViewDialog";
    private static final int LIST_HEIGHT = 300;
    private static final int LIST_WIDTH = 250;
    private static final String STORE_EXPANDED_CATEGORIES_ID = "ShowViewDialog.STORE_EXPANDED_CATEGORIES_ID";
    private static final String STORE_SELECTED_VIEW_ID = "ShowViewDialog.STORE_SELECTED_VIEW_ID";
    private FilteredTree filteredTree;
    private Button okButton;
    private IViewDescriptor[] viewDescs = new IViewDescriptor[0];
    private IViewRegistry viewReg;
    private IWorkbenchWindow window;
    private Color dimmedForeground;
    private Label descriptionHint;

    public ShowViewDialog(IWorkbenchWindow window, IViewRegistry viewReg) {
        super(window.getShell());
        this.window = window;
        this.viewReg = viewReg;
    }

    protected void buttonPressed(int buttonId) {
        if (buttonId == 0) {
            this.saveWidgetValues();
        }
        super.buttonPressed(buttonId);
    }

    protected void cancelPressed() {
        this.viewDescs = new IViewDescriptor[0];
        super.cancelPressed();
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        shell.setText(WorkbenchMessages.ShowView_shellTitle);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.show_view_dialog_context");
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.okButton = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
        this.updateButtons();
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        composite.setFont(parent.getFont());
        this.createFilteredTreeViewer(composite);
        this.layoutTopControl((Control)this.filteredTree);
        this.descriptionHint = new Label(composite, 64);
        this.descriptionHint.setText(WorkbenchMessages.ShowView_selectViewHelp);
        this.descriptionHint.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        this.descriptionHint.setVisible(false);
        this.restoreWidgetValues();
        ShowViewDialog.applyDialogFont((Control)composite);
        return composite;
    }

    private static RGB blend(RGB c1, RGB c2, int ratio) {
        int r = ShowViewDialog.blend(c1.red, c2.red, ratio);
        int g = ShowViewDialog.blend(c1.green, c2.green, ratio);
        int b = ShowViewDialog.blend(c1.blue, c2.blue, ratio);
        return new RGB(r, g, b);
    }

    private static int blend(int v1, int v2, int ratio) {
        int b = (ratio * v1 + (100 - ratio) * v2) / 100;
        return Math.min(255, b);
    }

    private void createFilteredTreeViewer(Composite parent) {
        Text filterText;
        ViewPatternFilter filter = new ViewPatternFilter();
        int styleBits = 2818;
        this.filteredTree = new FilteredTree(parent, styleBits, filter, true);
        this.filteredTree.setBackground(parent.getDisplay().getSystemColor(22));
        TreeViewer treeViewer = this.filteredTree.getViewer();
        Control treeControl = treeViewer.getControl();
        RGB dimmedRGB = ShowViewDialog.blend(treeControl.getForeground().getRGB(), treeControl.getBackground().getRGB(), 60);
        this.dimmedForeground = new Color((Device)treeControl.getDisplay(), dimmedRGB);
        treeControl.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                ShowViewDialog.this.dimmedForeground.dispose();
            }
        });
        treeViewer.setLabelProvider((IBaseLabelProvider)new ViewLabelProvider(this.window, this.dimmedForeground));
        treeViewer.setContentProvider((IContentProvider)new ViewContentProvider());
        treeViewer.setComparator((ViewerComparator)new ViewComparator((ViewRegistry)this.viewReg));
        treeViewer.setInput((Object)this.viewReg);
        treeViewer.addSelectionChangedListener((ISelectionChangedListener)this);
        treeViewer.addDoubleClickListener((IDoubleClickListener)this);
        treeViewer.addFilter((ViewerFilter)new CapabilityFilter());
        treeViewer.getControl().addKeyListener((KeyListener)new KeyAdapter(){

            public void keyPressed(KeyEvent e) {
                ShowViewDialog.this.handleTreeViewerKeyPressed(e);
            }
        });
        if (this.hasAtMostOneView(this.filteredTree.getViewer()) && (filterText = this.filteredTree.getFilterControl()) != null) {
            filterText.setEnabled(false);
        }
    }

    private boolean hasAtMostOneView(TreeViewer tree) {
        ITreeContentProvider contentProvider = (ITreeContentProvider)tree.getContentProvider();
        Object[] children = contentProvider.getElements(tree.getInput());
        if (children.length <= 1) {
            if (children.length == 0) {
                return true;
            }
            return !contentProvider.hasChildren(children[0]);
        }
        return false;
    }

    public void doubleClick(DoubleClickEvent event) {
        IStructuredSelection s = (IStructuredSelection)event.getSelection();
        Object element = s.getFirstElement();
        if (this.filteredTree.getViewer().isExpandable(element)) {
            this.filteredTree.getViewer().setExpandedState(element, !this.filteredTree.getViewer().getExpandedState(element));
        } else if (this.viewDescs.length > 0) {
            this.saveWidgetValues();
            this.setReturnCode(0);
            this.close();
        }
    }

    protected IDialogSettings getDialogSettings() {
        IDialogSettings workbenchSettings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings section = workbenchSettings.getSection(DIALOG_SETTING_SECTION_NAME);
        if (section == null) {
            section = workbenchSettings.addNewSection(DIALOG_SETTING_SECTION_NAME);
        }
        return section;
    }

    public IViewDescriptor[] getSelection() {
        return this.viewDescs;
    }

    private void layoutTopControl(Control control) {
        GridData spec = new GridData(1808);
        spec.widthHint = 250;
        spec.heightHint = 300;
        control.setLayoutData((Object)spec);
    }

    protected void restoreWidgetValues() {
        IViewDescriptor viewDesc;
        String selectedViewId;
        IDialogSettings settings = this.getDialogSettings();
        String[] expandedCategoryIds = settings.getArray(STORE_EXPANDED_CATEGORIES_ID);
        if (expandedCategoryIds == null) {
            return;
        }
        ViewRegistry reg = (ViewRegistry)this.viewReg;
        ArrayList<IViewCategory> categoriesToExpand = new ArrayList<IViewCategory>(expandedCategoryIds.length);
        int i = 0;
        while (i < expandedCategoryIds.length) {
            IViewCategory category = reg.findCategory(expandedCategoryIds[i]);
            if (category != null) {
                categoriesToExpand.add(category);
            }
            ++i;
        }
        if (!categoriesToExpand.isEmpty()) {
            this.filteredTree.getViewer().setExpandedElements(categoriesToExpand.toArray());
        }
        if ((selectedViewId = settings.get(STORE_SELECTED_VIEW_ID)) != null && (viewDesc = reg.find(selectedViewId)) != null) {
            this.filteredTree.getViewer().setSelection((ISelection)new StructuredSelection((Object)viewDesc), true);
        }
    }

    protected void saveWidgetValues() {
        IDialogSettings settings = this.getDialogSettings();
        Object[] expandedElements = this.filteredTree.getViewer().getExpandedElements();
        String[] expandedCategoryIds = new String[expandedElements.length];
        int i = 0;
        while (i < expandedElements.length) {
            expandedCategoryIds[i] = ((IViewCategory)expandedElements[i]).getId();
            ++i;
        }
        settings.put(STORE_EXPANDED_CATEGORIES_ID, expandedCategoryIds);
        String selectedViewId = "";
        if (this.viewDescs.length > 0) {
            selectedViewId = this.viewDescs[0].getId();
        }
        settings.put(STORE_SELECTED_VIEW_ID, selectedViewId);
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.updateSelection(event);
        this.updateButtons();
        this.descriptionHint.setVisible(this.viewDescs.length == 1 && this.viewDescs[0].getDescription().length() > 0);
    }

    protected void updateButtons() {
        if (this.okButton != null) {
            this.okButton.setEnabled(this.getSelection().length > 0);
        }
    }

    protected void updateSelection(SelectionChangedEvent event) {
        ArrayList descs = new ArrayList();
        IStructuredSelection sel = (IStructuredSelection)event.getSelection();
        Iterator i = sel.iterator();
        while (i.hasNext()) {
            Object o = i.next();
            if (!(o instanceof IViewDescriptor)) continue;
            descs.add(o);
        }
        this.viewDescs = new IViewDescriptor[descs.size()];
        descs.toArray(this.viewDescs);
    }

    protected IDialogSettings getDialogBoundsSettings() {
        return this.getDialogSettings();
    }

    void handleTreeViewerKeyPressed(KeyEvent event) {
        Object o;
        ITreeSelection selection;
        if (this.descriptionHint.isVisible() && event.keyCode == 0x100000B && event.stateMask == 0 && (selection = (ITreeSelection)this.filteredTree.getViewer().getSelection()).size() == 1 && (o = selection.getFirstElement()) instanceof IViewDescriptor) {
            String description = ((IViewDescriptor)o).getDescription();
            if (description.length() == 0) {
                description = WorkbenchMessages.ShowView_noDesc;
            }
            this.popUp(description);
        }
    }

    private void popUp(final String description) {
        new PopupDialog(this.filteredTree.getShell(), 540676, true, false, false, false, false, null, null){
            private static final int CURSOR_SIZE = 15;

            protected Point getInitialLocation(Point initialSize) {
                Display display = this.getShell().getDisplay();
                Point location = display.getCursorLocation();
                location.x += 15;
                location.y += 15;
                return location;
            }

            protected Control createDialogArea(Composite parent) {
                Label label = new Label(parent, 64);
                label.setText(description);
                label.addFocusListener((FocusListener)new FocusAdapter(this){
                    final /* synthetic */ 3 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void focusLost(FocusEvent event) {
                        this.this$1.close();
                    }
                });
                GridData gd = new GridData(1809);
                gd.horizontalIndent = 1;
                gd.verticalIndent = 1;
                label.setLayoutData((Object)gd);
                return label;
            }
        }.open();
    }

    protected boolean isResizable() {
        return true;
    }
}

