/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.ITextListener
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.TextEvent
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.ui.IActionBars
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.actions.ActionFactory
 *  org.eclipse.ui.part.IPageBookViewPage
 *  org.eclipse.ui.part.IPageSite
 *  org.eclipse.ui.texteditor.FindReplaceAction
 *  org.eclipse.ui.texteditor.IUpdate
 */
package org.eclipse.ui.console;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleConstants;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.console.TextConsole;
import org.eclipse.ui.console.TextConsoleViewer;
import org.eclipse.ui.console.actions.ClearOutputAction;
import org.eclipse.ui.console.actions.TextViewerAction;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.ConsoleResourceBundleMessages;
import org.eclipse.ui.internal.console.FollowHyperlinkAction;
import org.eclipse.ui.internal.console.IConsoleHelpContextIds;
import org.eclipse.ui.part.IPageBookViewPage;
import org.eclipse.ui.part.IPageSite;
import org.eclipse.ui.texteditor.FindReplaceAction;
import org.eclipse.ui.texteditor.IUpdate;

public class TextConsolePage
implements IPageBookViewPage,
IPropertyChangeListener,
IAdaptable {
    private IPageSite fSite;
    private TextConsole fConsole;
    private IConsoleView fConsoleView;
    private TextConsoleViewer fViewer;
    private MenuManager fMenuManager;
    protected Map fGlobalActions = new HashMap();
    protected ArrayList fSelectionActions = new ArrayList();
    protected ClearOutputAction fClearOutputAction;
    private ISelectionChangedListener selectionChangedListener = new ISelectionChangedListener(){

        public void selectionChanged(SelectionChangedEvent event) {
            TextConsolePage.this.updateSelectionDependentActions();
        }
    };
    private ITextListener textListener = new ITextListener(){

        public void textChanged(TextEvent event) {
            IDocument doc;
            IUpdate findReplace = (IUpdate)TextConsolePage.this.fGlobalActions.get(ActionFactory.FIND.getId());
            if (findReplace != null) {
                findReplace.update();
            }
            if (TextConsolePage.this.fClearOutputAction != null && (doc = TextConsolePage.this.fViewer.getDocument()) != null) {
                TextConsolePage.this.fClearOutputAction.setEnabled(doc.getLength() > 0);
            }
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public TextConsolePage(TextConsole console, IConsoleView view) {
        this.fConsole = console;
        this.fConsoleView = view;
    }

    protected TextConsoleViewer createViewer(Composite parent) {
        return new TextConsoleViewer(parent, this.fConsole);
    }

    public IPageSite getSite() {
        return this.fSite;
    }

    public void init(IPageSite pageSite) throws PartInitException {
        this.fSite = pageSite;
    }

    protected void updateSelectionDependentActions() {
        Iterator iterator = this.fSelectionActions.iterator();
        while (iterator.hasNext()) {
            this.updateAction((String)iterator.next());
        }
    }

    public void createControl(Composite parent) {
        this.fViewer = this.createViewer(parent);
        this.fViewer.setConsoleWidth(this.fConsole.getConsoleWidth());
        this.fViewer.setTabWidth(this.fConsole.getTabWidth());
        this.fConsole.addPropertyChangeListener(this);
        JFaceResources.getFontRegistry().addListener((IPropertyChangeListener)this);
        String id = "#ContextMenu";
        if (this.getConsole().getType() != null) {
            id = String.valueOf(this.getConsole().getType()) + "." + id;
        }
        this.fMenuManager = new MenuManager("#ContextMenu", id);
        this.fMenuManager.setRemoveAllWhenShown(true);
        this.fMenuManager.addMenuListener(new IMenuListener(){

            public void menuAboutToShow(IMenuManager m) {
                TextConsolePage.this.contextMenuAboutToShow(m);
            }
        });
        Menu menu = this.fMenuManager.createContextMenu(this.getControl());
        this.getControl().setMenu(menu);
        this.createActions();
        this.configureToolBar(this.getSite().getActionBars().getToolBarManager());
        this.getSite().registerContextMenu(id, this.fMenuManager, (ISelectionProvider)this.fViewer);
        this.getSite().setSelectionProvider((ISelectionProvider)this.fViewer);
        this.fViewer.getSelectionProvider().addSelectionChangedListener(this.selectionChangedListener);
        this.fViewer.addTextListener(this.textListener);
    }

    public void dispose() {
        this.fConsole.removePropertyChangeListener(this);
        JFaceResources.getFontRegistry().removeListener((IPropertyChangeListener)this);
        if (this.fMenuManager != null) {
            this.fMenuManager.dispose();
        }
        this.fClearOutputAction = null;
        this.fSelectionActions.clear();
        this.fGlobalActions.clear();
        this.fViewer.getSelectionProvider().removeSelectionChangedListener(this.selectionChangedListener);
        this.fViewer.removeTextListener(this.textListener);
        this.fViewer = null;
    }

    public Control getControl() {
        return this.fViewer != null ? this.fViewer.getControl() : null;
    }

    public void setActionBars(IActionBars actionBars) {
    }

    public void setFocus() {
        if (this.fViewer != null) {
            this.fViewer.getTextWidget().setFocus();
        }
    }

    public void propertyChange(PropertyChangeEvent event) {
        if (this.fViewer != null) {
            Object source = event.getSource();
            String property = event.getProperty();
            if (source.equals(this.fConsole) && IConsoleConstants.P_FONT.equals(property)) {
                this.fViewer.setFont(this.fConsole.getFont());
            } else if (IConsoleConstants.P_FONT_STYLE.equals(property)) {
                this.fViewer.getTextWidget().redraw();
            } else if (property.equals(IConsoleConstants.P_STREAM_COLOR)) {
                this.fViewer.getTextWidget().redraw();
            } else if (source.equals(this.fConsole) && property.equals(IConsoleConstants.P_TAB_SIZE)) {
                Integer tabSize = (Integer)event.getNewValue();
                this.fViewer.setTabWidth(tabSize);
            } else if (source.equals(this.fConsole) && property.equals(IConsoleConstants.P_CONSOLE_WIDTH)) {
                this.fViewer.setConsoleWidth(this.fConsole.getConsoleWidth());
            } else if (IConsoleConstants.P_BACKGROUND_COLOR.equals(property)) {
                this.fViewer.getTextWidget().setBackground(this.fConsole.getBackground());
            }
        }
    }

    protected void createActions() {
        IActionBars actionBars = this.getSite().getActionBars();
        TextViewerAction action = new TextViewerAction((ITextViewer)this.fViewer, 7);
        action.configureAction(ConsoleMessages.TextConsolePage_SelectAllText, ConsoleMessages.TextConsolePage_SelectAllDescrip, ConsoleMessages.TextConsolePage_SelectAllDescrip);
        action.setActionDefinitionId(ActionFactory.SELECT_ALL.getCommandId());
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)action, IConsoleHelpContextIds.CONSOLE_SELECT_ALL_ACTION);
        this.setGlobalAction(actionBars, ActionFactory.SELECT_ALL.getId(), (IAction)action);
        action = new TextViewerAction((ITextViewer)this.fViewer, 3);
        action.configureAction(ConsoleMessages.TextConsolePage_CutText, ConsoleMessages.TextConsolePage_CutDescrip, ConsoleMessages.TextConsolePage_CutDescrip);
        action.setImageDescriptor(PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_TOOL_CUT"));
        action.setActionDefinitionId(ActionFactory.CUT.getCommandId());
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)action, IConsoleHelpContextIds.CONSOLE_CUT_ACTION);
        this.setGlobalAction(actionBars, ActionFactory.CUT.getId(), (IAction)action);
        action = new TextViewerAction((ITextViewer)this.fViewer, 4);
        action.configureAction(ConsoleMessages.TextConsolePage_CopyText, ConsoleMessages.TextConsolePage_CopyDescrip, ConsoleMessages.TextConsolePage_CopyDescrip);
        action.setImageDescriptor(PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_TOOL_COPY"));
        action.setActionDefinitionId(ActionFactory.COPY.getCommandId());
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)action, IConsoleHelpContextIds.CONSOLE_COPY_ACTION);
        this.setGlobalAction(actionBars, ActionFactory.COPY.getId(), (IAction)action);
        action = new TextViewerAction((ITextViewer)this.fViewer, 5);
        action.configureAction(ConsoleMessages.TextConsolePage_PasteText, ConsoleMessages.TextConsolePage_PasteDescrip, ConsoleMessages.TextConsolePage_PasteDescrip);
        action.setImageDescriptor(PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_TOOL_PASTE"));
        action.setActionDefinitionId(ActionFactory.PASTE.getCommandId());
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)action, IConsoleHelpContextIds.CONSOLE_PASTE_ACTION);
        this.setGlobalAction(actionBars, ActionFactory.PASTE.getId(), (IAction)action);
        this.fClearOutputAction = new ClearOutputAction(this.fConsole);
        ResourceBundle bundle = ConsoleResourceBundleMessages.getBundle();
        FindReplaceAction fraction = new FindReplaceAction(bundle, "find_replace_action_", (IWorkbenchPart)this.fConsoleView);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)fraction, IConsoleHelpContextIds.CONSOLE_FIND_REPLACE_ACTION);
        this.setGlobalAction(actionBars, ActionFactory.FIND.getId(), (IAction)fraction);
        this.fSelectionActions.add(ActionFactory.CUT.getId());
        this.fSelectionActions.add(ActionFactory.COPY.getId());
        this.fSelectionActions.add(ActionFactory.PASTE.getId());
        this.fSelectionActions.add(ActionFactory.FIND.getId());
        actionBars.updateActionBars();
    }

    protected void setGlobalAction(IActionBars actionBars, String actionID, IAction action) {
        this.fGlobalActions.put(actionID, action);
        actionBars.setGlobalActionHandler(actionID, action);
    }

    public Object getAdapter(Class required) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.text.IFindReplaceTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(required)) {
            return this.fViewer.getFindReplaceTarget();
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.swt.widgets.Widget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz2.equals(required)) {
            return this.fViewer.getTextWidget();
        }
        return null;
    }

    protected IConsoleView getConsoleView() {
        return this.fConsoleView;
    }

    protected IConsole getConsole() {
        return this.fConsole;
    }

    protected void updateAction(String actionId) {
        IAction action = (IAction)this.fGlobalActions.get(actionId);
        if (action instanceof IUpdate) {
            ((IUpdate)action).update();
        }
    }

    protected void contextMenuAboutToShow(IMenuManager menuManager) {
        IDocument doc = this.fViewer.getDocument();
        if (doc == null) {
            return;
        }
        menuManager.add((IAction)this.fGlobalActions.get(ActionFactory.CUT.getId()));
        menuManager.add((IAction)this.fGlobalActions.get(ActionFactory.COPY.getId()));
        menuManager.add((IAction)this.fGlobalActions.get(ActionFactory.PASTE.getId()));
        menuManager.add((IAction)this.fGlobalActions.get(ActionFactory.SELECT_ALL.getId()));
        menuManager.add((IContributionItem)new Separator("FIND"));
        menuManager.add((IAction)this.fGlobalActions.get(ActionFactory.FIND.getId()));
        menuManager.add((IAction)new FollowHyperlinkAction(this.fViewer));
        menuManager.add((IAction)this.fClearOutputAction);
        menuManager.add((IContributionItem)new Separator("additions"));
    }

    protected void configureToolBar(IToolBarManager mgr) {
        mgr.appendToGroup("outputGroup", (IAction)this.fClearOutputAction);
    }

    public TextConsoleViewer getViewer() {
        return this.fViewer;
    }

    public void setViewer(TextConsoleViewer viewer) {
        this.fViewer = viewer;
    }
}

