/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.commands.Category
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.CommandManager
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.commands.contexts.Context
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.Scheme
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeyBinding
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeySequenceText
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.FileDialog
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.TabFolder
 *  org.eclipse.swt.widgets.TabItem
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.keys;

import com.ibm.icu.text.Collator;
import com.ibm.icu.text.MessageFormat;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import org.eclipse.core.commands.Category;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.CommandManager;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeyBinding;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeySequenceText;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.keys.ImageFactory;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.keys.IBindingService;

public final class KeysPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private static final String BINDING_KEY = "Binding.bindings.jface.eclipse.org";
    private static final Image IMAGE_BLANK = ImageFactory.getImage("blank");
    private static final Image IMAGE_CHANGE = ImageFactory.getImage("change");
    private static final String ITEM_DATA_KEY = "org.eclipse.jface.bindings";
    private static final int ITEMS_TO_SHOW = 9;
    private static final ResourceBundle RESOURCE_BUNDLE;
    private static final int VIEW_TOTAL_COLUMNS = 4;
    private static final String[] SORTED_COLUMN_NAMES;
    private static final int TAB_INDEX_MODIFY = 1;
    private static final String[] UNSORTED_COLUMN_NAMES;
    private static final int VIEW_CATEGORY_COLUMN_INDEX = 0;
    private static final int VIEW_COMMAND_COLUMN_INDEX = 1;
    private static final int VIEW_CONTEXT_COLUMN_INDEX = 3;
    private static final int VIEW_KEY_SEQUENCE_COLUMN_INDEX = 2;
    private IActivityManager activityManager;
    private IBindingService bindingService;
    private Button buttonAdd;
    private Button buttonRemove;
    private Button buttonRestore;
    private Map categoryIdsByUniqueName;
    private Map categoryUniqueNamesById;
    private Combo comboCategory;
    private Combo comboCommand;
    private Combo comboContext;
    private Combo comboScheme;
    private Map commandIdsByCategoryId;
    private ParameterizedCommand[] commands = null;
    private ICommandService commandService;
    private Map contextIdsByUniqueName;
    private IContextService contextService;
    private Map contextUniqueNamesById;
    private Label labelBindingsForCommand;
    private Label labelBindingsForTriggerSequence;
    private Label labelContextExtends;
    private Label labelSchemeExtends;
    private final BindingManager localChangeManager = new BindingManager(new ContextManager(), new CommandManager());
    private Map schemeIdsByUniqueName;
    private Map schemeUniqueNamesById;
    private int[] sortOrder;
    private TabFolder tabFolder;
    private Table tableBindings;
    private Table tableBindingsForCommand;
    private Table tableBindingsForTriggerSequence;
    private Text textTriggerSequence;
    private KeySequenceText textTriggerSequenceManager;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.KeysPreferencePage");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
        SORTED_COLUMN_NAMES = new String[4];
        UNSORTED_COLUMN_NAMES = new String[4];
        KeysPreferencePage.UNSORTED_COLUMN_NAMES[0] = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnCategory");
        KeysPreferencePage.UNSORTED_COLUMN_NAMES[1] = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnCommand");
        KeysPreferencePage.UNSORTED_COLUMN_NAMES[2] = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnKeySequence");
        KeysPreferencePage.UNSORTED_COLUMN_NAMES[3] = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnContext");
        KeysPreferencePage.SORTED_COLUMN_NAMES[0] = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnCategorySorted");
        KeysPreferencePage.SORTED_COLUMN_NAMES[1] = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnCommandSorted");
        KeysPreferencePage.SORTED_COLUMN_NAMES[2] = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnKeySequenceSorted");
        KeysPreferencePage.SORTED_COLUMN_NAMES[3] = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnContextSorted");
    }

    public KeysPreferencePage() {
        int[] nArray = new int[4];
        nArray[1] = 1;
        nArray[2] = 2;
        nArray[3] = 3;
        this.sortOrder = nArray;
    }

    public void applyData(Object data) {
        if (data instanceof Binding) {
            this.editBinding((Binding)data);
        }
    }

    protected final Control createContents(Composite parent) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.keys_preference_page_context");
        this.tabFolder = new TabFolder(parent, 0);
        TabItem viewTab = new TabItem(this.tabFolder, 0);
        viewTab.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "viewTab.Text"));
        viewTab.setControl((Control)this.createViewTab(this.tabFolder));
        TabItem modifyTab = new TabItem(this.tabFolder, 0);
        modifyTab.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "modifyTab.Text"));
        modifyTab.setControl((Control)this.createModifyTab(this.tabFolder));
        this.applyDialogFont((Composite)this.tabFolder);
        IPreferenceStore store = this.getPreferenceStore();
        int selectedTab = store.getInt("KEYS_PREFERENCE_SELECTED_TAB");
        if (this.tabFolder.getItemCount() > selectedTab && selectedTab > 0) {
            this.tabFolder.setSelection(selectedTab);
        }
        return this.tabFolder;
    }

    private final Composite createModifyTab(TabFolder parent) {
        Composite composite = new Composite((Composite)parent, 0);
        composite.setLayout((Layout)new GridLayout());
        GridData gridData = new GridData(1808);
        composite.setLayoutData((Object)gridData);
        Composite compositeKeyConfiguration = new Composite(composite, 0);
        GridLayout gridLayout = new GridLayout();
        gridLayout.numColumns = 3;
        compositeKeyConfiguration.setLayout((Layout)gridLayout);
        gridData = new GridData(768);
        compositeKeyConfiguration.setLayoutData((Object)gridData);
        Label labelKeyConfiguration = new Label(compositeKeyConfiguration, 16384);
        labelKeyConfiguration.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "labelScheme"));
        this.comboScheme = new Combo(compositeKeyConfiguration, 8);
        gridData = new GridData();
        gridData.widthHint = 200;
        this.comboScheme.setLayoutData((Object)gridData);
        this.comboScheme.setVisibleItemCount(9);
        this.comboScheme.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public final void widgetSelected(SelectionEvent e) {
                KeysPreferencePage.this.selectedComboScheme();
            }
        });
        this.labelSchemeExtends = new Label(compositeKeyConfiguration, 16384);
        gridData = new GridData(768);
        this.labelSchemeExtends.setLayoutData((Object)gridData);
        Composite spacer = new Composite(composite, 0);
        gridData = new GridData();
        gridData.heightHint = 10;
        gridData.widthHint = 10;
        spacer.setLayoutData((Object)gridData);
        Group groupCommand = new Group(composite, 32);
        gridLayout = new GridLayout();
        gridLayout.numColumns = 3;
        groupCommand.setLayout((Layout)gridLayout);
        gridData = new GridData(1808);
        groupCommand.setLayoutData((Object)gridData);
        groupCommand.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "groupCommand"));
        Label labelCategory = new Label((Composite)groupCommand, 16384);
        gridData = new GridData();
        labelCategory.setLayoutData((Object)gridData);
        labelCategory.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "labelCategory"));
        this.comboCategory = new Combo((Composite)groupCommand, 8);
        gridData = new GridData();
        gridData.horizontalSpan = 2;
        gridData.widthHint = 200;
        this.comboCategory.setLayoutData((Object)gridData);
        this.comboCategory.setVisibleItemCount(9);
        this.comboCategory.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public final void widgetSelected(SelectionEvent e) {
                KeysPreferencePage.this.update();
            }
        });
        Label labelCommand = new Label((Composite)groupCommand, 16384);
        gridData = new GridData();
        labelCommand.setLayoutData((Object)gridData);
        labelCommand.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "labelCommand"));
        this.comboCommand = new Combo((Composite)groupCommand, 8);
        gridData = new GridData();
        gridData.horizontalSpan = 2;
        gridData.widthHint = 300;
        this.comboCommand.setLayoutData((Object)gridData);
        this.comboCommand.setVisibleItemCount(9);
        this.comboCommand.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public final void widgetSelected(SelectionEvent e) {
                KeysPreferencePage.this.update();
            }
        });
        this.labelBindingsForCommand = new Label((Composite)groupCommand, 16384);
        gridData = new GridData(2);
        gridData.verticalAlignment = 1040;
        this.labelBindingsForCommand.setLayoutData((Object)gridData);
        this.labelBindingsForCommand.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "labelAssignmentsForCommand"));
        this.tableBindingsForCommand = new Table((Composite)groupCommand, 68352);
        this.tableBindingsForCommand.setHeaderVisible(true);
        gridData = new GridData(1808);
        gridData.heightHint = 60;
        gridData.horizontalSpan = 2;
        boolean isMac = Util.isMac();
        gridData.widthHint = isMac ? 620 : 520;
        this.tableBindingsForCommand.setLayoutData((Object)gridData);
        TableColumn tableColumnDelta = new TableColumn(this.tableBindingsForCommand, 0, 0);
        tableColumnDelta.setResizable(false);
        tableColumnDelta.setText("");
        tableColumnDelta.setWidth(20);
        TableColumn tableColumnContext = new TableColumn(this.tableBindingsForCommand, 0, 1);
        tableColumnContext.setResizable(true);
        tableColumnContext.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnContext"));
        tableColumnContext.pack();
        tableColumnContext.setWidth(200);
        TableColumn tableColumnKeySequence = new TableColumn(this.tableBindingsForCommand, 0, 2);
        tableColumnKeySequence.setResizable(true);
        tableColumnKeySequence.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnKeySequence"));
        tableColumnKeySequence.pack();
        tableColumnKeySequence.setWidth(300);
        this.tableBindingsForCommand.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDoubleClick(MouseEvent mouseEvent) {
                KeysPreferencePage.this.update();
            }
        });
        this.tableBindingsForCommand.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent selectionEvent) {
                KeysPreferencePage.this.selectedTableBindingsForCommand();
            }
        });
        final Group groupKeySequence = new Group(composite, 32);
        gridLayout = new GridLayout();
        gridLayout.numColumns = 4;
        groupKeySequence.setLayout((Layout)gridLayout);
        gridData = new GridData(1808);
        groupKeySequence.setLayoutData((Object)gridData);
        groupKeySequence.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "groupKeySequence"));
        Label labelKeySequence = new Label((Composite)groupKeySequence, 16384);
        gridData = new GridData();
        labelKeySequence.setLayoutData((Object)gridData);
        labelKeySequence.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "labelKeySequence"));
        this.textTriggerSequence = new Text((Composite)groupKeySequence, 2048);
        this.textTriggerSequence.setFont(groupKeySequence.getFont());
        gridData = new GridData();
        gridData.horizontalSpan = 2;
        gridData.widthHint = 300;
        this.textTriggerSequence.setLayoutData((Object)gridData);
        this.textTriggerSequence.addModifyListener(new ModifyListener(){

            public void modifyText(ModifyEvent e) {
                KeysPreferencePage.this.update();
            }
        });
        this.textTriggerSequence.addFocusListener(new FocusListener(){

            public void focusGained(FocusEvent e) {
                KeysPreferencePage.this.bindingService.setKeyFilterEnabled(false);
            }

            public void focusLost(FocusEvent e) {
                KeysPreferencePage.this.bindingService.setKeyFilterEnabled(true);
            }
        });
        this.textTriggerSequence.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                if (!KeysPreferencePage.this.bindingService.isKeyFilterEnabled()) {
                    KeysPreferencePage.this.bindingService.setKeyFilterEnabled(true);
                }
            }
        });
        this.textTriggerSequenceManager = new KeySequenceText(this.textTriggerSequence);
        this.textTriggerSequenceManager.setKeyStrokeLimit(4);
        final Button buttonAddKey = new Button((Composite)groupKeySequence, 16388);
        buttonAddKey.setToolTipText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "buttonAddKey.ToolTipText"));
        gridData = new GridData();
        gridData.heightHint = this.comboCategory.getTextHeight();
        buttonAddKey.setLayoutData((Object)gridData);
        Control[] tabStops = groupKeySequence.getTabList();
        ArrayList<Object> newTabStops = new ArrayList<Object>();
        int i = 0;
        while (i < tabStops.length) {
            Control tabStop = tabStops[i];
            newTabStops.add(tabStop);
            if (this.textTriggerSequence.equals(tabStop)) {
                newTabStops.add(buttonAddKey);
            }
            ++i;
        }
        Control[] newTabStopArray = newTabStops.toArray(new Control[newTabStops.size()]);
        groupKeySequence.setTabList(newTabStopArray);
        final Menu menuButtonAddKey = new Menu((Control)buttonAddKey);
        Iterator trappedKeyItr = KeySequenceText.TRAPPED_KEYS.iterator();
        while (trappedKeyItr.hasNext()) {
            final KeyStroke trappedKey = (KeyStroke)trappedKeyItr.next();
            MenuItem menuItem = new MenuItem(menuButtonAddKey, 8);
            menuItem.setText(trappedKey.format());
            menuItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    KeysPreferencePage.this.textTriggerSequenceManager.insert(trappedKey);
                    KeysPreferencePage.this.textTriggerSequence.setFocus();
                    KeysPreferencePage.this.textTriggerSequence.setSelection(KeysPreferencePage.this.textTriggerSequence.getTextLimit());
                }
            });
        }
        buttonAddKey.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent selectionEvent) {
                Point buttonLocation = buttonAddKey.getLocation();
                buttonLocation = groupKeySequence.toDisplay(buttonLocation.x, buttonLocation.y);
                Point buttonSize = buttonAddKey.getSize();
                menuButtonAddKey.setLocation(buttonLocation.x, buttonLocation.y + buttonSize.y);
                menuButtonAddKey.setVisible(true);
            }
        });
        this.labelBindingsForTriggerSequence = new Label((Composite)groupKeySequence, 16384);
        gridData = new GridData(2);
        gridData.verticalAlignment = 1040;
        this.labelBindingsForTriggerSequence.setLayoutData((Object)gridData);
        this.labelBindingsForTriggerSequence.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "labelAssignmentsForKeySequence"));
        this.tableBindingsForTriggerSequence = new Table((Composite)groupKeySequence, 68352);
        this.tableBindingsForTriggerSequence.setHeaderVisible(true);
        gridData = new GridData(1808);
        gridData.heightHint = 60;
        gridData.horizontalSpan = 3;
        gridData.widthHint = isMac ? 620 : 520;
        this.tableBindingsForTriggerSequence.setLayoutData((Object)gridData);
        tableColumnDelta = new TableColumn(this.tableBindingsForTriggerSequence, 0, 0);
        tableColumnDelta.setResizable(false);
        tableColumnDelta.setText("");
        tableColumnDelta.setWidth(20);
        tableColumnContext = new TableColumn(this.tableBindingsForTriggerSequence, 0, 1);
        tableColumnContext.setResizable(true);
        tableColumnContext.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnContext"));
        tableColumnContext.pack();
        tableColumnContext.setWidth(200);
        TableColumn tableColumnCommand = new TableColumn(this.tableBindingsForTriggerSequence, 0, 2);
        tableColumnCommand.setResizable(true);
        tableColumnCommand.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "tableColumnCommand"));
        tableColumnCommand.pack();
        tableColumnCommand.setWidth(300);
        this.tableBindingsForTriggerSequence.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDoubleClick(MouseEvent mouseEvent) {
                KeysPreferencePage.this.update();
            }
        });
        this.tableBindingsForTriggerSequence.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent selectionEvent) {
                KeysPreferencePage.this.selectedTableBindingsForTriggerSequence();
            }
        });
        Composite compositeContext = new Composite(composite, 0);
        gridLayout = new GridLayout();
        gridLayout.numColumns = 3;
        compositeContext.setLayout((Layout)gridLayout);
        gridData = new GridData(768);
        compositeContext.setLayoutData((Object)gridData);
        Label labelContext = new Label(compositeContext, 16384);
        labelContext.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "labelContext"));
        this.comboContext = new Combo(compositeContext, 8);
        gridData = new GridData();
        gridData.widthHint = 250;
        this.comboContext.setLayoutData((Object)gridData);
        this.comboContext.setVisibleItemCount(9);
        this.comboContext.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public final void widgetSelected(SelectionEvent e) {
                KeysPreferencePage.this.update();
            }
        });
        this.labelContextExtends = new Label(compositeContext, 16384);
        gridData = new GridData(768);
        this.labelContextExtends.setLayoutData((Object)gridData);
        Composite compositeButton = new Composite(composite, 0);
        gridLayout = new GridLayout();
        gridLayout.marginHeight = 20;
        gridLayout.marginWidth = 0;
        gridLayout.numColumns = 3;
        compositeButton.setLayout((Layout)gridLayout);
        gridData = new GridData();
        compositeButton.setLayoutData((Object)gridData);
        this.buttonAdd = new Button(compositeButton, 0x1000008);
        gridData = new GridData();
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        this.buttonAdd.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "buttonAdd"));
        gridData.widthHint = Math.max(widthHint, this.buttonAdd.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        this.buttonAdd.setLayoutData((Object)gridData);
        this.buttonAdd.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent selectionEvent) {
                KeysPreferencePage.this.selectedButtonAdd();
            }
        });
        this.buttonRemove = new Button(compositeButton, 0x1000008);
        gridData = new GridData();
        widthHint = this.convertHorizontalDLUsToPixels(61);
        this.buttonRemove.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "buttonRemove"));
        gridData.widthHint = Math.max(widthHint, this.buttonRemove.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        this.buttonRemove.setLayoutData((Object)gridData);
        this.buttonRemove.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent selectionEvent) {
                KeysPreferencePage.this.selectedButtonRemove();
            }
        });
        this.buttonRestore = new Button(compositeButton, 0x1000008);
        gridData = new GridData();
        widthHint = this.convertHorizontalDLUsToPixels(61);
        this.buttonRestore.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "buttonRestore"));
        gridData.widthHint = Math.max(widthHint, this.buttonRestore.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        this.buttonRestore.setLayoutData((Object)gridData);
        this.buttonRestore.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent selectionEvent) {
                KeysPreferencePage.this.selectedButtonRestore();
            }
        });
        return composite;
    }

    private final Composite createViewTab(TabFolder parent) {
        GridData gridData = null;
        Composite composite = new Composite((Composite)parent, 0);
        composite.setLayoutData((Object)new GridData(1808));
        composite.setLayout((Layout)new GridLayout());
        this.tableBindings = new Table(composite, 68352);
        this.tableBindings.setHeaderVisible(true);
        gridData = new GridData(1808);
        gridData.heightHint = 400;
        gridData.horizontalSpan = 2;
        this.tableBindings.setLayoutData((Object)gridData);
        TableColumn tableColumnCategory = new TableColumn(this.tableBindings, 0, 0);
        tableColumnCategory.setText(SORTED_COLUMN_NAMES[0]);
        tableColumnCategory.addSelectionListener((SelectionListener)new SortOrderSelectionListener(0));
        TableColumn tableColumnCommand = new TableColumn(this.tableBindings, 0, 1);
        tableColumnCommand.setText(UNSORTED_COLUMN_NAMES[1]);
        tableColumnCommand.addSelectionListener((SelectionListener)new SortOrderSelectionListener(1));
        TableColumn tableColumnKeySequence = new TableColumn(this.tableBindings, 0, 2);
        tableColumnKeySequence.setText(UNSORTED_COLUMN_NAMES[2]);
        tableColumnKeySequence.addSelectionListener((SelectionListener)new SortOrderSelectionListener(2));
        TableColumn tableColumnContext = new TableColumn(this.tableBindings, 0, 3);
        tableColumnContext.setText(UNSORTED_COLUMN_NAMES[3]);
        tableColumnContext.addSelectionListener((SelectionListener)new SortOrderSelectionListener(3));
        this.tableBindings.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public final void widgetDefaultSelected(SelectionEvent e) {
                KeysPreferencePage.this.selectedTableKeyBindings();
            }
        });
        Composite buttonBar = new Composite(composite, 0);
        buttonBar.setLayout((Layout)new GridLayout(2, false));
        gridData = new GridData();
        gridData.horizontalAlignment = 3;
        buttonBar.setLayoutData((Object)gridData);
        Button editButton = new Button(buttonBar, 8);
        gridData = new GridData();
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        editButton.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "buttonEdit"));
        gridData.widthHint = Math.max(widthHint, editButton.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        editButton.setLayoutData((Object)gridData);
        editButton.addSelectionListener(new SelectionListener(){

            public final void widgetDefaultSelected(SelectionEvent event) {
                KeysPreferencePage.this.selectedTableKeyBindings();
            }

            public void widgetSelected(SelectionEvent e) {
                this.widgetDefaultSelected(e);
            }
        });
        Button buttonExport = new Button(buttonBar, 8);
        gridData = new GridData();
        widthHint = this.convertHorizontalDLUsToPixels(61);
        buttonExport.setText(org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "buttonExport"));
        gridData.widthHint = Math.max(widthHint, buttonExport.computeSize((int)-1, (int)-1, (boolean)true).x) + 5;
        buttonExport.setLayoutData((Object)gridData);
        buttonExport.addSelectionListener(new SelectionListener(){

            public final void widgetDefaultSelected(SelectionEvent event) {
                KeysPreferencePage.this.selectedButtonExport();
            }

            public void widgetSelected(SelectionEvent e) {
                this.widgetDefaultSelected(e);
            }
        });
        return composite;
    }

    protected IPreferenceStore doGetPreferenceStore() {
        return PrefUtil.getInternalPreferenceStore();
    }

    public final void editBinding(Binding binding) {
        this.tabFolder.setSelection(1);
        if (binding == null) {
            return;
        }
        ParameterizedCommand command = binding.getParameterizedCommand();
        String categoryName = null;
        String commandName = null;
        try {
            categoryName = command.getCommand().getCategory().getName();
            commandName = command.getName();
        }
        catch (NotDefinedException notDefinedException) {
            return;
        }
        String[] categoryNames = this.comboCategory.getItems();
        int i = 0;
        while (i < categoryNames.length) {
            if (categoryName.equals(categoryNames[i])) break;
            ++i;
        }
        if (i >= this.comboCategory.getItemCount()) {
            return;
        }
        this.comboCategory.select(i);
        this.updateComboCommand();
        String[] commandNames = this.comboCommand.getItems();
        int j = 0;
        while (j < commandNames.length) {
            if (commandName.equals(commandNames[j])) {
                if (this.comboCommand.getSelectionIndex() == j) break;
                this.comboCommand.select(j);
                break;
            }
            ++j;
        }
        if (j >= this.comboCommand.getItemCount()) {
            if (this.comboCommand.getSelectionIndex() != 0) {
                this.comboCommand.select(0);
            }
            this.update();
            return;
        }
        this.update();
        TableItem[] items = this.tableBindingsForCommand.getItems();
        int k = 0;
        while (k < items.length) {
            String currentKeySequence = items[k].getText(2);
            if (binding.getTriggerSequence().format().equals(currentKeySequence)) break;
            ++k;
        }
        if (k < this.tableBindingsForCommand.getItemCount()) {
            this.tableBindingsForCommand.select(k);
            this.tableBindingsForCommand.notifyListeners(13, null);
            this.textTriggerSequence.setFocus();
        }
    }

    private final String getCategoryId() {
        return !this.commandIdsByCategoryId.containsKey(null) || this.comboCategory.getSelectionIndex() > 0 ? (String)this.categoryIdsByUniqueName.get(this.comboCategory.getText()) : null;
    }

    private final String getContextId() {
        return this.comboContext.getSelectionIndex() >= 0 ? (String)this.contextIdsByUniqueName.get(this.comboContext.getText()) : null;
    }

    private final KeySequence getKeySequence() {
        return this.textTriggerSequenceManager.getKeySequence();
    }

    private final ParameterizedCommand getParameterizedCommand() {
        int selectionIndex = this.comboCommand.getSelectionIndex();
        if (selectionIndex >= 0 && this.commands != null && selectionIndex < this.commands.length) {
            return this.commands[selectionIndex];
        }
        return null;
    }

    private final String getSchemeId() {
        return this.comboScheme.getSelectionIndex() >= 0 ? (String)this.schemeIdsByUniqueName.get(this.comboScheme.getText()) : null;
    }

    public final void init(IWorkbench workbench) {
        this.activityManager = workbench.getActivitySupport().getActivityManager();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.bindingService = (IBindingService)workbench.getService(clazz);
        Class<?> clazz2 = class$2;
        if (clazz2 == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.commandService = (ICommandService)workbench.getService(clazz2);
        Class<?> clazz3 = class$3;
        if (clazz3 == null) {
            try {
                clazz3 = class$3 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.contextService = (IContextService)workbench.getService(clazz3);
    }

    private final boolean isActive(Command command) {
        return this.activityManager.getIdentifier(command.getId()).isEnabled();
    }

    private final void logPreferenceStoreException(Throwable exception) {
        String message = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "PreferenceStoreError.Message");
        String exceptionMessage = exception.getMessage();
        if (exceptionMessage == null) {
            exceptionMessage = message;
        }
        Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, exceptionMessage, exception);
        WorkbenchPlugin.log(message, (IStatus)status);
        StatusUtil.handleStatus(message, exception, 2);
    }

    public final boolean performCancel() {
        this.persistSelectedTab();
        return super.performCancel();
    }

    protected final void performDefaults() {
        String title = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "restoreDefaultsMessageBoxText");
        String message = org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "restoreDefaultsMessageBoxMessage");
        boolean confirmed = MessageDialog.open((int)5, (Shell)this.getShell(), (String)title, (String)message, (int)0x10000000);
        if (confirmed) {
            String defaultSchemeId = this.bindingService.getDefaultSchemeId();
            Scheme defaultScheme = this.localChangeManager.getScheme(defaultSchemeId);
            try {
                this.localChangeManager.setActiveScheme(defaultScheme);
            }
            catch (NotDefinedException notDefinedException) {}
            Binding[] currentBindings = this.localChangeManager.getBindings();
            int currentBindingsLength = currentBindings.length;
            HashSet<Binding> trimmedBindings = new HashSet<Binding>();
            int i = 0;
            while (i < currentBindingsLength) {
                Binding binding = currentBindings[i];
                if (binding.getType() != 1) {
                    trimmedBindings.add(binding);
                }
                ++i;
            }
            Binding[] trimmedBindingArray = trimmedBindings.toArray(new Binding[trimmedBindings.size()]);
            this.localChangeManager.setBindings(trimmedBindingArray);
            try {
                this.bindingService.savePreferences(defaultScheme, trimmedBindingArray);
            }
            catch (IOException e) {
                this.logPreferenceStoreException(e);
            }
        }
        this.setScheme(this.localChangeManager.getActiveScheme());
        this.update(true);
        super.performDefaults();
    }

    public final boolean performOk() {
        try {
            this.bindingService.savePreferences(this.localChangeManager.getActiveScheme(), this.localChangeManager.getBindings());
        }
        catch (IOException e) {
            this.logPreferenceStoreException(e);
        }
        this.persistSelectedTab();
        return super.performOk();
    }

    private final void persistSelectedTab() {
        IPreferenceStore store = this.getPreferenceStore();
        store.setValue("KEYS_PREFERENCE_SELECTED_TAB", this.tabFolder.getSelectionIndex());
    }

    private final void selectedButtonAdd() {
        ParameterizedCommand command = this.getParameterizedCommand();
        String contextId = this.getContextId();
        String schemeId = this.getSchemeId();
        KeySequence keySequence = this.getKeySequence();
        this.localChangeManager.removeBindings((TriggerSequence)keySequence, schemeId, contextId, null, null, null, 1);
        this.localChangeManager.addBinding((Binding)new KeyBinding(keySequence, command, schemeId, contextId, null, null, null, 1));
        this.update(true);
    }

    private final void selectedButtonExport() {
        FileDialog fileDialog = new FileDialog(this.getShell(), 0x10002000);
        fileDialog.setFilterExtensions(new String[]{"*.csv"});
        fileDialog.setFilterNames(new String[]{org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "csvFilterName")});
        final String filePath = fileDialog.open();
        if (filePath == null) {
            return;
        }
        SafeRunnable runnable = new SafeRunnable(){

            public final void run() throws IOException {
                Writer fileWriter = null;
                try {
                    fileWriter = new BufferedWriter(new FileWriter(filePath));
                    TableItem[] items = KeysPreferencePage.this.tableBindings.getItems();
                    int numColumns = KeysPreferencePage.this.tableBindings.getColumnCount();
                    int i = 0;
                    while (i < items.length) {
                        TableItem item = items[i];
                        int j = 0;
                        while (j < numColumns) {
                            String buf = org.eclipse.ui.internal.util.Util.replaceAll(item.getText(j), "\"", "\"\"");
                            fileWriter.write("\"" + buf + "\"");
                            if (j < numColumns - 1) {
                                fileWriter.write(44);
                            }
                            ++j;
                        }
                        fileWriter.write(System.getProperty("line.separator"));
                        ++i;
                    }
                }
                catch (Throwable throwable) {
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (fileWriter != null) {
                    try {
                        fileWriter.close();
                    }
                    catch (IOException iOException) {}
                }
            }
        };
        SafeRunner.run((ISafeRunnable)runnable);
    }

    private final void selectedButtonRemove() {
        String contextId = this.getContextId();
        String schemeId = this.getSchemeId();
        KeySequence keySequence = this.getKeySequence();
        this.localChangeManager.removeBindings((TriggerSequence)keySequence, schemeId, contextId, null, null, null, 1);
        this.localChangeManager.addBinding((Binding)new KeyBinding(keySequence, null, schemeId, contextId, null, null, null, 1));
        this.update(true);
    }

    private final void selectedButtonRestore() {
        String contextId = this.getContextId();
        String schemeId = this.getSchemeId();
        KeySequence keySequence = this.getKeySequence();
        this.localChangeManager.removeBindings((TriggerSequence)keySequence, schemeId, contextId, null, null, null, 1);
        this.update(true);
    }

    private final void selectedComboScheme() {
        String activeSchemeId = this.getSchemeId();
        Scheme activeScheme = this.localChangeManager.getScheme(activeSchemeId);
        try {
            this.localChangeManager.setActiveScheme(activeScheme);
        }
        catch (NotDefinedException notDefinedException) {}
        this.update(true);
    }

    private final void selectedTableBindingsForCommand() {
        int selection = this.tableBindingsForCommand.getSelectionIndex();
        if (selection >= 0 && selection < this.tableBindingsForCommand.getItemCount()) {
            TableItem item = this.tableBindingsForCommand.getItem(selection);
            KeyBinding binding = (KeyBinding)item.getData(ITEM_DATA_KEY);
            this.setContextId(binding.getContextId());
            this.setKeySequence(binding.getKeySequence());
        }
        this.update();
    }

    private final void selectedTableBindingsForTriggerSequence() {
        int selection = this.tableBindingsForTriggerSequence.getSelectionIndex();
        if (selection >= 0 && selection < this.tableBindingsForTriggerSequence.getItemCount()) {
            TableItem item = this.tableBindingsForTriggerSequence.getItem(selection);
            Binding binding = (Binding)item.getData(ITEM_DATA_KEY);
            this.setContextId(binding.getContextId());
        }
        this.update();
    }

    private final void selectedTableKeyBindings() {
        int selectionIndex = this.tableBindings.getSelectionIndex();
        if (selectionIndex != -1) {
            TableItem item = this.tableBindings.getItem(selectionIndex);
            Binding binding = (Binding)item.getData(BINDING_KEY);
            this.editBinding(binding);
        } else {
            this.editBinding(null);
        }
    }

    private final void setContextId(String contextId) {
        this.comboContext.clearSelection();
        this.comboContext.deselectAll();
        String contextName = (String)this.contextUniqueNamesById.get(contextId);
        if (contextName == null) {
            contextName = (String)this.contextUniqueNamesById.get("org.eclipse.ui.contexts.window");
        }
        if (contextName == null) {
            contextName = "";
        }
        String[] items = this.comboContext.getItems();
        boolean found = false;
        int i = 0;
        while (i < items.length) {
            if (contextName.equals(items[i])) {
                this.comboContext.select(i);
                found = true;
                break;
            }
            ++i;
        }
        if (!found && items.length > 0) {
            this.comboContext.select(0);
        }
    }

    private final void setKeySequence(KeySequence keySequence) {
        this.textTriggerSequenceManager.setKeySequence(keySequence);
    }

    private final void setParameterizedCommand(ParameterizedCommand command) {
        int i = 0;
        if (this.commands != null) {
            int commandCount = this.commands.length;
            while (i < commandCount) {
                if (this.commands[i].equals((Object)command)) {
                    if (this.comboCommand.getSelectionIndex() == i || i >= this.comboCommand.getItemCount()) break;
                    this.comboCommand.select(i);
                    break;
                }
                ++i;
            }
            if (i >= this.comboCommand.getItemCount() && this.comboCommand.getSelectionIndex() != 0) {
                this.comboCommand.select(0);
            }
        }
    }

    private final void setScheme(Scheme scheme) {
        this.comboScheme.clearSelection();
        this.comboScheme.deselectAll();
        String schemeUniqueName = (String)this.schemeUniqueNamesById.get(scheme.getId());
        if (schemeUniqueName != null) {
            String[] items = this.comboScheme.getItems();
            int i = 0;
            while (i < items.length) {
                if (schemeUniqueName.equals(items[i])) {
                    this.comboScheme.select(i);
                    break;
                }
                ++i;
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    public final void setVisible(boolean visible) {
        block31: {
            if (!visible) break block31;
            contextsByName = new HashMap<String, HashSet<Context>>();
            iterator = this.contextService.getDefinedContextIds().iterator();
            while (iterator.hasNext()) {
                context = this.contextService.getContext((String)iterator.next());
                try {
                    name = context.getName();
                    contexts = (HashSet<Context>)contextsByName.get(name);
                    if (contexts == null) {
                        contexts = new HashSet<Context>();
                        contextsByName.put(name, contexts);
                    }
                    contexts.add(context);
                }
                catch (NotDefinedException v0) {}
            }
            commandsByName = new HashMap<String, HashSet<Command>>();
            iterator = this.commandService.getDefinedCommandIds().iterator();
            while (iterator.hasNext()) {
                command = this.commandService.getCommand((String)iterator.next());
                if (!this.isActive(command)) continue;
                try {
                    name = command.getName();
                    commands = (HashSet<Command>)commandsByName.get(name);
                    if (commands == null) {
                        commands = new HashSet<Command>();
                        commandsByName.put(name, commands);
                    }
                    commands.add(command);
                }
                catch (NotDefinedException v1) {}
            }
            this.commandIdsByCategoryId = new HashMap<K, V>();
            iterator = this.commandService.getDefinedCommandIds().iterator();
            while (iterator.hasNext()) {
                command = this.commandService.getCommand((String)iterator.next());
                if (!this.isActive(command)) continue;
                try {
                    categoryId = command.getCategory().getId();
                    commandIds = (HashSet<String>)this.commandIdsByCategoryId.get(categoryId);
                    if (commandIds == null) {
                        commandIds = new HashSet<String>();
                        this.commandIdsByCategoryId.put(categoryId, commandIds);
                    }
                    commandIds.add(command.getId());
                }
                catch (NotDefinedException v2) {}
            }
            categoriesByName = new HashMap<String, HashSet<Category>>();
            iterator = this.commandService.getDefinedCategoryIds().iterator();
            while (iterator.hasNext()) {
                category = this.commandService.getCategory((String)iterator.next());
                try {
                    if (!this.commandIdsByCategoryId.containsKey(category.getId())) continue;
                    name = category.getName();
                    categories = (HashSet<Category>)categoriesByName.get(name);
                    if (categories == null) {
                        categories = new HashSet<Category>();
                        categoriesByName.put(name, categories);
                    }
                    categories.add(category);
                }
                catch (NotDefinedException v3) {}
            }
            schemesByName = new HashMap<String, HashSet<Scheme>>();
            definedSchemes = this.bindingService.getDefinedSchemes();
            i = 0;
            while (i < definedSchemes.length) {
                scheme = definedSchemes[i];
                try {
                    name = scheme.getName();
                    schemes = (HashSet<Scheme>)schemesByName.get(name);
                    if (schemes == null) {
                        schemes = new HashSet<Scheme>();
                        schemesByName.put(name, schemes);
                    }
                    schemes.add(scheme);
                }
                catch (NotDefinedException v4) {}
                ++i;
            }
            this.contextIdsByUniqueName = new HashMap<K, V>();
            this.contextUniqueNamesById = new HashMap<K, V>();
            iterator = contextsByName.entrySet().iterator();
            while (iterator.hasNext()) {
                entry = iterator.next();
                name = (String)entry.getKey();
                contexts = (Set)entry.getValue();
                iterator2 = contexts.iterator();
                if (contexts.size() != 1) ** GOTO lbl108
                context = (Context)iterator2.next();
                this.contextIdsByUniqueName.put(name, context.getId());
                this.contextUniqueNamesById.put(context.getId(), name);
                continue;
lbl-1000:
                // 1 sources

                {
                    context = (Context)iterator2.next();
                    uniqueName = MessageFormat.format((String)org.eclipse.ui.internal.util.Util.translateString(KeysPreferencePage.RESOURCE_BUNDLE, "uniqueName"), (Object[])new Object[]{name, context.getId()});
                    this.contextIdsByUniqueName.put(uniqueName, context.getId());
                    this.contextUniqueNamesById.put(context.getId(), uniqueName);
lbl108:
                    // 2 sources

                    ** while (iterator2.hasNext())
                }
lbl109:
                // 1 sources

            }
            this.categoryIdsByUniqueName = new HashMap<K, V>();
            this.categoryUniqueNamesById = new HashMap<K, V>();
            iterator = categoriesByName.entrySet().iterator();
            while (iterator.hasNext()) {
                entry = iterator.next();
                name = (String)entry.getKey();
                categories = (Set)entry.getValue();
                iterator2 = categories.iterator();
                if (categories.size() != 1) ** GOTO lbl131
                category = (Category)iterator2.next();
                this.categoryIdsByUniqueName.put(name, category.getId());
                this.categoryUniqueNamesById.put(category.getId(), name);
                continue;
lbl-1000:
                // 1 sources

                {
                    category = (Category)iterator2.next();
                    uniqueName = MessageFormat.format((String)org.eclipse.ui.internal.util.Util.translateString(KeysPreferencePage.RESOURCE_BUNDLE, "uniqueName"), (Object[])new Object[]{name, category.getId()});
                    this.categoryIdsByUniqueName.put(uniqueName, category.getId());
                    this.categoryUniqueNamesById.put(category.getId(), uniqueName);
lbl131:
                    // 2 sources

                    ** while (iterator2.hasNext())
                }
lbl132:
                // 1 sources

            }
            this.schemeIdsByUniqueName = new HashMap<K, V>();
            this.schemeUniqueNamesById = new HashMap<K, V>();
            iterator = schemesByName.entrySet().iterator();
            while (iterator.hasNext()) {
                entry = iterator.next();
                name = (String)entry.getKey();
                keyConfigurations = (Set)entry.getValue();
                iterator2 = keyConfigurations.iterator();
                if (keyConfigurations.size() != 1) ** GOTO lbl154
                scheme = (Scheme)iterator2.next();
                this.schemeIdsByUniqueName.put(name, scheme.getId());
                this.schemeUniqueNamesById.put(scheme.getId(), name);
                continue;
lbl-1000:
                // 1 sources

                {
                    scheme = (Scheme)iterator2.next();
                    uniqueName = MessageFormat.format((String)org.eclipse.ui.internal.util.Util.translateString(KeysPreferencePage.RESOURCE_BUNDLE, "uniqueName"), (Object[])new Object[]{name, scheme.getId()});
                    this.schemeIdsByUniqueName.put(uniqueName, scheme.getId());
                    this.schemeUniqueNamesById.put(scheme.getId(), uniqueName);
lbl154:
                    // 2 sources

                    ** while (iterator2.hasNext())
                }
lbl155:
                // 1 sources

            }
            activeScheme = this.bindingService.getActiveScheme();
            try {
                i = 0;
                while (i < definedSchemes.length) {
                    scheme = definedSchemes[i];
                    copy = this.localChangeManager.getScheme(scheme.getId());
                    copy.define(scheme.getName(), scheme.getDescription(), scheme.getParentId());
                    ++i;
                }
                this.localChangeManager.setActiveScheme(this.bindingService.getActiveScheme());
            }
            catch (NotDefinedException v5) {
                throw new Error("There is a programmer error in the keys preference page");
            }
            this.localChangeManager.setLocale(this.bindingService.getLocale());
            this.localChangeManager.setPlatform(this.bindingService.getPlatform());
            this.localChangeManager.setBindings(this.bindingService.getBindings());
            categoryNames = new ArrayList<K>(this.categoryIdsByUniqueName.keySet());
            Collections.sort(categoryNames, Collator.getInstance());
            if (this.commandIdsByCategoryId.containsKey(null)) {
                categoryNames.add(0, org.eclipse.ui.internal.util.Util.translateString(KeysPreferencePage.RESOURCE_BUNDLE, "other"));
            }
            this.comboCategory.setItems(categoryNames.toArray(new String[categoryNames.size()]));
            this.comboCategory.clearSelection();
            this.comboCategory.deselectAll();
            if (this.commandIdsByCategoryId.containsKey(null) || !categoryNames.isEmpty()) {
                this.comboCategory.select(0);
            }
            schemeNames = new ArrayList<K>(this.schemeIdsByUniqueName.keySet());
            Collections.sort(schemeNames, Collator.getInstance());
            this.comboScheme.setItems(schemeNames.toArray(new String[schemeNames.size()]));
            this.setScheme(activeScheme);
            this.update(true);
        }
        super.setVisible(visible);
    }

    private final void update() {
        this.update(false);
    }

    private final void update(boolean updateViewTab) {
        if (updateViewTab) {
            this.updateViewTab();
        }
        this.updateComboCommand();
        this.updateComboContext();
        KeySequence triggerSequence = this.getKeySequence();
        this.updateTableBindingsForTriggerSequence((TriggerSequence)triggerSequence);
        ParameterizedCommand command = this.getParameterizedCommand();
        this.updateTableBindingsForCommand(command);
        String contextId = this.getContextId();
        this.updateSelection(this.tableBindingsForTriggerSequence, contextId, (TriggerSequence)triggerSequence);
        this.updateSelection(this.tableBindingsForCommand, contextId, (TriggerSequence)triggerSequence);
        this.updateLabelSchemeExtends();
        this.updateLabelContextExtends();
        this.updateEnabled((TriggerSequence)triggerSequence, command);
    }

    private final void updateComboCommand() {
        ParameterizedCommand command = this.getParameterizedCommand();
        String categoryId = this.getCategoryId();
        Set commandIds = (Set)this.commandIdsByCategoryId.get(categoryId);
        if (commandIds == null) {
            commandIds = Collections.EMPTY_SET;
        }
        List commands = new ArrayList();
        Iterator commandIdItr = commandIds.iterator();
        while (commandIdItr.hasNext()) {
            String currentCommandId = (String)commandIdItr.next();
            Command currentCommand = this.commandService.getCommand(currentCommandId);
            try {
                commands.addAll(ParameterizedCommand.generateCombinations((Command)currentCommand));
            }
            catch (NotDefinedException notDefinedException) {}
        }
        commands = this.sortParameterizedCommands(commands);
        int commandCount = commands.size();
        this.commands = commands.toArray(new ParameterizedCommand[commandCount]);
        Object[] commandNames = new String[commandCount];
        int i = 0;
        while (i < commandCount) {
            try {
                commandNames[i] = this.commands[i].getName();
            }
            catch (NotDefinedException notDefinedException) {
                throw new Error("Concurrent modification of the command's defined state");
            }
            ++i;
        }
        Object[] currentItems = this.comboCommand.getItems();
        if (!Arrays.equals(currentItems, commandNames)) {
            this.comboCommand.setItems((String[])commandNames);
        }
        this.setParameterizedCommand(command);
        if (this.comboCommand.getSelectionIndex() == -1 && commandCount > 0) {
            this.comboCommand.select(0);
        }
    }

    private List sortParameterizedCommands(List commands) {
        final Collator collator = Collator.getInstance();
        Comparator comparator = new Comparator(){

            public int compare(Object o1, Object o2) {
                String name1 = null;
                String name2 = null;
                try {
                    name1 = ((ParameterizedCommand)o1).getName();
                }
                catch (NotDefinedException notDefinedException) {
                    return -1;
                }
                try {
                    name2 = ((ParameterizedCommand)o2).getName();
                }
                catch (NotDefinedException notDefinedException) {
                    return 1;
                }
                int rc = collator.compare(name1, name2);
                if (rc != 0) {
                    return rc;
                }
                String id1 = ((ParameterizedCommand)o1).getId();
                String id2 = ((ParameterizedCommand)o2).getId();
                return collator.compare(id1, id2);
            }
        };
        Collections.sort(commands, comparator);
        return commands;
    }

    private final void updateComboContext() {
        String contextId = this.getContextId();
        HashMap contextIdsByName = new HashMap(this.contextIdsByUniqueName);
        ArrayList contextNames = new ArrayList(contextIdsByName.keySet());
        Collections.sort(contextNames, Collator.getInstance());
        this.comboContext.setItems(contextNames.toArray(new String[contextNames.size()]));
        this.setContextId(contextId);
        if (this.comboContext.getSelectionIndex() == -1 && !contextNames.isEmpty()) {
            this.comboContext.select(0);
        }
    }

    private final void updateEnabled(TriggerSequence triggerSequence, ParameterizedCommand command) {
        boolean commandSelected = command != null;
        this.labelBindingsForCommand.setEnabled(commandSelected);
        this.tableBindingsForCommand.setEnabled(commandSelected);
        boolean triggerSequenceSelected = !triggerSequence.isEmpty();
        this.labelBindingsForTriggerSequence.setEnabled(triggerSequenceSelected);
        this.tableBindingsForTriggerSequence.setEnabled(triggerSequenceSelected);
        boolean buttonsEnabled = commandSelected && triggerSequenceSelected;
        this.buttonAdd.setEnabled(buttonsEnabled);
        this.buttonRemove.setEnabled(buttonsEnabled);
        this.buttonRestore.setEnabled(buttonsEnabled);
    }

    private final void updateLabelContextExtends() {
        Context context;
        String contextId = this.getContextId();
        if (contextId != null && (context = this.contextService.getContext(this.getContextId())).isDefined()) {
            try {
                String name;
                String parentId = context.getParentId();
                if (parentId != null && (name = (String)this.contextUniqueNamesById.get(parentId)) != null) {
                    this.labelContextExtends.setText(MessageFormat.format((String)org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "extends"), (Object[])new Object[]{name}));
                    return;
                }
            }
            catch (NotDefinedException notDefinedException) {}
        }
        this.labelContextExtends.setText("");
    }

    private final void updateLabelSchemeExtends() {
        String schemeId = this.getSchemeId();
        if (schemeId != null) {
            Scheme scheme = this.bindingService.getScheme(schemeId);
            try {
                String name = (String)this.schemeUniqueNamesById.get(scheme.getParentId());
                if (name != null) {
                    this.labelSchemeExtends.setText(MessageFormat.format((String)org.eclipse.ui.internal.util.Util.translateString(RESOURCE_BUNDLE, "extends"), (Object[])new Object[]{name}));
                    return;
                }
            }
            catch (NotDefinedException notDefinedException) {}
        }
        this.labelSchemeExtends.setText("");
    }

    private final void updateSelection(Table table, String contextId, TriggerSequence triggerSequence) {
        if (table.getSelectionCount() > 1) {
            table.deselectAll();
        }
        TableItem[] items = table.getItems();
        int selection = -1;
        int i = 0;
        while (i < items.length) {
            Binding binding = (Binding)items[i].getData(ITEM_DATA_KEY);
            if (org.eclipse.ui.internal.util.Util.equals(contextId, binding.getContextId()) && org.eclipse.ui.internal.util.Util.equals(triggerSequence, binding.getTriggerSequence())) {
                selection = i;
                break;
            }
            ++i;
        }
        if (selection != -1) {
            table.select(selection);
        }
    }

    private final void updateTableBindingsForCommand(ParameterizedCommand parameterizedCommand) {
        this.tableBindingsForCommand.removeAll();
        Collection bindings = this.localChangeManager.getActiveBindingsDisregardingContextFlat();
        Iterator bindingItr = bindings.iterator();
        while (bindingItr.hasNext()) {
            Binding binding = (Binding)bindingItr.next();
            if (!org.eclipse.ui.internal.util.Util.equals(parameterizedCommand, binding.getParameterizedCommand())) continue;
            TableItem tableItem = new TableItem(this.tableBindingsForCommand, 0);
            tableItem.setData(ITEM_DATA_KEY, (Object)binding);
            if (binding.getType() == 0) {
                tableItem.setImage(0, IMAGE_BLANK);
            } else {
                tableItem.setImage(0, IMAGE_CHANGE);
            }
            String contextName = (String)this.contextUniqueNamesById.get(binding.getContextId());
            if (contextName == null) {
                contextName = "";
            }
            tableItem.setText(1, contextName);
            tableItem.setText(2, binding.getTriggerSequence().format());
        }
    }

    private final void updateTableBindingsForTriggerSequence(TriggerSequence triggerSequence) {
        this.tableBindingsForTriggerSequence.removeAll();
        Map activeBindings = this.localChangeManager.getActiveBindingsDisregardingContext();
        Collection bindings = (Collection)activeBindings.get(triggerSequence);
        if (bindings == null) {
            return;
        }
        Iterator bindingItr = bindings.iterator();
        while (bindingItr.hasNext()) {
            Binding binding = (Binding)bindingItr.next();
            Context context = this.contextService.getContext(binding.getContextId());
            ParameterizedCommand parameterizedCommand = binding.getParameterizedCommand();
            Command command = parameterizedCommand.getCommand();
            if (!context.isDefined() && !command.isDefined()) continue;
            TableItem tableItem = new TableItem(this.tableBindingsForTriggerSequence, 0);
            tableItem.setData(ITEM_DATA_KEY, (Object)binding);
            if (binding.getType() == 0) {
                tableItem.setImage(0, IMAGE_BLANK);
            } else {
                tableItem.setImage(0, IMAGE_CHANGE);
            }
            try {
                tableItem.setText(1, context.getName());
                tableItem.setText(2, parameterizedCommand.getName());
            }
            catch (NotDefinedException notDefinedException) {
                throw new Error("Context or command became undefined on a non-UI thread while the UI thread was processing.");
            }
        }
    }

    private final void updateViewTab() {
        this.tableBindings.removeAll();
        ArrayList bindings = new ArrayList(this.localChangeManager.getActiveBindingsDisregardingContextFlat());
        Collections.sort(bindings, new Comparator(){

            public final int compare(Object object1, Object object2) {
                Binding binding1 = (Binding)object1;
                Binding binding2 = (Binding)object2;
                Command command1 = binding1.getParameterizedCommand().getCommand();
                String categoryName1 = "";
                String commandName1 = "";
                try {
                    commandName1 = command1.getName();
                    categoryName1 = command1.getCategory().getName();
                }
                catch (NotDefinedException notDefinedException) {}
                String triggerSequence1 = binding1.getTriggerSequence().format();
                String contextId1 = binding1.getContextId();
                String contextName1 = "";
                if (contextId1 != null) {
                    Context context = KeysPreferencePage.this.contextService.getContext(contextId1);
                    try {
                        contextName1 = context.getName();
                    }
                    catch (NotDefinedException notDefinedException) {}
                }
                Command command2 = binding2.getParameterizedCommand().getCommand();
                String categoryName2 = "";
                String commandName2 = "";
                try {
                    commandName2 = command2.getName();
                    categoryName2 = command2.getCategory().getName();
                }
                catch (NotDefinedException notDefinedException) {}
                String keySequence2 = binding2.getTriggerSequence().format();
                String contextId2 = binding2.getContextId();
                String contextName2 = "";
                if (contextId2 != null) {
                    Context context = KeysPreferencePage.this.contextService.getContext(contextId2);
                    try {
                        contextName2 = context.getName();
                    }
                    catch (NotDefinedException notDefinedException) {}
                }
                int compare = 0;
                int i = 0;
                while (i < KeysPreferencePage.this.sortOrder.length) {
                    switch (KeysPreferencePage.this.sortOrder[i]) {
                        case 0: {
                            compare = org.eclipse.ui.internal.util.Util.compare((Comparable)((Object)categoryName1), (Comparable)((Object)categoryName2));
                            if (compare == 0) break;
                            return compare;
                        }
                        case 1: {
                            compare = org.eclipse.ui.internal.util.Util.compare((Comparable)((Object)commandName1), (Comparable)((Object)commandName2));
                            if (compare == 0) break;
                            return compare;
                        }
                        case 2: {
                            compare = org.eclipse.ui.internal.util.Util.compare((Comparable)((Object)triggerSequence1), (Comparable)((Object)keySequence2));
                            if (compare == 0) break;
                            return compare;
                        }
                        case 3: {
                            compare = org.eclipse.ui.internal.util.Util.compare((Comparable)((Object)contextName1), (Comparable)((Object)contextName2));
                            if (compare == 0) break;
                            return compare;
                        }
                        default: {
                            throw new Error("Programmer error: added another sort column without modifying the comparator.");
                        }
                    }
                    ++i;
                }
                return compare;
            }

            public final boolean equals(Object object) {
                return super.equals(object);
            }
        });
        Iterator keyBindingItr = bindings.iterator();
        while (keyBindingItr.hasNext()) {
            Binding binding = (Binding)keyBindingItr.next();
            ParameterizedCommand command = binding.getParameterizedCommand();
            String commandName = "";
            String categoryName = "";
            try {
                commandName = command.getName();
                categoryName = command.getCommand().getCategory().getName();
            }
            catch (NotDefinedException notDefinedException) {}
            if (commandName == null || commandName.length() == 0) continue;
            String contextId = binding.getContextId();
            String contextName = "";
            if (contextId != null) {
                Context context = this.contextService.getContext(contextId);
                try {
                    contextName = context.getName();
                }
                catch (NotDefinedException notDefinedException) {}
            }
            TableItem item = new TableItem(this.tableBindings, 0);
            item.setText(0, categoryName);
            item.setText(1, commandName);
            item.setText(2, binding.getTriggerSequence().format());
            item.setText(3, contextName);
            item.setData(BINDING_KEY, (Object)binding);
        }
        int i = 0;
        while (i < this.tableBindings.getColumnCount()) {
            this.tableBindings.getColumn(i).pack();
            ++i;
        }
    }

    private class SortOrderSelectionListener
    extends SelectionAdapter {
        private final int columnSelected;

        private SortOrderSelectionListener(int columnSelected) {
            this.columnSelected = columnSelected;
        }

        public void widgetSelected(SelectionEvent e) {
            int oldSortIndex = KeysPreferencePage.this.sortOrder[0];
            TableColumn oldSortColumn = KeysPreferencePage.this.tableBindings.getColumn(oldSortIndex);
            oldSortColumn.setText(UNSORTED_COLUMN_NAMES[oldSortIndex]);
            TableColumn newSortColumn = KeysPreferencePage.this.tableBindings.getColumn(this.columnSelected);
            newSortColumn.setText(SORTED_COLUMN_NAMES[this.columnSelected]);
            boolean columnPlaced = false;
            boolean enoughRoom = false;
            int bumpedColumn = -1;
            int i = 0;
            while (i < KeysPreferencePage.this.sortOrder.length) {
                if (KeysPreferencePage.this.sortOrder[i] == this.columnSelected) {
                    enoughRoom = true;
                    if (bumpedColumn != -1) {
                        ((KeysPreferencePage)KeysPreferencePage.this).sortOrder[i] = bumpedColumn;
                        break;
                    }
                    columnPlaced = true;
                    break;
                }
                if (columnPlaced) {
                    int temp = KeysPreferencePage.this.sortOrder[i];
                    ((KeysPreferencePage)KeysPreferencePage.this).sortOrder[i] = bumpedColumn;
                    bumpedColumn = temp;
                } else {
                    bumpedColumn = KeysPreferencePage.this.sortOrder[i];
                    ((KeysPreferencePage)KeysPreferencePage.this).sortOrder[i] = this.columnSelected;
                    columnPlaced = true;
                }
                ++i;
            }
            if (!enoughRoom) {
                int[] newSortOrder = new int[KeysPreferencePage.this.sortOrder.length + 1];
                System.arraycopy(KeysPreferencePage.this.sortOrder, 0, newSortOrder, 0, KeysPreferencePage.this.sortOrder.length);
                newSortOrder[((KeysPreferencePage)KeysPreferencePage.this).sortOrder.length] = bumpedColumn;
                KeysPreferencePage.this.sortOrder = newSortOrder;
            }
            KeysPreferencePage.this.updateViewTab();
        }
    }
}

