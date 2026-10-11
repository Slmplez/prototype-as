/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.window.Window
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.osgi.util.TextProcessor
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.window.Window;
import org.eclipse.osgi.util.NLS;
import org.eclipse.osgi.util.TextProcessor;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.EditorHistory;
import org.eclipse.ui.internal.EditorHistoryItem;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;

public class ReopenEditorMenu
extends ContributionItem {
    private IWorkbenchWindow window;
    private EditorHistory history;
    private boolean showSeparator;
    private boolean dirty = true;
    private IMenuListener menuListener = new IMenuListener(){

        public void menuAboutToShow(IMenuManager manager) {
            manager.markDirty();
            ReopenEditorMenu.this.dirty = true;
        }
    };
    private static final int MAX_TEXT_LENGTH = 40;
    private static final int MAX_MNEMONIC_SIZE = 9;

    public ReopenEditorMenu(IWorkbenchWindow window, String id, boolean showSeparator) {
        super(id);
        this.window = window;
        this.showSeparator = showSeparator;
        IWorkbench workbench = window.getWorkbench();
        if (workbench instanceof Workbench) {
            this.history = ((Workbench)workbench).getEditorHistory();
        }
    }

    private String calcText(int index, EditorHistoryItem item) {
        return ReopenEditorMenu.calcText(index, item.getName(), item.getToolTipText(), Window.getDefaultOrientation() == 0x4000000);
    }

    public static String calcText(int index, String name, String toolTip, boolean rtl) {
        Path path;
        String fileName;
        String pathName;
        StringBuffer sb = new StringBuffer();
        int mnemonic = index + 1;
        StringBuffer nm = new StringBuffer();
        nm.append(mnemonic);
        if (mnemonic <= 9) {
            nm.insert(nm.length() - String.valueOf(mnemonic).length(), '&');
        }
        if ((pathName = toolTip).equals(fileName = name)) {
            pathName = "";
        }
        if ((path = new Path(pathName)).segmentCount() > 1 && path.segment(path.segmentCount() - 1).equals(fileName)) {
            path = path.removeLastSegments(1);
            pathName = path.toString();
        }
        if (fileName.length() + pathName.length() <= 36) {
            sb.append(fileName);
            if (pathName.length() > 0) {
                sb.append("  [");
                sb.append(pathName);
                sb.append("]");
            }
        } else {
            int length = fileName.length();
            if (length > 40) {
                sb.append(fileName.substring(0, 37));
                sb.append("...");
            } else if (length > 33) {
                sb.append(fileName);
            } else {
                sb.append(fileName);
                int segmentCount = path.segmentCount();
                if (segmentCount > 0) {
                    int i;
                    String segment;
                    length += 7;
                    sb.append("  [");
                    for (i = 0; i < segmentCount && length < 40; length += segment.length() + 1, ++i) {
                        segment = path.segment(i);
                        if (length + segment.length() < 40) {
                            sb.append(segment);
                            sb.append('/');
                            continue;
                        }
                        if (i != 0) break;
                        sb.append(segment.substring(0, 40 - length));
                        length = 40;
                        break;
                    }
                    sb.append("...");
                    i = segmentCount - 1;
                    while (i > 0 && length < 40) {
                        segment = path.segment(i);
                        if (length + segment.length() >= 40) break;
                        sb.append('/');
                        sb.append(segment);
                        length += segment.length() + 1;
                        --i;
                    }
                    sb.append("]");
                }
            }
        }
        String process = rtl ? sb + " " + nm : nm + " " + sb;
        return TextProcessor.process((String)process, (String)(String.valueOf(TextProcessor.getDefaultDelimiters()) + "[]"));
    }

    public void fill(final Menu menu, int index) {
        int itemsToShow;
        if (this.window.getActivePage() == null || this.window.getActivePage().getPerspective() == null) {
            return;
        }
        if (this.getParent() instanceof MenuManager) {
            ((MenuManager)this.getParent()).addMenuListener(this.menuListener);
        }
        if ((itemsToShow = WorkbenchPlugin.getDefault().getPreferenceStore().getInt("RECENT_FILES")) == 0 || this.history == null) {
            return;
        }
        EditorHistoryItem[] historyItems = this.history.getItems();
        int n = Math.min(itemsToShow, historyItems.length);
        if (n <= 0) {
            return;
        }
        if (this.showSeparator) {
            new MenuItem(menu, 2, index);
        }
        final int[] menuIndex = new int[]{++index};
        int i = 0;
        while (i < n) {
            final EditorHistoryItem item = historyItems[i];
            final int historyIndex = i++;
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() throws Exception {
                    String text = ReopenEditorMenu.this.calcText(historyIndex, item);
                    MenuItem mi = new MenuItem(menu, 8, menuIndex[0]);
                    menuIndex[0] = menuIndex[0] + 1;
                    mi.setText(text);
                    mi.addSelectionListener((SelectionListener)new SelectionAdapter(this, item){
                        final /* synthetic */ 2 this$1;
                        private final /* synthetic */ EditorHistoryItem val$item;
                        {
                            this.this$1 = var1_1;
                            this.val$item = editorHistoryItem;
                        }

                        public void widgetSelected(SelectionEvent e) {
                            ReopenEditorMenu.access$2(2.access$0(this.this$1), this.val$item);
                        }
                    });
                }

                public void handleException(Throwable e) {
                    WorkbenchPlugin.log(((Object)((Object)this)).getClass(), "fill", e);
                }

                static /* synthetic */ ReopenEditorMenu access$0(2 var0) {
                    return var0.ReopenEditorMenu.this;
                }
            });
        }
        this.dirty = false;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isDynamic() {
        return true;
    }

    private void open(EditorHistoryItem item) {
        IWorkbenchPage page = this.window.getActivePage();
        if (page != null) {
            try {
                String itemName = item.getName();
                if (!item.isRestored()) {
                    item.restoreState();
                }
                IEditorInput input = item.getInput();
                IEditorDescriptor desc = item.getDescriptor();
                if (input == null || desc == null) {
                    String title = WorkbenchMessages.OpenRecent_errorTitle;
                    String msg = NLS.bind((String)WorkbenchMessages.OpenRecent_unableToOpen, (Object)itemName);
                    MessageDialog.openWarning((Shell)this.window.getShell(), (String)title, (String)msg);
                    this.history.remove(item);
                } else {
                    page.openEditor(input, desc.getId());
                }
            }
            catch (PartInitException e2) {
                String title = WorkbenchMessages.OpenRecent_errorTitle;
                MessageDialog.openWarning((Shell)this.window.getShell(), (String)title, (String)e2.getMessage());
                this.history.remove(item);
            }
        }
    }

    static /* synthetic */ void access$2(ReopenEditorMenu reopenEditorMenu, EditorHistoryItem editorHistoryItem) {
        reopenEditorMenu.open(editorHistoryItem);
    }
}

