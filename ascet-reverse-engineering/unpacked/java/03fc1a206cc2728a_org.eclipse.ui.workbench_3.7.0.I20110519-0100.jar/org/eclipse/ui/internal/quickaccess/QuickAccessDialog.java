/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.bindings.keys.SWTKeySupport
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.PopupDialog
 *  org.eclipse.jface.layout.GridDataFactory
 *  org.eclipse.jface.layout.GridLayoutFactory
 *  org.eclipse.jface.layout.TableColumnLayout
 *  org.eclipse.jface.resource.FontDescriptor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.ColumnLayoutData
 *  org.eclipse.jface.viewers.ColumnWeightData
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.ControlAdapter
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.graphics.TextLayout
 *  org.eclipse.swt.graphics.TextStyle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.Command;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.SWTKeySupport;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.PopupDialog;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.layout.TableColumnLayout;
import org.eclipse.jface.resource.FontDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.ColumnLayoutData;
import org.eclipse.jface.viewers.ColumnWeightData;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.quickaccess.ActionProvider;
import org.eclipse.ui.internal.quickaccess.CommandProvider;
import org.eclipse.ui.internal.quickaccess.EditorProvider;
import org.eclipse.ui.internal.quickaccess.PerspectiveProvider;
import org.eclipse.ui.internal.quickaccess.PreferenceProvider;
import org.eclipse.ui.internal.quickaccess.PropertiesProvider;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessEntry;
import org.eclipse.ui.internal.quickaccess.QuickAccessMessages;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;
import org.eclipse.ui.internal.quickaccess.ViewProvider;
import org.eclipse.ui.internal.quickaccess.WizardProvider;
import org.eclipse.ui.keys.IBindingService;
import org.eclipse.ui.themes.ColorUtil;

