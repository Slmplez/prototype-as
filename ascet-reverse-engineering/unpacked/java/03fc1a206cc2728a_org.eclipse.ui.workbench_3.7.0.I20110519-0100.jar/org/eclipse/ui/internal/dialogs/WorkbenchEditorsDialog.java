/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.osgi.util.TextProcessor
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.internal.dialogs;

import com.ibm.icu.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.osgi.util.TextProcessor;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.SelectionDialog;
import org.eclipse.ui.internal.EditorManager;
import org.eclipse.ui.internal.SaveablesList;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.layout.CellData;
import org.eclipse.ui.internal.layout.CellLayout;
import org.eclipse.ui.internal.layout.Row;

public class WorkbenchEditorsDialog
extends SelectionDialog {
    private IWorkbenchWindow window;
    private Table editorsTable;
    private Button saveSelected;
    private Button closeSelected;
    private Button selectClean;
    private Button invertSelection;
    private Button allSelection;
    private boolean showAllPersp = false;
    private int sortColumn;
    private List elements = new ArrayList();
    private HashMap imageCache = new HashMap(11);
    private HashMap disabledImageCache = new HashMap(11);
    private boolean reverse = false;
    private Collator collator = Collator.getInstance();
    private Rectangle bounds;
    private int[] columnsWidth;
    private static final String SORT = "sort";
    private static final String ALLPERSP = "allPersp";
    private static final String BOUNDS = "bounds";
    private static final String COLUMNS = "columns";
    private SelectionListener headerListener = new SelectionAdapter(){

        public void widgetSelected(SelectionEvent e) {
            TableColumn column = (TableColumn)e.widget;
            int index = WorkbenchEditorsDialog.this.editorsTable.indexOf(column);
            if (index == WorkbenchEditorsDialog.this.sortColumn) {
                WorkbenchEditorsDialog.this.reverse = !WorkbenchEditorsDialog.this.reverse;
            } else {
                WorkbenchEditorsDialog.this.sortColumn = index;
            }
            WorkbenchEditorsDialog.this.editorsTable.setSortDirection(WorkbenchEditorsDialog.this.reverse ? 1024 : 128);
            WorkbenchEditorsDialog.this.editorsTable.setSortColumn(column);
            WorkbenchEditorsDialog.this.updateItems();
        }
    };
    static /* synthetic */ Class class$0;

    public WorkbenchEditorsDialog(IWorkbenchWindow window) {
        super(window.getShell());
        this.window = window;
        this.setTitle(WorkbenchMessages.WorkbenchEditorsDialog_title);
        IDialogSettings s = this.getDialogSettings();
        if (s.get(ALLPERSP) == null) {
            this.sortColumn = 0;
        } else {
            this.showAllPersp = s.getBoolean(ALLPERSP);
            this.sortColumn = s.getInt(SORT);
            String[] array = s.getArray(BOUNDS);
            if (array != null) {
                this.bounds = new Rectangle(0, 0, 0, 0);
                this.bounds.x = new Integer(array[0]);
                this.bounds.y = new Integer(array[1]);
                this.bounds.width = new Integer(array[2]);
                this.bounds.height = new Integer(array[3]);
            }
            if ((array = s.getArray(COLUMNS)) != null) {
                this.columnsWidth = new int[array.length];
                int i = 0;
                while (i < this.columnsWidth.length) {
                    this.columnsWidth[i] = new Integer(array[i]);
                    ++i;
                }
            }
        }
        this.setShellStyle(this.getShellStyle() | 0x10000000);
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)newShell, "org.eclipse.ui.workbench_editors_dialog");
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
        Button button = this.getButton(1);
        if (button != null) {
            button.setText(WorkbenchMessages.WorkbenchEditorsDialog_close);
        }
    }

    protected void initializeBounds() {
        if (this.bounds != null) {
            this.getShell().setBounds(this.bounds);
        } else {
            super.initializeBounds();
        }
    }

    protected Control createDialogArea(Composite parent) {
        this.initializeDialogUnits((Control)parent);
        Font font = parent.getFont();
        Composite dialogArea = new Composite(parent, 0);
        CellLayout dialogAreaLayout = new CellLayout(1).setMargins(this.convertHorizontalDLUsToPixels(7), this.convertVerticalDLUsToPixels(7)).setSpacing(this.convertHorizontalDLUsToPixels(4), this.convertVerticalDLUsToPixels(4)).setRow(1, Row.growing());
        dialogArea.setLayout((Layout)dialogAreaLayout);
        dialogArea.setLayoutData((Object)new GridData(1808));
        Label l = new Label(dialogArea, 0);
        l.setText(WorkbenchMessages.WorkbenchEditorsDialog_label);
        l.setFont(font);
        l.setLayoutData((Object)new CellData().align(4, 0x1000000));
        this.editorsTable = new Table(dialogArea, 68354);
        this.editorsTable.setLinesVisible(true);
        this.editorsTable.setHeaderVisible(true);
        this.editorsTable.setFont(font);
        final int height = 16 * this.editorsTable.getItemHeight();
        final int width = (int)(2.5 * (double)height);
        CellData tableData = new CellData().align(4, 4).setHint(1, width, height);
        this.editorsTable.setLayoutData((Object)tableData);
        this.editorsTable.setLayout(new Layout(){

            protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
                return new Point(width, height);
            }

            protected void layout(Composite composite, boolean flushCache) {
                TableColumn[] c = WorkbenchEditorsDialog.this.editorsTable.getColumns();
                if (WorkbenchEditorsDialog.this.columnsWidth == null) {
                    int w = ((WorkbenchEditorsDialog)WorkbenchEditorsDialog.this).editorsTable.getClientArea().width;
                    c[0].setWidth(w * 1 / 3);
                    c[1].setWidth(w - c[0].getWidth());
                } else {
                    c[0].setWidth(WorkbenchEditorsDialog.this.columnsWidth[0]);
                    c[1].setWidth(WorkbenchEditorsDialog.this.columnsWidth[1]);
                }
                WorkbenchEditorsDialog.this.editorsTable.setLayout(null);
            }
        });
        TableColumn tc = new TableColumn(this.editorsTable, 0);
        tc.setResizable(true);
        tc.setText(WorkbenchMessages.WorkbenchEditorsDialog_name);
        tc.addSelectionListener(this.headerListener);
        tc = new TableColumn(this.editorsTable, 0);
        tc.setResizable(true);
        tc.setText(WorkbenchMessages.WorkbenchEditorsDialog_path);
        tc.addSelectionListener(this.headerListener);
        Composite selectionButtons = new Composite(dialogArea, 0);
        Label compLabel = new Label(selectionButtons, 0);
        compLabel.setFont(font);
        GridLayout layout = new GridLayout();
        layout.numColumns = 4;
        selectionButtons.setLayout((Layout)layout);
        this.selectClean = new Button(selectionButtons, 8);
        this.selectClean.setText(WorkbenchMessages.WorkbenchEditorsDialog_selectClean);
        this.selectClean.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchEditorsDialog.this.editorsTable.setSelection(WorkbenchEditorsDialog.this.selectClean(WorkbenchEditorsDialog.this.editorsTable.getItems()));
                WorkbenchEditorsDialog.this.updateButtons();
            }
        });
        this.selectClean.setFont(font);
        this.setButtonLayoutData(this.selectClean);
        this.invertSelection = new Button(selectionButtons, 8);
        this.invertSelection.setText(WorkbenchMessages.WorkbenchEditorsDialog_invertSelection);
        this.invertSelection.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchEditorsDialog.this.editorsTable.setSelection(WorkbenchEditorsDialog.this.invertedSelection(WorkbenchEditorsDialog.this.editorsTable.getItems(), WorkbenchEditorsDialog.this.editorsTable.getSelection()));
                WorkbenchEditorsDialog.this.updateButtons();
            }
        });
        this.invertSelection.setFont(font);
        this.setButtonLayoutData(this.invertSelection);
        this.allSelection = new Button(selectionButtons, 8);
        this.allSelection.setText(WorkbenchMessages.WorkbenchEditorsDialog_allSelection);
        this.allSelection.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchEditorsDialog.this.editorsTable.setSelection(WorkbenchEditorsDialog.this.editorsTable.getItems());
                WorkbenchEditorsDialog.this.updateButtons();
            }
        });
        this.allSelection.setFont(font);
        this.setButtonLayoutData(this.allSelection);
        Composite actionButtons = new Composite(dialogArea, 0);
        Label actLabel = new Label(actionButtons, 0);
        actLabel.setFont(font);
        GridLayout actLayout = new GridLayout();
        actLayout.numColumns = 4;
        actionButtons.setLayout((Layout)actLayout);
        this.createButton(actionButtons, 0, WorkbenchMessages.WorkbenchEditorsDialog_activate, true);
        this.closeSelected = new Button(actionButtons, 8);
        this.closeSelected.setText(WorkbenchMessages.WorkbenchEditorsDialog_closeSelected);
        this.closeSelected.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchEditorsDialog.this.closeItems(WorkbenchEditorsDialog.this.editorsTable.getSelection());
            }
        });
        this.closeSelected.setFont(font);
        this.setButtonLayoutData(this.closeSelected);
        this.saveSelected = new Button(actionButtons, 8);
        this.saveSelected.setText(WorkbenchMessages.WorkbenchEditorsDialog_saveSelected);
        this.saveSelected.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchEditorsDialog.this.saveItems(WorkbenchEditorsDialog.this.editorsTable.getSelection());
            }
        });
        this.saveSelected.setFont(font);
        this.setButtonLayoutData(this.saveSelected);
        final Button showAllPerspButton = new Button(dialogArea, 32);
        showAllPerspButton.setText(WorkbenchMessages.WorkbenchEditorsDialog_showAllPersp);
        showAllPerspButton.setSelection(this.showAllPersp);
        showAllPerspButton.setFont(font);
        this.setButtonLayoutData(showAllPerspButton);
        showAllPerspButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchEditorsDialog.this.showAllPersp = showAllPerspButton.getSelection();
                WorkbenchEditorsDialog.this.updateItems();
            }
        });
        this.updateItems();
        this.updateButtons();
        this.editorsTable.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchEditorsDialog.this.updateButtons();
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                WorkbenchEditorsDialog.this.okPressed();
            }
        });
        this.editorsTable.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                Image i;
                Iterator images = WorkbenchEditorsDialog.this.imageCache.values().iterator();
                while (images.hasNext()) {
                    i = (Image)images.next();
                    i.dispose();
                }
                images = WorkbenchEditorsDialog.this.disabledImageCache.values().iterator();
                while (images.hasNext()) {
                    i = (Image)images.next();
                    i.dispose();
                }
            }
        });
        this.editorsTable.setFocus();
        WorkbenchEditorsDialog.applyDialogFont((Control)dialogArea);
        return dialogArea;
    }

    private void updateButtons() {
        TableItem[] selectedItems = this.editorsTable.getSelection();
        boolean hasDirty = false;
        int i = 0;
        while (i < selectedItems.length) {
            Adapter editor = (Adapter)selectedItems[i].getData();
            if (editor.isDirty()) {
                hasDirty = true;
                break;
            }
            ++i;
        }
        this.saveSelected.setEnabled(hasDirty);
        TableItem[] allItems = this.editorsTable.getItems();
        boolean hasClean = false;
        int i2 = 0;
        while (i2 < allItems.length) {
            Adapter editor = (Adapter)allItems[i2].getData();
            if (!editor.isDirty()) {
                hasClean = true;
                break;
            }
            ++i2;
        }
        this.selectClean.setEnabled(hasClean);
        this.invertSelection.setEnabled(allItems.length > 0);
        this.closeSelected.setEnabled(selectedItems.length > 0);
        Button ok = this.getOkButton();
        if (ok != null) {
            ok.setEnabled(selectedItems.length == 1);
        }
    }

    private void closeItems(TableItem[] items) {
        SaveablesList saveablesList;
        if (items.length == 0) {
            return;
        }
        ArrayList<IWorkbenchPart> selectedEditors = new ArrayList<IWorkbenchPart>();
        int i = 0;
        while (i < items.length) {
            IWorkbenchPart part;
            Adapter e = (Adapter)items[i].getData();
            if (e.editorRef != null && (part = e.editorRef.getPart(false)) != null) {
                selectedEditors.add(part);
            }
            ++i;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((saveablesList = (SaveablesList)this.window.getService(clazz)).preCloseParts(selectedEditors, true, (IShellProvider)this, this.window) != null) {
            int i2 = 0;
            while (i2 < items.length) {
                Adapter e = (Adapter)items[i2].getData();
                e.close();
                ++i2;
            }
            this.updateItems();
        }
    }

    private void saveItems(TableItem[] items) {
        if (items.length == 0) {
            return;
        }
        ArrayList<IWorkbenchPart> selectedEditors = new ArrayList<IWorkbenchPart>();
        int i = 0;
        while (i < items.length) {
            IWorkbenchPart part;
            Adapter e = (Adapter)items[i].getData();
            if (e.editorRef != null && (part = e.editorRef.getPart(false)) != null) {
                selectedEditors.add(part);
            }
            ++i;
        }
        EditorManager.saveAll(selectedEditors, false, false, false, this.window);
        this.updateItems();
    }

    private TableItem[] selectClean(TableItem[] items) {
        if (items.length == 0) {
            return new TableItem[0];
        }
        ArrayList<TableItem> cleanItems = new ArrayList<TableItem>(items.length);
        int i = 0;
        while (i < items.length) {
            Adapter editor = (Adapter)items[i].getData();
            if (!editor.isDirty()) {
                cleanItems.add(items[i]);
            }
            ++i;
        }
        TableItem[] result = new TableItem[cleanItems.size()];
        cleanItems.toArray(result);
        return result;
    }

    private TableItem[] invertedSelection(TableItem[] allItems, TableItem[] selectedItems) {
        if (allItems.length == 0) {
            return allItems;
        }
        ArrayList<TableItem> invertedSelection = new ArrayList<TableItem>(allItems.length - selectedItems.length);
        int i = 0;
        while (i < allItems.length) {
            block4: {
                int j = 0;
                while (j < selectedItems.length) {
                    if (allItems[i] != selectedItems[j]) {
                        ++j;
                        continue;
                    }
                    break block4;
                }
                invertedSelection.add(allItems[i]);
            }
            ++i;
        }
        TableItem[] result = new TableItem[invertedSelection.size()];
        invertedSelection.toArray(result);
        return result;
    }

    private void updateItem(TableItem item, Adapter editor) {
        item.setData((Object)editor);
        item.setText(editor.getText());
        Image image = editor.getImage();
        if (image != null) {
            item.setImage(0, image);
        }
    }

    private void updateEditors(IWorkbenchPage[] pages) {
        int j = 0;
        while (j < pages.length) {
            IEditorReference[] editors = pages[j].getEditorReferences();
            int k = 0;
            while (k < editors.length) {
                this.elements.add(new Adapter(editors[k]));
                ++k;
            }
            ++j;
        }
    }

    private void updateItems() {
        TableItem[] selectedItems = this.editorsTable.getSelection();
        Adapter[] selectedAdapters = new Adapter[selectedItems.length];
        int i = 0;
        while (i < selectedItems.length) {
            selectedAdapters[i] = (Adapter)selectedItems[i].getData();
            ++i;
        }
        this.editorsTable.removeAll();
        this.elements = new ArrayList();
        if (this.showAllPersp) {
            IWorkbenchWindow[] windows = this.window.getWorkbench().getWorkbenchWindows();
            int i2 = 0;
            while (i2 < windows.length) {
                this.updateEditors(windows[i2].getPages());
                ++i2;
            }
        } else {
            IWorkbenchPage page = this.window.getActivePage();
            if (page != null) {
                this.updateEditors(new IWorkbenchPage[]{page});
            }
        }
        this.sort();
        ArrayList<TableItem> selection = new ArrayList<TableItem>(selectedItems.length);
        Iterator iterator = this.elements.iterator();
        while (iterator.hasNext()) {
            Adapter e = (Adapter)iterator.next();
            TableItem item = new TableItem(this.editorsTable, 0);
            this.updateItem(item, e);
            int i3 = 0;
            while (i3 < selectedAdapters.length) {
                if (selectedAdapters[i3].editorRef == e.editorRef) {
                    selection.add(item);
                }
                ++i3;
            }
        }
        this.editorsTable.setSelection(selection.toArray(new TableItem[selection.size()]));
        this.updateButtons();
    }

    private void sort() {
        if (this.sortColumn > this.editorsTable.getColumnCount() - 1) {
            this.sortColumn = 0;
        }
        Object[] a = new Adapter[this.elements.size()];
        this.elements.toArray(a);
        Arrays.sort(a);
        this.elements = Arrays.asList(a);
    }

    protected void okPressed() {
        TableItem[] items = this.editorsTable.getSelection();
        if (items.length != 1) {
            super.okPressed();
            return;
        }
        Adapter selection = (Adapter)items[0].getData();
        super.okPressed();
        selection.activate();
    }

    public boolean close() {
        this.saveDialogSettings();
        return super.close();
    }

    private void saveDialogSettings() {
        IDialogSettings s = this.getDialogSettings();
        s.put(ALLPERSP, this.showAllPersp);
        s.put(SORT, this.sortColumn);
        this.bounds = this.getShell().getBounds();
        String[] array = new String[]{String.valueOf(this.bounds.x), String.valueOf(this.bounds.y), String.valueOf(this.bounds.width), String.valueOf(this.bounds.height)};
        s.put(BOUNDS, array);
        array = new String[this.editorsTable.getColumnCount()];
        int i = 0;
        while (i < array.length) {
            array[i] = String.valueOf(this.editorsTable.getColumn(i).getWidth());
            ++i;
        }
        s.put(COLUMNS, array);
    }

    private IDialogSettings getDialogSettings() {
        IDialogSettings settings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings thisSettings = settings.getSection(((Object)((Object)this)).getClass().getName());
        if (thisSettings == null) {
            thisSettings = settings.addNewSection(((Object)((Object)this)).getClass().getName());
        }
        return thisSettings;
    }

    private class Adapter
    implements Comparable {
        IEditorReference editorRef;
        IEditorInput input;
        IEditorDescriptor desc;
        String[] text;
        Image image;

        Adapter(IEditorReference ref) {
            this.editorRef = ref;
        }

        boolean isDirty() {
            if (this.editorRef == null) {
                return false;
            }
            return this.editorRef.isDirty();
        }

        void close() {
            if (this.editorRef == null) {
                return;
            }
            WorkbenchPage p = ((WorkbenchPartReference)((Object)this.editorRef)).getPane().getPage();
            p.closeEditor(this.editorRef, false);
        }

        String[] getText() {
            if (this.text != null) {
                return this.text;
            }
            this.text = new String[2];
            if (this.editorRef != null) {
                this.text[0] = this.editorRef.isDirty() ? "*" + this.editorRef.getTitle() : this.editorRef.getTitle();
                this.text[1] = this.editorRef.getTitleToolTip();
            } else {
                this.text[0] = this.input.getName();
                this.text[1] = this.input.getToolTipText();
            }
            if (this.text[0] != null) {
                this.text[0] = TextProcessor.process((String)this.text[0]);
            }
            if (this.text[1] != null) {
                this.text[1] = TextProcessor.process((String)this.text[1]);
            }
            return this.text;
        }

        Image getImage() {
            if (this.image != null) {
                return this.image;
            }
            if (this.editorRef != null) {
                this.image = this.editorRef.getTitleImage();
            } else {
                ImageDescriptor imageDesc = null;
                if (this.desc != null) {
                    imageDesc = this.desc.getImageDescriptor();
                }
                if (imageDesc == null) {
                    IEditorRegistry registry = WorkbenchPlugin.getDefault().getEditorRegistry();
                    imageDesc = registry.getImageDescriptor(this.input.getName());
                }
                if (imageDesc != null) {
                    this.image = (Image)WorkbenchEditorsDialog.this.disabledImageCache.get(imageDesc);
                    if (this.image == null) {
                        Image enabled = imageDesc.createImage();
                        Image disabled = new Image((Device)WorkbenchEditorsDialog.this.editorsTable.getDisplay(), enabled, 1);
                        enabled.dispose();
                        WorkbenchEditorsDialog.this.disabledImageCache.put(imageDesc, disabled);
                        this.image = disabled;
                    }
                }
            }
            return this.image;
        }

        private void activate() {
            if (this.editorRef != null) {
                IEditorPart editor = this.editorRef.getEditor(true);
                WorkbenchPage p = (WorkbenchPage)editor.getEditorSite().getPage();
                Shell s = p.getWorkbenchWindow().getShell();
                if (s.getMinimized()) {
                    s.setMinimized(false);
                }
                s.moveAbove(null);
                p.getWorkbenchWindow().setActivePage(p);
                p.activate(editor);
            } else {
                IWorkbenchPage p = WorkbenchEditorsDialog.this.window.getActivePage();
                if (p != null) {
                    try {
                        p.openEditor(this.input, this.desc.getId(), true);
                    }
                    catch (PartInitException partInitException) {}
                }
            }
        }

        public int compareTo(Object another) {
            Adapter adapter = (Adapter)another;
            int result = WorkbenchEditorsDialog.this.collator.compare(this.getText()[WorkbenchEditorsDialog.this.sortColumn], adapter.getText()[WorkbenchEditorsDialog.this.sortColumn]);
            if (result == 0) {
                int column = WorkbenchEditorsDialog.this.sortColumn == 0 ? 1 : 0;
                result = WorkbenchEditorsDialog.this.collator.compare(this.getText()[column], adapter.getText()[column]);
            }
            if (WorkbenchEditorsDialog.this.reverse) {
                return result * -1;
            }
            return result;
        }
    }
}

