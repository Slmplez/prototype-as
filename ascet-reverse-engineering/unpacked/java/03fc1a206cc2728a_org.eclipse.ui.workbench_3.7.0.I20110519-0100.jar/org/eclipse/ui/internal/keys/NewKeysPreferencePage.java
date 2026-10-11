/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Category
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.util.Tracing
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeySequenceText
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.resource.DeviceResourceException
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.ColumnLayoutData
 *  org.eclipse.jface.viewers.ColumnWeightData
 *  org.eclipse.jface.viewers.ComboViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TableLayout
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeColumn
 *  org.eclipse.swt.widgets.TreeItem
 */
package org.eclipse.ui.internal.keys;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.eclipse.core.commands.Category;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeySequenceText;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.ColumnLayoutData;
import org.eclipse.jface.viewers.ColumnWeightData;
import org.eclipse.jface.viewers.ComboViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableLayout;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.ICommandImageService;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.keys.CategoryPatternFilter;
import org.eclipse.ui.internal.keys.KeysPreferenceFiltersDialog;
import org.eclipse.ui.internal.keys.NewKeysPreferenceMessages;
import org.eclipse.ui.internal.keys.model.BindingElement;
import org.eclipse.ui.internal.keys.model.BindingModel;
import org.eclipse.ui.internal.keys.model.ContextElement;
import org.eclipse.ui.internal.keys.model.ContextModel;
import org.eclipse.ui.internal.keys.model.KeyController;
import org.eclipse.ui.internal.keys.model.ModelElement;
import org.eclipse.ui.internal.keys.model.SchemeElement;
import org.eclipse.ui.internal.keys.model.SchemeModel;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.keys.IBindingService;