public class QuickAccessDialog
extends PopupDialog {
    private static final int INITIAL_COUNT_PER_PROVIDER = 5;
    private static final int MAX_COUNT_TOTAL = 20;
    protected Text filterText;
    private QuickAccessProvider[] providers;
    private IWorkbenchWindow window;
    protected Table table;
    private LocalResourceManager resourceManager = new LocalResourceManager(JFaceResources.getResources());
    private static final String TEXT_ARRAY = "textArray";
    private static final String TEXT_ENTRIES = "textEntries";
    private static final String ORDERED_PROVIDERS = "orderedProviders";
    private static final String ORDERED_ELEMENTS = "orderedElements";
    static final int MAXIMUM_NUMBER_OF_ELEMENTS = 60;
    static final int MAXIMUM_NUMBER_OF_TEXT_ENTRIES_PER_ELEMENT = 3;
    protected String rememberedText;
    protected Map textMap = new HashMap();
    protected Map elementMap = new HashMap();
    private LinkedList previousPicksList = new LinkedList();
    protected Map providerMap;
    private Color grayColor;
    private TextLayout textLayout;
    private TriggerSequence[] invokingCommandKeySequences;
    private Command invokingCommand;
    private KeyAdapter keyAdapter;
    private boolean showAllMatches = false;
    protected boolean resized = false;
    static /* synthetic */ Class class$0;

    public QuickAccessDialog(IWorkbenchWindow window, final Command invokingCommand) {
        super(ProgressManagerUtil.getDefaultParent(), 16, true, true, false, true, true, null, QuickAccessMessages.QuickAccess_StartTypingToFindMatches);
        this.window = window;
        BusyIndicator.showWhile((Display)(window.getShell() == null ? null : window.getShell().getDisplay()), (Runnable)new Runnable(){

            public void run() {
                QuickAccessDialog.this.providers = new QuickAccessProvider[]{new PreviousPicksProvider(), new EditorProvider(), new ViewProvider(), new PerspectiveProvider(), new CommandProvider(), new ActionProvider(), new WizardProvider(), new PreferenceProvider(), new PropertiesProvider()};
                QuickAccessDialog.this.providerMap = new HashMap();
                int i = 0;
                while (i < QuickAccessDialog.this.providers.length) {
                    QuickAccessDialog.this.providerMap.put(QuickAccessDialog.this.providers[i].getId(), QuickAccessDialog.this.providers[i]);
                    ++i;
                }
                QuickAccessDialog.this.restoreDialog();
                QuickAccessDialog.this.invokingCommand = invokingCommand;
                if (QuickAccessDialog.this.invokingCommand != null && !QuickAccessDialog.this.invokingCommand.isDefined()) {
                    QuickAccessDialog.this.invokingCommand = null;
                } else {
                    QuickAccessDialog.this.getInvokingCommandKeySequences();
                }
                QuickAccessDialog.this.create();
            }
        });
        this.getShell().getDisplay().asyncExec(new Runnable(){

            public void run() {
                Shell shell = QuickAccessDialog.this.getShell();
                if (shell != null && !shell.isDisposed()) {
                    Point size = shell.getSize();
                    shell.setSize(size.x, size.y + 1);
                }
            }
        });
    }

    protected Control createTitleControl(Composite parent) {
        this.filterText = new Text(parent, 0);
        GridDataFactory.fillDefaults().align(4, 0x1000000).grab(true, false).applyTo((Control)this.filterText);
        this.filterText.addKeyListener((KeyListener)this.getKeyAdapter());
        this.filterText.addKeyListener(new KeyListener(){

            public void keyPressed(KeyEvent e) {
                switch (e.keyCode) {
                    case 13: 
                    case 0x1000050: {
                        QuickAccessDialog.this.handleSelection();
                        break;
                    }
                    case 0x1000002: {
                        int index = QuickAccessDialog.this.table.getSelectionIndex();
                        if (index != -1 && QuickAccessDialog.this.table.getItemCount() > index + 1) {
                            QuickAccessDialog.this.table.setSelection(index + 1);
                        }
                        QuickAccessDialog.this.table.setFocus();
                        break;
                    }
                    case 0x1000001: {
                        int index = QuickAccessDialog.this.table.getSelectionIndex();
                        if (index == -1 || index < 1) break;
                        QuickAccessDialog.this.table.setSelection(index - 1);
                        QuickAccessDialog.this.table.setFocus();
                        break;
                    }
                    case 27: {
                        QuickAccessDialog.this.close();
                    }
                }
            }

            public void keyReleased(KeyEvent e) {
            }
        });
        this.filterText.addModifyListener(new ModifyListener(){

            public void modifyText(ModifyEvent e) {
                String text = ((Text)e.widget).getText().toLowerCase();
                QuickAccessDialog.this.refresh(text);
            }
        });
        return this.filterText;
    }

    protected Control createDialogArea(Composite parent) {
        TextStyle boldStyle;
        Composite composite = (Composite)super.createDialogArea(parent);
        boolean isWin32 = Util.isWindows();
        GridLayoutFactory.fillDefaults().extendedMargins(isWin32 ? 0 : 3, 3, 2, 2).applyTo(composite);
        Composite tableComposite = new Composite(composite, 0);
        GridDataFactory.fillDefaults().grab(true, true).applyTo((Control)tableComposite);
        TableColumnLayout tableColumnLayout = new TableColumnLayout();
        tableComposite.setLayout((Layout)tableColumnLayout);
        this.table = new Table(tableComposite, 65540);
        this.textLayout = new TextLayout((Device)this.table.getDisplay());
        this.textLayout.setOrientation(QuickAccessDialog.getDefaultOrientation());
        Font boldFont = this.resourceManager.createFont(FontDescriptor.createFrom((Font)JFaceResources.getDialogFont()).setStyle(1));
        this.textLayout.setFont(this.table.getFont());
        this.textLayout.setText(QuickAccessMessages.QuickAccess_AvailableCategories);
        int maxProviderWidth = (int)((double)this.textLayout.getBounds().width * 1.1);
        this.textLayout.setFont(boldFont);
        int i = 0;
        while (i < this.providers.length) {
            QuickAccessProvider provider = this.providers[i];
            this.textLayout.setText(provider.getName());
            int width = (int)((double)this.textLayout.getBounds().width * 1.1);
            if (width > maxProviderWidth) {
                maxProviderWidth = width;
            }
            ++i;
        }
        tableColumnLayout.setColumnData((Widget)new TableColumn(this.table, 0), (ColumnLayoutData)new ColumnWeightData(0, maxProviderWidth));
        tableColumnLayout.setColumnData((Widget)new TableColumn(this.table, 0), (ColumnLayoutData)new ColumnWeightData(100, 100));
        this.table.getShell().addControlListener((ControlListener)new ControlAdapter(){

            public void controlResized(ControlEvent e) {
                if (!QuickAccessDialog.this.showAllMatches && !QuickAccessDialog.this.resized) {
                    QuickAccessDialog.this.resized = true;
                    e.display.timerExec(100, new Runnable(this){
                        final /* synthetic */ 5 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void run() {
                            if (5.access$0(this.this$1).getShell() != null && !5.access$0(this.this$1).getShell().isDisposed()) {
                                QuickAccessDialog.access$7(5.access$0(this.this$1), 5.access$0(this.this$1).filterText.getText().toLowerCase());
                            }
                            5.access$0(this.this$1).resized = false;
                        }
                    });
                }
            }

            static /* synthetic */ QuickAccessDialog access$0(5 var0) {
                return var0.QuickAccessDialog.this;
            }
        });
        this.table.addKeyListener((KeyListener)this.getKeyAdapter());
        this.table.addKeyListener(new KeyListener(){

            public void keyPressed(KeyEvent e) {
                if (e.keyCode == 0x1000001 && QuickAccessDialog.this.table.getSelectionIndex() == 0) {
                    QuickAccessDialog.this.filterText.setFocus();
                } else if (e.character == '\u001b') {
                    QuickAccessDialog.this.close();
                }
            }

            public void keyReleased(KeyEvent e) {
            }
        });
        this.table.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseUp(MouseEvent e) {
                if (QuickAccessDialog.this.table.getSelectionCount() < 1) {
                    return;
                }
                if (e.button != 1) {
                    return;
                }
                if (QuickAccessDialog.this.table.equals(e.getSource())) {
                    TableItem o = QuickAccessDialog.this.table.getItem(new Point(e.x, e.y));
                    TableItem selection = QuickAccessDialog.this.table.getSelection()[0];
                    if (selection.equals(o)) {
                        QuickAccessDialog.this.handleSelection();
                    }
                }
            }
        });
        this.table.addMouseMoveListener(new MouseMoveListener(){
            TableItem lastItem = null;

            public void mouseMove(MouseEvent e) {
                if (QuickAccessDialog.this.table.equals(e.getSource())) {
                    TableItem o;
                    if (this.lastItem == null ^ (o = QuickAccessDialog.this.table.getItem(new Point(e.x, e.y))) == null) {
                        QuickAccessDialog.this.table.setCursor(o == null ? null : QuickAccessDialog.this.table.getDisplay().getSystemCursor(21));
                    }
                    if (o instanceof TableItem) {
                        if (!o.equals(this.lastItem)) {
                            this.lastItem = o;
                            QuickAccessDialog.this.table.setSelection(new TableItem[]{this.lastItem});
                        }
                    } else if (o == null) {
                        this.lastItem = null;
                    }
                }
            }
        });
        this.table.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                QuickAccessDialog.this.handleSelection();
            }
        });
        if (PlatformUI.getPreferenceStore().getBoolean("USE_COLORED_LABELS")) {
            boldStyle = new TextStyle(boldFont, null, null);
            this.grayColor = this.resourceManager.createColor(ColorUtil.blend(this.table.getBackground().getRGB(), this.table.getForeground().getRGB()));
        } else {
            boldStyle = null;
        }
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                QuickAccessEntry entry = (QuickAccessEntry)event.item.getData();
                if (entry != null) {
                    switch (event.type) {
                        case 41: {
                            entry.measure(event, QuickAccessDialog.this.textLayout, (ResourceManager)QuickAccessDialog.this.resourceManager, boldStyle);
                            break;
                        }
                        case 42: {
                            entry.paint(event, QuickAccessDialog.this.textLayout, (ResourceManager)QuickAccessDialog.this.resourceManager, boldStyle, QuickAccessDialog.this.grayColor);
                            break;
                        }
                        case 40: {
                            entry.erase(event);
                        }
                    }
                }
            }
        };
        this.table.addListener(41, listener);
        this.table.addListener(40, listener);
        this.table.addListener(42, listener);
        return composite;
    }

    private int computeNumberOfItems() {
        Rectangle rect = this.table.getClientArea();
        int itemHeight = this.table.getItemHeight();
        int headerHeight = this.table.getHeaderHeight();
        return (rect.height - headerHeight + itemHeight - 1) / (itemHeight + this.table.getGridLineWidth());
    }

    private void refresh(String filter) {
        int numItems = this.computeNumberOfItems();
        QuickAccessElement perfectMatch = (QuickAccessElement)this.elementMap.get(filter);
        List[] entries = this.computeMatchingEntries(filter, perfectMatch, numItems);
        int selectionIndex = this.refreshTable(perfectMatch, entries);
        if (this.table.getItemCount() > 0) {
            this.table.setSelection(selectionIndex);
        } else if (filter.length() == 0) {
            TableItem item = new TableItem(this.table, 0);
            item.setText(0, QuickAccessMessages.QuickAccess_AvailableCategories);
            item.setForeground(0, this.grayColor);
            int i = 0;
            while (i < this.providers.length) {
                QuickAccessProvider provider = this.providers[i];
                TableItem item2 = new TableItem(this.table, 0);
                item2.setText(1, provider.getName());
                item2.setForeground(1, this.grayColor);
                ++i;
            }
        }
        if (filter.length() == 0) {
            this.setInfoText(QuickAccessMessages.QuickAccess_StartTypingToFindMatches);
        } else {
            TriggerSequence[] sequences = this.getInvokingCommandKeySequences();
            if (sequences != null && sequences.length != 0) {
                if (this.showAllMatches) {
                    this.setInfoText(NLS.bind((String)QuickAccessMessages.QuickAccess_PressKeyToShowInitialMatches, (Object)sequences[0].format()));
                } else {
                    this.setInfoText(NLS.bind((String)QuickAccessMessages.QuickAccess_PressKeyToShowAllMatches, (Object)sequences[0].format()));
                }
            } else {
                this.setInfoText("");
            }
        }
    }

    protected final TriggerSequence[] getInvokingCommandKeySequences() {
        if (this.invokingCommandKeySequences == null && this.invokingCommand != null) {
            IWorkbench iWorkbench = this.window.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.keys.IBindingService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IBindingService bindingService = (IBindingService)iWorkbench.getAdapter(clazz);
            this.invokingCommandKeySequences = bindingService.getActiveBindingsFor(this.invokingCommand.getId());
        }
        return this.invokingCommandKeySequences;
    }

    private KeyAdapter getKeyAdapter() {
        if (this.keyAdapter == null) {
            this.keyAdapter = new KeyAdapter(){

                public void keyPressed(KeyEvent e) {
                    int accelerator = SWTKeySupport.convertEventToUnmodifiedAccelerator((KeyEvent)e);
                    KeySequence keySequence = KeySequence.getInstance((KeyStroke)SWTKeySupport.convertAcceleratorToKeyStroke((int)accelerator));
                    TriggerSequence[] sequences = QuickAccessDialog.this.getInvokingCommandKeySequences();
                    if (sequences == null) {
                        return;
                    }
                    int i = 0;
                    while (i < sequences.length) {
                        if (sequences[i].equals((Object)keySequence)) {
                            e.doit = false;
                            QuickAccessDialog.this.toggleShowAllMatches();
                            return;
                        }
                        ++i;
                    }
                }
            };
        }
        return this.keyAdapter;
    }

    protected void toggleShowAllMatches() {
        this.showAllMatches = !this.showAllMatches;
        this.refresh(this.filterText.getText().toLowerCase());
    }

    private int refreshTable(QuickAccessElement perfectMatch, List[] entries) {
        if (this.table.getItemCount() > entries.length && this.table.getItemCount() - entries.length > 20) {
            this.table.removeAll();
        }
        TableItem[] items = this.table.getItems();
        int selectionIndex = -1;
        int index = 0;
        int i = 0;
        while (i < this.providers.length) {
            if (entries[i] != null) {
                boolean firstEntry = true;
                Iterator it = entries[i].iterator();
                while (it.hasNext()) {
                    TableItem item;
                    QuickAccessEntry entry = (QuickAccessEntry)it.next();
                    entry.firstInCategory = firstEntry;
                    firstEntry = false;
                    if (!it.hasNext()) {
                        entry.lastInCategory = true;
                    }
                    if (index < items.length) {
                        item = items[index];
                        this.table.clear(index);
                    } else {
                        item = new TableItem(this.table, 0);
                    }
                    if (perfectMatch == entry.element && selectionIndex == -1) {
                        selectionIndex = index;
                    }
                    item.setData((Object)entry);
                    item.setText(0, entry.provider.getName());
                    item.setText(1, entry.element.getLabel());
                    if (Util.isWpf()) {
                        item.setImage(1, entry.getImage(entry.element, (ResourceManager)this.resourceManager));
                    }
                    ++index;
                }
            }
            ++i;
        }
        if (index < items.length) {
            this.table.remove(index, items.length - 1);
        }
        if (selectionIndex == -1) {
            selectionIndex = 0;
        }
        return selectionIndex;
    }

    private List[] computeMatchingEntries(String filter, QuickAccessElement perfectMatch, int maxCount) {
        QuickAccessEntry entry;
        boolean done;
        List[] entries = new ArrayList[this.providers.length];
        int[] indexPerProvider = new int[this.providers.length];
        int countPerProvider = Math.min(maxCount / 4, 5);
        int countTotal = 0;
        boolean perfectMatchAdded = true;
        if (perfectMatch != null) {
            --maxCount;
            perfectMatchAdded = false;
        }
        do {
            done = true;
            int i = 0;
            while (i < this.providers.length && (this.showAllMatches || countTotal < maxCount)) {
                if (entries[i] == null) {
                    entries[i] = new ArrayList();
                    indexPerProvider[i] = 0;
                }
                int count = 0;
                QuickAccessProvider provider = this.providers[i];
                if (filter.length() > 0 || provider instanceof PreviousPicksProvider || this.showAllMatches) {
                    QuickAccessElement[] elements = provider.getElementsSorted();
                    int j = indexPerProvider[i];
                    while (j < elements.length && (this.showAllMatches || count < countPerProvider && countTotal < maxCount)) {
                        QuickAccessElement element = elements[j];
                        QuickAccessEntry entry2 = filter.length() == 0 ? (i == 0 || this.showAllMatches ? new QuickAccessEntry(element, provider, new int[0][0], new int[0][0]) : null) : element.match(filter, provider);
                        if (entry2 != null) {
                            entries[i].add(entry2);
                            ++count;
                            ++countTotal;
                            if (i == 0 && entry2.element == perfectMatch) {
                                perfectMatchAdded = true;
                                maxCount = 20;
                            }
                        }
                        ++j;
                    }
                    indexPerProvider[i] = j;
                    if (j < elements.length) {
                        done = false;
                    }
                }
                ++i;
            }
            countPerProvider = 1;
        } while ((this.showAllMatches || countTotal < maxCount) && !done);
        if (!perfectMatchAdded && (entry = perfectMatch.match(filter, this.providers[0])) != null) {
            if (entries[0] == null) {
                entries[0] = new ArrayList();
                indexPerProvider[0] = 0;
            }
            entries[0].add(entry);
        }
        return entries;
    }

    protected Control getFocusControl() {
        return this.filterText;
    }

    public boolean close() {
        this.storeDialog(this.getDialogSettings());
        if (this.textLayout != null && !this.textLayout.isDisposed()) {
            this.textLayout.dispose();
        }
        if (this.resourceManager != null) {
            this.resourceManager.dispose();
            this.resourceManager = null;
        }
        return super.close();
    }

    protected Point getDefaultSize() {
        int y;
        GC gc = new GC((Drawable)this.table);
        FontMetrics fontMetrics = gc.getFontMetrics();
        gc.dispose();
        int x = Dialog.convertHorizontalDLUsToPixels((FontMetrics)fontMetrics, (int)300);
        if (x < 350) {
            x = 350;
        }
        if ((y = Dialog.convertVerticalDLUsToPixels((FontMetrics)fontMetrics, (int)270)) < 420) {
            y = 420;
        }
        return new Point(x, y);
    }

    protected Point getDefaultLocation(Point initialSize) {
        Point size = new Point(400, 400);
        Rectangle parentBounds = this.getParentShell().getBounds();
        int x = parentBounds.x + parentBounds.width / 2 - size.x / 2;
        int y = parentBounds.y + parentBounds.height / 2 - size.y / 2;
        return new Point(x, y);
    }

    protected IDialogSettings getDialogSettings() {
        IDialogSettings workbenchDialogSettings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings result = workbenchDialogSettings.getSection(this.getId());
        if (result == null) {
            result = workbenchDialogSettings.addNewSection(this.getId());
        }
        return result;
    }

    protected String getId() {
        return "org.eclipse.ui.internal.QuickAccess";
    }

    private void storeDialog(IDialogSettings dialogSettings) {
        String[] orderedElements = new String[this.previousPicksList.size()];
        String[] orderedProviders = new String[this.previousPicksList.size()];
        String[] textEntries = new String[this.previousPicksList.size()];
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < orderedElements.length) {
            QuickAccessElement quickAccessElement = (QuickAccessElement)this.previousPicksList.get(i);
            ArrayList elementText = (ArrayList)this.textMap.get(quickAccessElement);
            Assert.isNotNull((Object)elementText);
            orderedElements[i] = quickAccessElement.getId();
            orderedProviders[i] = quickAccessElement.getProvider().getId();
            arrayList.addAll(elementText);
            textEntries[i] = String.valueOf(elementText.size());
            ++i;
        }
        String[] textArray = arrayList.toArray(new String[arrayList.size()]);
        dialogSettings.put(ORDERED_ELEMENTS, orderedElements);
        dialogSettings.put(ORDERED_PROVIDERS, orderedProviders);
        dialogSettings.put(TEXT_ENTRIES, textEntries);
        dialogSettings.put(TEXT_ARRAY, textArray);
    }

    private void restoreDialog() {
        IDialogSettings dialogSettings = this.getDialogSettings();
        if (dialogSettings != null) {
            String[] orderedElements = dialogSettings.getArray(ORDERED_ELEMENTS);
            String[] orderedProviders = dialogSettings.getArray(ORDERED_PROVIDERS);
            String[] textEntries = dialogSettings.getArray(TEXT_ENTRIES);
            String[] textArray = dialogSettings.getArray(TEXT_ARRAY);
            this.elementMap = new HashMap();
            this.textMap = new HashMap();
            this.previousPicksList = new LinkedList();
            if (orderedElements != null && orderedProviders != null && textEntries != null && textArray != null) {
                int arrayIndex = 0;
                int i = 0;
                while (i < orderedElements.length) {
                    QuickAccessElement quickAccessElement;
                    QuickAccessProvider quickAccessProvider = (QuickAccessProvider)this.providerMap.get(orderedProviders[i]);
                    int numTexts = Integer.parseInt(textEntries[i]);
                    if (quickAccessProvider != null && (quickAccessElement = quickAccessProvider.getElementForId(orderedElements[i])) != null) {
                        ArrayList<String> arrayList = new ArrayList<String>();
                        int j = arrayIndex;
                        while (j < arrayIndex + numTexts) {
                            String text = textArray[j];
                            if (text.length() > 0) {
                                arrayList.add(text);
                                this.elementMap.put(text, quickAccessElement);
                            }
                            ++j;
                        }
                        this.textMap.put(quickAccessElement, arrayList);
                        this.previousPicksList.add(quickAccessElement);
                    }
                    arrayIndex += numTexts;
                    ++i;
                }
            }
        }
    }

    protected void handleElementSelected(String text, Object selectedElement) {
        if (selectedElement instanceof QuickAccessElement) {
            this.addPreviousPick(text, selectedElement);
            this.storeDialog(this.getDialogSettings());
            QuickAccessElement element = (QuickAccessElement)selectedElement;
            element.execute();
        }
    }

    private void addPreviousPick(String text, Object element) {
        this.previousPicksList.remove(element);
        if (this.previousPicksList.size() == 60) {
            Object removedElement = this.previousPicksList.removeLast();
            ArrayList removedList = (ArrayList)this.textMap.remove(removedElement);
            int i = 0;
            while (i < removedList.size()) {
                this.elementMap.remove(removedList.get(i));
                ++i;
            }
        }
        this.previousPicksList.addFirst(element);
        ArrayList textList = (ArrayList)this.textMap.get(element);
        if (textList == null) {
            textList = new ArrayList();
            this.textMap.put(element, textList);
        }
        textList.remove(text);
        if (textList.size() == 3) {
            Object removedText = textList.remove(0);
            this.elementMap.remove(removedText);
        }
        if (text.length() > 0) {
            textList.add(text);
            Object replacedElement = this.elementMap.put(text, element);
            if (replacedElement != null && !replacedElement.equals(element) && (textList = (ArrayList)this.textMap.get(replacedElement)) != null) {
                textList.remove(text);
                if (textList.isEmpty()) {
                    this.textMap.remove(replacedElement);
                    this.previousPicksList.remove(replacedElement);
                }
            }
        }
    }

    private void handleSelection() {
        QuickAccessElement selectedElement = null;
        String text = this.filterText.getText().toLowerCase();
        if (this.table.getSelectionCount() == 1) {
            QuickAccessEntry entry = (QuickAccessEntry)this.table.getSelection()[0].getData();
            selectedElement = entry == null ? null : entry.element;
        }
        this.close();
        if (selectedElement != null) {
            this.handleElementSelected(text, selectedElement);
        }
    }

    private class PreviousPicksProvider
    extends QuickAccessProvider {
        private PreviousPicksProvider() {
        }

        public QuickAccessElement getElementForId(String id) {
            return null;
        }

        public QuickAccessElement[] getElements() {
            return QuickAccessDialog.this.previousPicksList.toArray(new QuickAccessElement[QuickAccessDialog.this.previousPicksList.size()]);
        }

        public QuickAccessElement[] getElementsSorted() {
            return this.getElements();
        }

        public String getId() {
            return "org.eclipse.ui.previousPicks";
        }

        public ImageDescriptor getImageDescriptor() {
            return WorkbenchImages.getImageDescriptor("IMG_OBJ_NODE");
        }

        public String getName() {
            return QuickAccessMessages.QuickAccess_Previous;
        }
    }
}

