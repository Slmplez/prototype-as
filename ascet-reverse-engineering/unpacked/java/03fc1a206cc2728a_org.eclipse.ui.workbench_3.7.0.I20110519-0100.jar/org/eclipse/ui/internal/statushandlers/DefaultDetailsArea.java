/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.DragSource
 *  org.eclipse.swt.dnd.DragSourceEvent
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Decorations
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal.statushandlers;

import com.ibm.icu.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.statushandlers.IStatusDialogConstants;
import org.eclipse.ui.keys.IBindingService;
import org.eclipse.ui.statushandlers.AbstractStatusAreaProvider;
import org.eclipse.ui.statushandlers.IStatusAdapterConstants;
import org.eclipse.ui.statushandlers.StatusAdapter;

public class DefaultDetailsArea
extends AbstractStatusAreaProvider {
    private static final int MINIMUM_HEIGHT = 100;
    private int mask;
    private static final int NESTING_INDENT = 15;
    private StyledText text;
    private boolean handleOkStatuses;
    private Map dialogState;
    private MenuItem copyAction;
    static /* synthetic */ Class class$0;

    public DefaultDetailsArea(Map dialogState) {
        this.dialogState = dialogState;
        this.handleOkStatuses = (Boolean)dialogState.get(IStatusDialogConstants.HANDLE_OK_STATUSES);
        this.mask = (Integer)dialogState.get(IStatusDialogConstants.MASK);
    }

    public Control createSupportArea(Composite parent, StatusAdapter statusAdapter) {
        Composite area = this.createArea(parent);
        this.setStatusAdapter(statusAdapter);
        return area;
    }

    protected Composite createArea(Composite parent) {
        parent = new Composite(parent, 0);
        parent.setLayout((Layout)new GridLayout());
        parent.setLayoutData((Object)new GridData(4, 4, true, true));
        this.text = new StyledText(parent, 2890);
        this.text.setBackground(parent.getDisplay().getSystemColor(1));
        GridData gd = new GridData(1808);
        gd.grabExcessHorizontalSpace = true;
        gd.grabExcessVerticalSpace = true;
        gd.widthHint = 250;
        gd.minimumHeight = 100;
        this.text.setLayoutData((Object)gd);
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IBindingService binding = (IBindingService)iWorkbench.getService(clazz);
        final TriggerSequence[] ts = binding.getActiveBindingsFor(ActionFactory.COPY.getCommandId());
        this.text.addKeyListener(new KeyListener(){
            ArrayList keyList = new ArrayList();

            public void keyPressed(KeyEvent e) {
                boolean ctrlDown;
                int character = e.character;
                boolean bl = ctrlDown = (e.stateMask & 0x40000) != 0;
                if (ctrlDown && e.character != e.keyCode && e.character < ' ' && (e.keyCode & 0x1000000) == 0) {
                    character = (char)(character + 64);
                }
                if ((e.keyCode & ~SWT.MODIFIER_MASK) == 0) {
                    return;
                }
                KeyStroke ks = KeyStroke.getInstance((int)e.stateMask, (int)(character != 0 ? character : e.keyCode));
                this.keyList.add(ks);
                KeySequence sequence = KeySequence.getInstance((List)this.keyList);
                boolean partialMatch = false;
                int i = 0;
                while (i < ts.length) {
                    if (ts[i].equals((Object)sequence)) {
                        DefaultDetailsArea.this.copyToClipboard();
                        this.keyList.clear();
                        break;
                    }
                    if (ts[i].startsWith((TriggerSequence)sequence, false)) {
                        partialMatch = true;
                    }
                    int j = 0;
                    while (j < ts[i].getTriggers().length) {
                        if (ts[i].getTriggers()[j].equals((Object)ks)) {
                            partialMatch = true;
                        }
                        ++j;
                    }
                    ++i;
                }
                if (!partialMatch) {
                    this.keyList.clear();
                }
            }

            public void keyReleased(KeyEvent e) {
            }
        });
        this.text.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                if (DefaultDetailsArea.this.text.getSelectionText().length() == 0) {
                    if (DefaultDetailsArea.this.copyAction != null && !DefaultDetailsArea.this.copyAction.isDisposed()) {
                        DefaultDetailsArea.this.copyAction.setEnabled(false);
                    }
                } else if (DefaultDetailsArea.this.copyAction != null && !DefaultDetailsArea.this.copyAction.isDisposed()) {
                    DefaultDetailsArea.this.copyAction.setEnabled(true);
                }
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                this.widgetSelected(e);
            }
        });
        this.createDNDSource();
        this.createCopyAction(parent);
        Dialog.applyDialogFont((Control)parent);
        return parent;
    }

    private void setStatusAdapter(StatusAdapter adapter) {
        Long timestamp;
        this.populateList(this.text, adapter.getStatus(), 0, new int[1]);
        if (!this.isMulti() && (timestamp = (Long)adapter.getProperty(IStatusAdapterConstants.TIMESTAMP_PROPERTY)) != null) {
            String date = DateFormat.getDateTimeInstance((int)1, (int)1).format(new Date(timestamp));
            this.text.append(NLS.bind((String)ProgressMessages.JobInfo_Error, (Object[])new Object[]{"", date}));
        }
        int delimiterLength = this.getLineSeparator().length();
        this.text.replaceTextRange(this.text.getText().length() - delimiterLength, delimiterLength, "");
        this.adjustHeight(this.text);
    }

    private void adjustHeight(StyledText text) {
        int lineCount = text.getLineCount();
        int lineHeight = text.getLineHeight();
        int startPos = text.getLocation().y;
        Composite c = text.getParent();
        while (c != null) {
            startPos += c.getLocation().y;
            c = c.getParent();
        }
        int screenHeight = text.getShell().getMonitor().getBounds().height;
        int availableScreenForText = screenHeight - (startPos += text.getShell().getBounds().height);
        if (availableScreenForText <= 100) {
            return;
        }
        int desiredHeight = lineCount * lineHeight;
        if ((double)desiredHeight > (double)availableScreenForText * 0.75) {
            ((GridData)text.getLayoutData()).heightHint = (int)((double)availableScreenForText * 0.75);
        }
    }

    private void createDNDSource() {
        DragSource ds = new DragSource((Control)this.text, 1);
        ds.setTransfer(new Transfer[]{TextTransfer.getInstance()});
        ds.addDragListener(new DragSourceListener(){

            public void dragFinished(DragSourceEvent event) {
            }

            public void dragSetData(DragSourceEvent event) {
                if (TextTransfer.getInstance().isSupportedType(event.dataType)) {
                    event.data = DefaultDetailsArea.this.text.getSelectionText();
                }
            }

            public void dragStart(DragSourceEvent event) {
            }
        });
    }

    private void createCopyAction(Composite parent) {
        Menu menu = new Menu((Decorations)parent.getShell(), 8);
        this.copyAction = new MenuItem(menu, 8);
        this.copyAction.setText(JFaceResources.getString((String)"copy"));
        this.copyAction.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                DefaultDetailsArea.this.copyToClipboard();
                super.widgetSelected(e);
            }
        });
        this.text.setMenu(menu);
        if (this.text.getSelectionText().length() == 0) {
            this.copyAction.setEnabled(false);
        }
    }

    private void populateList(StyledText text, IStatus status, int nesting, int[] lineNumber) {
        if (!(status.matches(this.mask) || this.handleOkStatuses && status.isOK())) {
            return;
        }
        int n = lineNumber[0];
        lineNumber[0] = n + 1;
        this.appendNewLine(text, status.getMessage(), nesting, n);
        Throwable t = status.getException();
        if (t instanceof CoreException) {
            CoreException ce = (CoreException)t;
            this.populateList(text, ce.getStatus(), nesting + 1, lineNumber);
        } else if (t != null) {
            String message = t.getLocalizedMessage();
            if (message == null) {
                message = t.toString();
            }
            int n2 = lineNumber[0];
            lineNumber[0] = n2 + 1;
            this.appendNewLine(text, message, nesting, n2);
        }
        IStatus[] children = status.getChildren();
        int i = 0;
        while (i < children.length) {
            this.populateList(text, children[i], nesting + 1, lineNumber);
            ++i;
        }
    }

    private String getLineSeparator() {
        return System.getProperty("line.separator");
    }

    private void appendNewLine(StyledText text, String line, int indentLevel, int lineNumber) {
        text.append(String.valueOf(line) + this.getLineSeparator());
        int pixelIndent = indentLevel * 15;
        if (lineNumber != 0) {
            pixelIndent += 7;
        }
        text.setLineIndent(lineNumber, 1, pixelIndent);
        text.setLineWrapIndent(lineNumber, 1, indentLevel * 15);
    }

    private void copyToClipboard() {
        Clipboard clipboard = null;
        try {
            clipboard = new Clipboard(this.text.getDisplay());
            clipboard.setContents(new Object[]{this.text.getSelectionText()}, new Transfer[]{TextTransfer.getInstance()});
        }
        finally {
            if (clipboard != null) {
                clipboard.dispose();
            }
        }
    }

    private boolean isMulti() {
        return ((Collection)this.dialogState.get(IStatusDialogConstants.STATUS_ADAPTERS)).size() != 1;
    }
}