public class NewKeysPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private static boolean DEBUG = Policy.DEBUG_KEY_BINDINGS;
    private static final String TRACING_COMPONENT = "NewKeysPref";
    public static final String TAG_DIALOG_SECTION = "org.eclipse.ui.preferences.keysPreferencePage";
    private static final String TAG_FILTER_ACTION_SETS = "actionSetFilter";
    private static final String TAG_FILTER_INTERNAL = "internalFilter";
    private static final String TAG_FILTER_UNCAT = "uncategorizedFilter";
    private static final int ITEMS_TO_SHOW = 7;
    private static final int COMMAND_NAME_COLUMN = 0;
    private static final int KEY_SEQUENCE_COLUMN = 1;
    private static final int CONTEXT_COLUMN = 2;
    private static final int CATEGORY_COLUMN = 3;
    private static final int USER_DELTA_COLUMN = 4;
    private static int NUM_OF_COLUMNS = 5;
    private ComboViewer fSchemeCombo;
    private CategoryPatternFilter fPatternFilter;
    private CategoryFilterTree fFilteredTree;
    private boolean fFilterActionSetContexts = true;
    private boolean fFilterInternalContexts = true;
    private boolean fFilterWorkbenchMenuContext = !Workbench.getInstance().hasAppMenu();
    private KeyController keyController;
    private Category fDefaultCategory;
    private Label commandNameValueLabel;
    private Text fBindingText;
    private Text fDescriptionText;
    private ComboViewer fWhenCombo;
    private IBindingService fBindingService;
    private KeySequenceText fKeySequenceText;
    private TableViewer conflictViewer;
    private ICommandImageService commandImageService;
    private ICommandService commandService;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    protected Control createContents(Composite parent) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.keys_preference_page_context");
        Composite page = new Composite(parent, 0);
        GridLayout layout = new GridLayout(1, false);
        layout.marginWidth = 0;
        page.setLayout((Layout)layout);
        IDialogSettings settings = this.getDialogSettings();
        this.fPatternFilter = new CategoryPatternFilter(true, this.commandService.getCategory(null));
        if (settings.get(TAG_FILTER_UNCAT) != null) {
            this.fPatternFilter.filterCategories(settings.getBoolean(TAG_FILTER_UNCAT));
        }
        this.createSchemeControls(page);
        this.createTree(page);
        this.createTreeControls(page);
        this.createDataControls(page);
        this.createButtonBar(page);
        this.fill();
        this.applyDialogFont(page);
        GC gc = new GC((Drawable)this.fDescriptionText);
        gc.setFont(this.fDescriptionText.getFont());
        FontMetrics metrics = gc.getFontMetrics();
        gc.dispose();
        int height = metrics.getHeight() * 4;
        GridData gridData = new GridData();
        gridData.grabExcessHorizontalSpace = true;
        gridData.horizontalAlignment = 4;
        gridData.horizontalSpan = 2;
        gridData.heightHint = height;
        this.fDescriptionText.setLayoutData((Object)gridData);
        return page;
    }

    private final Control createButtonBar(Composite parent) {
        Composite buttonBar = new Composite(parent, 0);
        GridLayout layout = new GridLayout(2, false);
        layout.marginWidth = 0;
        buttonBar.setLayout((Layout)layout);
        GridData gridData = new GridData();
        gridData.horizontalAlignment = 0x1000008;
        buttonBar.setLayoutData((Object)gridData);
        Button filtersButton = new Button(buttonBar, 8);
        gridData = new GridData();
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        filtersButton.setText(NewKeysPreferenceMessages.FiltersButton_Text);
        gridData.widthHint = Math.max(widthHint, filtersButton.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        filtersButton.setLayoutData((Object)gridData);
        filtersButton.addSelectionListener(new SelectionListener(){

            public void widgetDefaultSelected(SelectionEvent e) {
            }

            public void widgetSelected(SelectionEvent e) {
                KeysPreferenceFiltersDialog dialog = new KeysPreferenceFiltersDialog(NewKeysPreferencePage.this.getShell());
                dialog.setFilterActionSet(NewKeysPreferencePage.this.fFilterActionSetContexts);
                dialog.setFilterInternal(NewKeysPreferencePage.this.fFilterInternalContexts);
                dialog.setFilterWorkbenchMenu(NewKeysPreferencePage.this.fFilterWorkbenchMenuContext);
                dialog.setFilterUncategorized(NewKeysPreferencePage.this.fFilteredTree.isFilteringCategories());
                if (dialog.open() == 0) {
                    NewKeysPreferencePage.this.fFilterActionSetContexts = dialog.getFilterActionSet();
                    NewKeysPreferencePage.this.fFilterInternalContexts = dialog.getFilterInternal();
                    NewKeysPreferencePage.this.fFilterWorkbenchMenuContext = dialog.getFilterWorkbenchMenu();
                    NewKeysPreferencePage.this.fFilteredTree.filterCategories(dialog.getFilterUncategorized());
                    NewKeysPreferencePage.this.keyController.filterContexts(NewKeysPreferencePage.this.fFilterActionSetContexts, NewKeysPreferencePage.this.fFilterInternalContexts, NewKeysPreferencePage.this.fFilterWorkbenchMenuContext);
                    ISelection currentContextSelection = NewKeysPreferencePage.this.fWhenCombo.getSelection();
                    NewKeysPreferencePage.this.fWhenCombo.setInput((Object)NewKeysPreferencePage.this.keyController.getContextModel());
                    NewKeysPreferencePage.this.fWhenCombo.setSelection(currentContextSelection);
                }
            }
        });
        Button exportButton = new Button(buttonBar, 8);
        widthHint = this.convertHorizontalDLUsToPixels(61);
        exportButton.setText(NewKeysPreferenceMessages.ExportButton_Text);
        gridData.widthHint = Math.max(widthHint, exportButton.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        exportButton.setLayoutData((Object)gridData);
        exportButton.addSelectionListener(new SelectionListener(){

            public void widgetDefaultSelected(SelectionEvent e) {
            }

            public void widgetSelected(SelectionEvent e) {
                NewKeysPreferencePage.this.keyController.exportCSV(((Button)e.getSource()).getShell());
            }
        });
        return buttonBar;
    }

    private final void createDataControls(Composite parent) {
        final Composite dataArea = new Composite(parent, 0);
        GridLayout layout = new GridLayout(2, true);
        layout.marginWidth = 0;
        dataArea.setLayout((Layout)layout);
        GridData gridData = new GridData();
        gridData.grabExcessHorizontalSpace = true;
        gridData.horizontalAlignment = 4;
        dataArea.setLayoutData((Object)gridData);
        Composite leftDataArea = new Composite(dataArea, 0);
        layout = new GridLayout(3, false);
        leftDataArea.setLayout((Layout)layout);
        gridData = new GridData();
        gridData.grabExcessHorizontalSpace = true;
        gridData.verticalAlignment = 128;
        gridData.horizontalAlignment = 4;
        leftDataArea.setLayoutData((Object)gridData);
        Label commandNameLabel = new Label(leftDataArea, 0);
        commandNameLabel.setText(NewKeysPreferenceMessages.CommandNameLabel_Text);
        this.commandNameValueLabel = new Label(leftDataArea, 0);
        gridData = new GridData();
        gridData.grabExcessHorizontalSpace = true;
        gridData.horizontalSpan = 2;
        gridData.horizontalAlignment = 4;
        this.commandNameValueLabel.setLayoutData((Object)gridData);
        Label commandDescriptionlabel = new Label(leftDataArea, 16384);
        commandDescriptionlabel.setText(NewKeysPreferenceMessages.CommandDescriptionLabel_Text);
        gridData = new GridData();
        gridData.verticalAlignment = 1;
        commandDescriptionlabel.setLayoutData((Object)gridData);
        this.fDescriptionText = new Text(leftDataArea, 2122);
        Label bindingLabel = new Label(leftDataArea, 0);
        bindingLabel.setText(NewKeysPreferenceMessages.BindingLabel_Text);
        this.fBindingText = new Text(leftDataArea, 2048);
        gridData = new GridData();
        gridData.grabExcessHorizontalSpace = true;
        gridData.horizontalAlignment = 4;
        gridData.widthHint = 200;
        this.fBindingText.setLayoutData((Object)gridData);
        this.fBindingText.addFocusListener(new FocusListener(){

            public void focusGained(FocusEvent e) {
                NewKeysPreferencePage.this.fBindingService.setKeyFilterEnabled(false);
            }

            public void focusLost(FocusEvent e) {
                NewKeysPreferencePage.this.fBindingService.setKeyFilterEnabled(true);
            }
        });
        this.fBindingText.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                if (!NewKeysPreferencePage.this.fBindingService.isKeyFilterEnabled()) {
                    NewKeysPreferencePage.this.fBindingService.setKeyFilterEnabled(true);
                }
            }
        });
        this.fKeySequenceText = new KeySequenceText(this.fBindingText);
        this.fKeySequenceText.setKeyStrokeLimit(4);
        this.fKeySequenceText.addPropertyChangeListener(new IPropertyChangeListener(){

            public final void propertyChange(PropertyChangeEvent event) {
                if (!event.getOldValue().equals(event.getNewValue())) {
                    KeySequence keySequence = NewKeysPreferencePage.this.fKeySequenceText.getKeySequence();
                    if (!keySequence.isComplete()) {
                        return;
                    }
                    BindingElement activeBinding = (BindingElement)NewKeysPreferencePage.this.keyController.getBindingModel().getSelectedElement();
                    if (activeBinding != null) {
                        activeBinding.setTrigger((TriggerSequence)keySequence);
                    }
                    NewKeysPreferencePage.this.fBindingText.setSelection(NewKeysPreferencePage.this.fBindingText.getTextLimit());
                }
            }
        });
        final Button addKeyButton = new Button(leftDataArea, 16388);
        addKeyButton.setToolTipText(NewKeysPreferenceMessages.AddKeyButton_ToolTipText);
        gridData = new GridData();
        gridData.heightHint = this.fSchemeCombo.getCombo().getTextHeight();
        addKeyButton.setLayoutData((Object)gridData);
        Control[] tabStops = dataArea.getTabList();
        ArrayList<Object> newTabStops = new ArrayList<Object>();
        int i = 0;
        while (i < tabStops.length) {
            Control tabStop = tabStops[i];
            newTabStops.add(tabStop);
            if (this.fBindingText.equals(tabStop)) {
                newTabStops.add(addKeyButton);
            }
            ++i;
        }
        Control[] newTabStopArray = newTabStops.toArray(new Control[newTabStops.size()]);
        dataArea.setTabList(newTabStopArray);
        final Menu addKeyMenu = new Menu((Control)addKeyButton);
        Iterator trappedKeyItr = KeySequenceText.TRAPPED_KEYS.iterator();
        while (trappedKeyItr.hasNext()) {
            final KeyStroke trappedKey = (KeyStroke)trappedKeyItr.next();
            MenuItem menuItem = new MenuItem(addKeyMenu, 8);
            menuItem.setText(trappedKey.format());
            menuItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    NewKeysPreferencePage.this.fKeySequenceText.insert(trappedKey);
                    NewKeysPreferencePage.this.fBindingText.setFocus();
                    NewKeysPreferencePage.this.fBindingText.setSelection(NewKeysPreferencePage.this.fBindingText.getTextLimit());
                }
            });
        }
        addKeyButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent selectionEvent) {
                Point buttonLocation = addKeyButton.getLocation();
                buttonLocation = dataArea.toDisplay(buttonLocation.x, buttonLocation.y);
                Point buttonSize = addKeyButton.getSize();
                addKeyMenu.setLocation(buttonLocation.x, buttonLocation.y + buttonSize.y);
                addKeyMenu.setVisible(true);
            }
        });
        Label whenLabel = new Label(leftDataArea, 0);
        whenLabel.setText(NewKeysPreferenceMessages.WhenLabel_Text);
        this.fWhenCombo = new ComboViewer(leftDataArea);
        gridData = new GridData();
        gridData.grabExcessHorizontalSpace = true;
        gridData.horizontalAlignment = 4;
        gridData.horizontalSpan = 2;
        ViewerComparator comparator = new ViewerComparator();
        this.fWhenCombo.setComparator(comparator);
        this.fWhenCombo.getCombo().setVisibleItemCount(7);
        this.fWhenCombo.getCombo().setLayoutData((Object)gridData);
        this.fWhenCombo.setContentProvider((IContentProvider)new ModelContentProvider());
        this.fWhenCombo.setLabelProvider((IBaseLabelProvider)new ListLabelProvider());
        this.fWhenCombo.addSelectionChangedListener(new ISelectionChangedListener(){

            public final void selectionChanged(SelectionChangedEvent event) {
                ContextElement context = (ContextElement)((IStructuredSelection)event.getSelection()).getFirstElement();
                if (context != null) {
                    NewKeysPreferencePage.this.keyController.getContextModel().setSelectedElement(context);
                }
            }
        });
        IPropertyChangeListener whenListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() == NewKeysPreferencePage.this.keyController.getContextModel() && "selectedElement".equals(event.getProperty())) {
                    Object newVal = event.getNewValue();
                    StructuredSelection structuredSelection = newVal == null ? null : new StructuredSelection(newVal);
                    NewKeysPreferencePage.this.fWhenCombo.setSelection((ISelection)structuredSelection, true);
                }
            }
        };
        this.keyController.addPropertyChangeListener(whenListener);
        Composite rightDataArea = new Composite(dataArea, 0);
        layout = new GridLayout(1, false);
        rightDataArea.setLayout((Layout)layout);
        gridData = new GridData(4, 4, true, true);
        rightDataArea.setLayoutData((Object)gridData);
        new Label(rightDataArea, 0);
        Label descriptionLabel = new Label(rightDataArea, 0);
        descriptionLabel.setText(NewKeysPreferenceMessages.ConflictsLabel_Text);
        gridData = new GridData();
        gridData.grabExcessHorizontalSpace = true;
        gridData.horizontalAlignment = 4;
        descriptionLabel.setLayoutData((Object)gridData);
        this.conflictViewer = new TableViewer(rightDataArea, 68100);
        Table table = this.conflictViewer.getTable();
        table.setHeaderVisible(true);
        TableColumn bindingNameColumn = new TableColumn(table, 16384);
        bindingNameColumn.setText(NewKeysPreferenceMessages.CommandNameColumn_Text);
        bindingNameColumn.setWidth(150);
        TableColumn bindingContextNameColumn = new TableColumn(table, 16384);
        bindingContextNameColumn.setText(NewKeysPreferenceMessages.WhenColumn_Text);
        bindingContextNameColumn.setWidth(150);
        gridData = new GridData(4, 4, true, true);
        table.setLayoutData((Object)gridData);
        TableLayout tableLayout = new TableLayout();
        tableLayout.addColumnData((ColumnLayoutData)new ColumnWeightData(60));
        tableLayout.addColumnData((ColumnLayoutData)new ColumnWeightData(40));
        table.setLayout((Layout)tableLayout);
        this.conflictViewer.setContentProvider((IContentProvider)new IStructuredContentProvider(){

            public Object[] getElements(Object inputElement) {
                if (inputElement instanceof Collection) {
                    return ((Collection)inputElement).toArray();
                }
                return new Object[0];
            }

            public void dispose() {
            }

            public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            }
        });
        this.conflictViewer.setLabelProvider((IBaseLabelProvider)new BindingElementLabelProvider(){

            public String getColumnText(Object o, int index) {
                BindingElement element = (BindingElement)o;
                if (index == 0) {
                    return element.getName();
                }
                return element.getContext().getName();
            }
        });
        this.conflictViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                ModelElement binding = (ModelElement)((IStructuredSelection)event.getSelection()).getFirstElement();
                BindingModel bindingModel = NewKeysPreferencePage.this.keyController.getBindingModel();
                if (binding != null && binding != bindingModel.getSelectedElement()) {
                    StructuredSelection selection = new StructuredSelection((Object)binding);
                    bindingModel.setSelectedElement(binding);
                    NewKeysPreferencePage.this.conflictViewer.setSelection((ISelection)selection);
                    boolean selectionVisible = false;
                    TreeItem[] items = NewKeysPreferencePage.this.fFilteredTree.getViewer().getTree().getItems();
                    int i = 0;
                    while (i < items.length) {
                        if (items[i].getData().equals(binding)) {
                            selectionVisible = true;
                            break;
                        }
                        ++i;
                    }
                    if (!selectionVisible) {
                        NewKeysPreferencePage.this.fFilteredTree.getFilterControl().setText("");
                        NewKeysPreferencePage.this.fFilteredTree.getViewer().refresh();
                        bindingModel.setSelectedElement(binding);
                        NewKeysPreferencePage.this.conflictViewer.setSelection((ISelection)selection);
                    }
                }
            }
        });
        IPropertyChangeListener conflictsListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() == NewKeysPreferencePage.this.keyController.getConflictModel() && "selectedElement".equals(event.getProperty())) {
                    if (NewKeysPreferencePage.this.keyController.getConflictModel().getConflicts() != null) {
                        Object newVal = event.getNewValue();
                        StructuredSelection structuredSelection = newVal == null ? null : new StructuredSelection(newVal);
                        NewKeysPreferencePage.this.conflictViewer.setSelection((ISelection)structuredSelection, true);
                    }
                } else if ("conflicts".equals(event.getProperty())) {
                    NewKeysPreferencePage.this.conflictViewer.setInput(event.getNewValue());
                } else if ("conflictsAdd".equals(event.getProperty())) {
                    NewKeysPreferencePage.this.conflictViewer.add(event.getNewValue());
                } else if ("conflictsRemove".equals(event.getProperty())) {
                    NewKeysPreferencePage.this.conflictViewer.remove(event.getNewValue());
                }
            }
        };
        this.keyController.addPropertyChangeListener(conflictsListener);
        IPropertyChangeListener dataUpdateListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                BindingElement bindingElement = null;
                boolean weCare = false;
                if (event.getSource() == NewKeysPreferencePage.this.keyController.getBindingModel() && "selectedElement".equals(event.getProperty())) {
                    bindingElement = (BindingElement)event.getNewValue();
                    weCare = true;
                } else if (event.getSource() == NewKeysPreferencePage.this.keyController.getBindingModel().getSelectedElement() && "modelObject".equals(event.getProperty())) {
                    bindingElement = (BindingElement)event.getSource();
                    weCare = true;
                }
                if (bindingElement == null && weCare) {
                    NewKeysPreferencePage.this.commandNameValueLabel.setText("");
                    NewKeysPreferencePage.this.fDescriptionText.setText("");
                    NewKeysPreferencePage.this.fBindingText.setText("");
                } else if (bindingElement != null) {
                    NewKeysPreferencePage.this.commandNameValueLabel.setText(bindingElement.getName());
                    String desc = bindingElement.getDescription();
                    NewKeysPreferencePage.this.fDescriptionText.setText(desc == null ? "" : desc);
                    KeySequence trigger = (KeySequence)bindingElement.getTrigger();
                    NewKeysPreferencePage.this.fKeySequenceText.setKeySequence(trigger);
                }
            }
        };
        this.keyController.addPropertyChangeListener(dataUpdateListener);
    }

    private void createTree(Composite parent) {
        this.fPatternFilter = new CategoryPatternFilter(true, this.fDefaultCategory);
        this.fPatternFilter.filterCategories(true);
        this.fFilteredTree = new CategoryFilterTree(parent, 67588, this.fPatternFilter);
        GridLayout layout = new GridLayout(1, false);
        layout.marginWidth = 0;
        this.fFilteredTree.setLayout((Layout)layout);
        GridData gridData = new GridData();
        gridData.grabExcessHorizontalSpace = true;
        gridData.grabExcessVerticalSpace = true;
        gridData.horizontalAlignment = 4;
        gridData.verticalAlignment = 4;
        this.fFilteredTree.setLayoutData(gridData);
        final TreeViewer viewer = this.fFilteredTree.getViewer();
        Tree tree = viewer.getTree();
        tree.setHeaderVisible(true);
        Object layoutData = tree.getLayoutData();
        if (layoutData instanceof GridData) {
            gridData = (GridData)layoutData;
            int itemHeight = tree.getItemHeight();
            if (itemHeight > 1) {
                gridData.heightHint = 7 * itemHeight;
            }
        }
        BindingModelComparator comparator = new BindingModelComparator();
        viewer.setComparator((ViewerComparator)comparator);
        TreeColumn commandNameColumn = new TreeColumn(tree, 16384, 0);
        commandNameColumn.setText(NewKeysPreferenceMessages.CommandNameColumn_Text);
        tree.setSortColumn(commandNameColumn);
        tree.setSortDirection(comparator.isAscending() ? 128 : 1024);
        commandNameColumn.addSelectionListener((SelectionListener)new ResortColumn(comparator, commandNameColumn, viewer, 0));
        TreeColumn triggerSequenceColumn = new TreeColumn(tree, 16384, 1);
        triggerSequenceColumn.setText(NewKeysPreferenceMessages.TriggerSequenceColumn_Text);
        triggerSequenceColumn.addSelectionListener((SelectionListener)new ResortColumn(comparator, triggerSequenceColumn, viewer, 1));
        TreeColumn whenColumn = new TreeColumn(tree, 16384, 2);
        whenColumn.setText(NewKeysPreferenceMessages.WhenColumn_Text);
        whenColumn.addSelectionListener((SelectionListener)new ResortColumn(comparator, whenColumn, viewer, 2));
        TreeColumn categoryColumn = new TreeColumn(tree, 16384, 3);
        categoryColumn.setText(NewKeysPreferenceMessages.CategoryColumn_Text);
        categoryColumn.addSelectionListener((SelectionListener)new ResortColumn(comparator, categoryColumn, viewer, 3));
        TreeColumn userMarker = new TreeColumn(tree, 16384, 4);
        userMarker.setText(NewKeysPreferenceMessages.UserColumn_Text);
        userMarker.addSelectionListener((SelectionListener)new ResortColumn(comparator, userMarker, viewer, 4));
        viewer.setContentProvider((IContentProvider)new ModelContentProvider());
        viewer.setLabelProvider((IBaseLabelProvider)new BindingElementLabelProvider(null, null));
        this.fFilteredTree.getPatternFilter().setIncludeLeadingWildcard(true);
        TreeColumn[] columns = viewer.getTree().getColumns();
        columns[0].setWidth(240);
        columns[1].setWidth(130);
        columns[2].setWidth(130);
        columns[3].setWidth(130);
        columns[4].setWidth(50);
        viewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                ModelElement binding = (ModelElement)((IStructuredSelection)event.getSelection()).getFirstElement();
                NewKeysPreferencePage.this.keyController.getBindingModel().setSelectedElement(binding);
            }
        });
        IPropertyChangeListener treeUpdateListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() == NewKeysPreferencePage.this.keyController.getBindingModel() && "selectedElement".equals(event.getProperty())) {
                    Object newVal = event.getNewValue();
                    StructuredSelection structuredSelection = newVal == null ? null : new StructuredSelection(newVal);
                    viewer.setSelection((ISelection)structuredSelection, true);
                } else if (event.getSource() instanceof BindingElement && "modelObject".equals(event.getProperty())) {
                    viewer.update(event.getSource(), null);
                } else if ("bindingConflict".equals(event.getProperty())) {
                    viewer.update(event.getSource(), null);
                } else if ("bindings".equals(event.getProperty())) {
                    viewer.refresh();
                } else if ("bindingAdd".equals(event.getProperty())) {
                    viewer.add((Object)NewKeysPreferencePage.this.keyController.getBindingModel(), event.getNewValue());
                } else if ("bindingRemove".equals(event.getProperty())) {
                    viewer.remove(event.getNewValue());
                } else if ("bindingFilter".equals(event.getProperty())) {
                    viewer.refresh();
                }
            }
        };
        this.keyController.addPropertyChangeListener(treeUpdateListener);
    }

    private final Control createTreeControls(Composite parent) {
        Composite treeControls = new Composite(parent, 0);
        GridLayout layout = new GridLayout(4, false);
        layout.marginWidth = 0;
        treeControls.setLayout((Layout)layout);
        GridData gridData = new GridData();
        gridData.grabExcessHorizontalSpace = true;
        gridData.horizontalAlignment = 4;
        treeControls.setLayoutData((Object)gridData);
        Button addBindingButton = new Button(treeControls, 8);
        gridData = new GridData();
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        addBindingButton.setText(NewKeysPreferenceMessages.AddBindingButton_Text);
        gridData.widthHint = Math.max(widthHint, addBindingButton.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        addBindingButton.setLayoutData((Object)gridData);
        addBindingButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public final void widgetSelected(SelectionEvent event) {
                NewKeysPreferencePage.this.keyController.getBindingModel().copy();
            }
        });
        Button removeBindingButton = new Button(treeControls, 8);
        gridData = new GridData();
        widthHint = this.convertHorizontalDLUsToPixels(61);
        removeBindingButton.setText(NewKeysPreferenceMessages.RemoveBindingButton_Text);
        gridData.widthHint = Math.max(widthHint, removeBindingButton.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        removeBindingButton.setLayoutData((Object)gridData);
        removeBindingButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public final void widgetSelected(SelectionEvent event) {
                NewKeysPreferencePage.this.keyController.getBindingModel().remove();
            }
        });
        Button restore = new Button(treeControls, 8);
        gridData = new GridData();
        widthHint = this.convertHorizontalDLUsToPixels(61);
        restore.setText(NewKeysPreferenceMessages.RestoreBindingButton_Text);
        gridData.widthHint = Math.max(widthHint, restore.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        restore.setLayoutData((Object)gridData);
        restore.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public final void widgetSelected(SelectionEvent event) {
                try {
                    NewKeysPreferencePage.this.fFilteredTree.setRedraw(false);
                    BindingModel bindingModel = NewKeysPreferencePage.this.keyController.getBindingModel();
                    bindingModel.restoreBinding(NewKeysPreferencePage.this.keyController.getContextModel());
                }
                finally {
                    NewKeysPreferencePage.this.fFilteredTree.setRedraw(true);
                }
            }
        });
        return treeControls;
    }

    private void fill() {
        this.fSchemeCombo.setInput((Object)this.keyController.getSchemeModel());
        this.fSchemeCombo.setSelection((ISelection)new StructuredSelection((Object)this.keyController.getSchemeModel().getSelectedElement()));
        this.keyController.filterContexts(this.fFilterActionSetContexts, this.fFilterInternalContexts, this.fFilterWorkbenchMenuContext);
        this.fWhenCombo.setInput((Object)this.keyController.getContextModel());
        this.fFilteredTree.filterCategories(this.fPatternFilter.isFilteringCategories());
        this.fFilteredTree.getViewer().setInput((Object)this.keyController.getBindingModel());
    }

    private void createSchemeControls(Composite parent) {
        Composite schemeControls = new Composite(parent, 0);
        GridLayout layout = new GridLayout(3, false);
        layout.marginWidth = 0;
        schemeControls.setLayout((Layout)layout);
        Label schemeLabel = new Label(schemeControls, 0);
        schemeLabel.setText(NewKeysPreferenceMessages.SchemeLabel_Text);
        this.fSchemeCombo = new ComboViewer(schemeControls);
        this.fSchemeCombo.setLabelProvider((IBaseLabelProvider)new ListLabelProvider());
        this.fSchemeCombo.setContentProvider((IContentProvider)new ModelContentProvider());
        GridData gridData = new GridData();
        gridData.widthHint = 150;
        gridData.horizontalAlignment = 4;
        this.fSchemeCombo.getCombo().setLayoutData((Object)gridData);
        this.fSchemeCombo.addSelectionChangedListener(new ISelectionChangedListener(){

            public final void selectionChanged(SelectionChangedEvent event) {
                BusyIndicator.showWhile((Display)NewKeysPreferencePage.this.fFilteredTree.getViewer().getTree().getDisplay(), (Runnable)new Runnable(this, event){
                    final /* synthetic */ 20 this$1;
                    private final /* synthetic */ SelectionChangedEvent val$event;
                    {
                        this.this$1 = var1_1;
                        this.val$event = selectionChangedEvent;
                    }

                    public void run() {
                        SchemeElement scheme = (SchemeElement)((IStructuredSelection)this.val$event.getSelection()).getFirstElement();
                        NewKeysPreferencePage.access$9(20.access$0(this.this$1)).getSchemeModel().setSelectedElement(scheme);
                    }
                });
            }

            static /* synthetic */ NewKeysPreferencePage access$0(20 var0) {
                return var0.NewKeysPreferencePage.this;
            }
        });
        IPropertyChangeListener listener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() == NewKeysPreferencePage.this.keyController.getSchemeModel() && "selectedElement".equals(event.getProperty())) {
                    Object newVal = event.getNewValue();
                    StructuredSelection structuredSelection = newVal == null ? null : new StructuredSelection(newVal);
                    NewKeysPreferencePage.this.fSchemeCombo.setSelection((ISelection)structuredSelection, true);
                }
            }
        };
        this.keyController.addPropertyChangeListener(listener);
    }

    public void init(IWorkbench workbench) {
        this.keyController = new KeyController();
        this.keyController.init(workbench);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.commandService = (ICommandService)workbench.getService(clazz);
        this.fDefaultCategory = this.commandService.getCategory(null);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.fBindingService = (IBindingService)workbench.getService(clazz2);
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.commandImageService = (ICommandImageService)workbench.getService(clazz3);
    }

    public void applyData(Object data) {
        Map commandToElement;
        BindingElement be;
        if (data instanceof ModelElement) {
            this.keyController.getBindingModel().setSelectedElement((ModelElement)data);
        }
        if (data instanceof Binding && this.fFilteredTree != null) {
            BindingElement be2 = (BindingElement)this.keyController.getBindingModel().getBindingToElement().get(data);
            this.fFilteredTree.getViewer().setSelection((ISelection)new StructuredSelection((Object)be2), true);
        }
        if (data instanceof ParameterizedCommand && (be = (BindingElement)(commandToElement = this.keyController.getBindingModel().getCommandToElement()).get(data)) != null) {
            this.fFilteredTree.getViewer().setSelection((ISelection)new StructuredSelection((Object)be), true);
        }
    }

    public boolean performOk() {
        this.keyController.saveBindings(this.fBindingService);
        this.saveState(this.getDialogSettings());
        return super.performOk();
    }

    public void saveState(IDialogSettings dialogSettings) {
        if (dialogSettings == null) {
            return;
        }
        dialogSettings.put(TAG_FILTER_ACTION_SETS, this.fFilterActionSetContexts);
        dialogSettings.put(TAG_FILTER_INTERNAL, this.fFilterInternalContexts);
        dialogSettings.put(TAG_FILTER_UNCAT, this.fFilteredTree.isFilteringCategories());
    }

    protected IDialogSettings getDialogSettings() {
        IDialogSettings workbenchSettings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings settings = workbenchSettings.getSection(TAG_DIALOG_SECTION);
        if (settings == null) {
            settings = workbenchSettings.addNewSection(TAG_DIALOG_SECTION);
        }
        return settings;
    }

    protected final void performDefaults() {
        String title = NewKeysPreferenceMessages.RestoreDefaultsMessageBoxText;
        String message = NewKeysPreferenceMessages.RestoreDefaultsMessageBoxMessage;
        boolean confirmed = MessageDialog.open((int)5, (Shell)this.getShell(), (String)title, (String)message, (int)0x10000000);
        if (confirmed) {
            long startTime = 0L;
            if (DEBUG) {
                startTime = System.currentTimeMillis();
            }
            this.fFilteredTree.setRedraw(false);
            BusyIndicator.showWhile((Display)this.fFilteredTree.getViewer().getTree().getDisplay(), (Runnable)new Runnable(){

                public void run() {
                    NewKeysPreferencePage.this.keyController.setDefaultBindings(NewKeysPreferencePage.this.fBindingService);
                }
            });
            this.fFilteredTree.setRedraw(true);
            if (DEBUG) {
                long elapsedTime = System.currentTimeMillis() - startTime;
                Tracing.printTrace((String)TRACING_COMPONENT, (String)("performDefaults:model in " + elapsedTime + "ms"));
            }
        }
        super.performDefaults();
    }

    private class BindingElementLabelProvider
    extends LabelProvider
    implements ITableLabelProvider {
        private final LocalResourceManager localResourceManager = new LocalResourceManager(JFaceResources.getResources());

        private BindingElementLabelProvider() {
        }

        public final void dispose() {
            super.dispose();
            this.localResourceManager.dispose();
        }

        public String getText(Object element) {
            String rc = this.getColumnText(element, 0);
            if (rc == null) {
                super.getText(element);
            }
            StringBuffer buf = new StringBuffer(rc);
            int i = 1;
            while (i < 4) {
                String text = this.getColumnText(element, i);
                if (text != null) {
                    buf.append(' ');
                    buf.append(text);
                }
                ++i;
            }
            return buf.toString();
        }

        public String getColumnText(Object element, int index) {
            BindingElement bindingElement = (BindingElement)element;
            switch (index) {
                case 0: {
                    return bindingElement.getName();
                }
                case 1: {
                    TriggerSequence seq = bindingElement.getTrigger();
                    return seq == null ? "" : seq.format();
                }
                case 2: {
                    ContextElement context = bindingElement.getContext();
                    return context == null ? "" : context.getName();
                }
                case 3: {
                    return bindingElement.getCategory();
                }
                case 4: {
                    if (bindingElement.getUserDelta() == 1) {
                        if (bindingElement.getConflict().equals(Boolean.TRUE)) {
                            return "CU";
                        }
                        return " U";
                    }
                    if (bindingElement.getConflict().equals(Boolean.TRUE)) {
                        return "C ";
                    }
                    return "  ";
                }
            }
            return null;
        }

        public Image getColumnImage(Object element, int index) {
            BindingElement be = (BindingElement)element;
            switch (index) {
                case 0: {
                    String commandId = be.getId();
                    ImageDescriptor imageDescriptor = NewKeysPreferencePage.this.commandImageService.getImageDescriptor(commandId);
                    if (imageDescriptor == null) {
                        return null;
                    }
                    try {
                        return this.localResourceManager.createImage(imageDescriptor);
                    }
                    catch (DeviceResourceException e) {
                        String message = "Problem retrieving image for a command '" + commandId + '\'';
                        Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e);
                        WorkbenchPlugin.log(message, (IStatus)status);
                        return null;
                    }
                }
            }
            return null;
        }

        /* synthetic */ BindingElementLabelProvider(BindingElementLabelProvider bindingElementLabelProvider, BindingElementLabelProvider bindingElementLabelProvider2) {
            this();
        }
    }

    private final class BindingModelComparator
    extends ViewerComparator {
        private LinkedList sortColumns = new LinkedList();
        private boolean ascending = true;

        public BindingModelComparator() {
            int i = 0;
            while (i < NUM_OF_COLUMNS) {
                this.sortColumns.add(new Integer(i));
                ++i;
            }
        }

        public int getSortColumn() {
            return (Integer)this.sortColumns.getFirst();
        }

        public void setSortColumn(int column) {
            if (column == this.getSortColumn()) {
                return;
            }
            Integer sortColumn = new Integer(column);
            this.sortColumns.remove(sortColumn);
            this.sortColumns.addFirst(sortColumn);
        }

        public boolean isAscending() {
            return this.ascending;
        }

        public void setAscending(boolean ascending) {
            this.ascending = ascending;
        }

        public final int compare(Viewer viewer, Object a, Object b) {
            int result = 0;
            Iterator i = this.sortColumns.iterator();
            while (i.hasNext() && result == 0) {
                int column = (Integer)i.next();
                result = this.compareColumn(viewer, a, b, column);
            }
            return this.ascending ? result : -1 * result;
        }

        private int compareColumn(Viewer viewer, Object a, Object b, int columnNumber) {
            if (columnNumber == 4) {
                return this.sortUser(a, b);
            }
            IBaseLabelProvider baseLabel = ((TreeViewer)viewer).getLabelProvider();
            if (baseLabel instanceof ITableLabelProvider) {
                ITableLabelProvider tableProvider = (ITableLabelProvider)baseLabel;
                String e1p = tableProvider.getColumnText(a, columnNumber);
                String e2p = tableProvider.getColumnText(b, columnNumber);
                if (e1p != null && e2p != null) {
                    return this.getComparator().compare(e1p, e2p);
                }
            }
            return 0;
        }

        private int sortUser(Object a, Object b) {
            int typeA = ((BindingElement)a).getUserDelta();
            int typeB = ((BindingElement)b).getUserDelta();
            int result = typeA - typeB;
            return result;
        }
    }

    protected class CategoryFilterTree
    extends FilteredTree {
        private CategoryPatternFilter filter;

        protected CategoryFilterTree(Composite parent, int treeStyle, CategoryPatternFilter filter) {
            super(parent, treeStyle, filter, true);
            this.filter = filter;
        }

        public void filterCategories(boolean b) {
            this.filter.filterCategories(b);
            this.textChanged();
        }

        public boolean isFilteringCategories() {
            return this.filter.isFilteringCategories();
        }
    }

    private static class ListLabelProvider
    extends LabelProvider {
        private ListLabelProvider() {
        }

        public String getText(Object element) {
            return ((ModelElement)element).getName();
        }
    }

    class ModelContentProvider
    implements ITreeContentProvider {
        ModelContentProvider() {
        }

        public Object[] getChildren(Object parentElement) {
            if (parentElement instanceof BindingModel) {
                return ((BindingModel)parentElement).getBindings().toArray();
            }
            if (parentElement instanceof ContextModel) {
                return ((ContextModel)parentElement).getContexts().toArray();
            }
            if (parentElement instanceof SchemeModel) {
                return ((SchemeModel)parentElement).getSchemes().toArray();
            }
            return new Object[0];
        }

        public Object getParent(Object element) {
            return ((ModelElement)element).getParent();
        }

        public boolean hasChildren(Object element) {
            return element instanceof BindingModel || element instanceof ContextModel || element instanceof SchemeModel;
        }

        public Object[] getElements(Object inputElement) {
            return this.getChildren(inputElement);
        }

        public void dispose() {
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        }
    }

    private final class ResortColumn
    extends SelectionAdapter {
        private final BindingModelComparator comparator;
        private final TreeColumn treeColumn;
        private final TreeViewer viewer;
        private final int column;

        private ResortColumn(BindingModelComparator comparator, TreeColumn treeColumn, TreeViewer viewer, int column) {
            this.comparator = comparator;
            this.treeColumn = treeColumn;
            this.viewer = viewer;
            this.column = column;
        }

        public void widgetSelected(SelectionEvent e) {
            if (this.comparator.getSortColumn() == this.column) {
                this.comparator.setAscending(!this.comparator.isAscending());
                this.viewer.getTree().setSortDirection(this.comparator.isAscending() ? 128 : 1024);
            } else {
                this.viewer.getTree().setSortColumn(this.treeColumn);
                this.comparator.setSortColumn(this.column);
            }
            try {
                this.viewer.getTree().setRedraw(false);
                this.viewer.refresh();
            }
            finally {
                this.viewer.getTree().setRedraw(true);
            }
        }
    }
}

