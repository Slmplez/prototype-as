/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.help.HelpSystem
 *  org.eclipse.help.IContext
 *  org.eclipse.help.IContext2
 *  org.eclipse.help.IHelp
 *  org.eclipse.help.IHelpResource
 *  org.eclipse.help.IToc
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.LegacyActionTools
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.HelpEvent
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal.help;

import java.net.URL;
import java.util.Hashtable;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.help.HelpSystem;
import org.eclipse.help.IContext;
import org.eclipse.help.IContext2;
import org.eclipse.help.IHelp;
import org.eclipse.help.IHelpResource;
import org.eclipse.help.IToc;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.ICommand;
import org.eclipse.ui.help.AbstractHelpUI;
import org.eclipse.ui.help.IContextComputer;
import org.eclipse.ui.help.IWorkbenchHelpSystem;
import org.eclipse.ui.internal.WorkbenchPlugin;

public final class WorkbenchHelpSystem
implements IWorkbenchHelpSystem {
    public static final String HELP_KEY = "org.eclipse.ui.help";
    private static final String HELP_SYSTEM_EXTENSION_ID = "org.eclipse.ui.helpSupport";
    private static final String HELP_SYSTEM_CLASS_ATTRIBUTE = "class";
    private static WorkbenchHelpSystem instance;
    private boolean isInitialized;
    private AbstractHelpUI pluggableHelpUI = null;
    private String desiredHelpSystemId;
    private Hashtable registeredIDTable;
    private IExtensionChangeHandler handler = new IExtensionChangeHandler(){

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
        }

        public void removeExtension(IExtension source, Object[] objects) {
            int i = 0;
            while (i < objects.length) {
                if (objects[i] == WorkbenchHelpSystem.this.pluggableHelpUI) {
                    WorkbenchHelpSystem.this.isInitialized = false;
                    WorkbenchHelpSystem.this.pluggableHelpUI = null;
                    WorkbenchHelpSystem.this.helpCompatibilityWrapper = null;
                    PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler(WorkbenchHelpSystem.this.handler);
                }
                ++i;
            }
        }
    };
    private IHelp helpCompatibilityWrapper = null;
    private static HelpListener helpListener;

    public String getDesiredHelpSystemId() {
        return this.desiredHelpSystemId;
    }

    public void setDesiredHelpSystemId(String desiredHelpSystemId) {
        this.dispose();
        this.desiredHelpSystemId = desiredHelpSystemId;
    }

    private WorkbenchHelpSystem() {
    }

    public static WorkbenchHelpSystem getInstance() {
        if (instance == null) {
            instance = new WorkbenchHelpSystem();
        }
        return instance;
    }

    public static void disposeIfNecessary() {
        if (instance != null) {
            instance.dispose();
            instance = null;
        }
    }

    public void dispose() {
        this.pluggableHelpUI = null;
        this.helpCompatibilityWrapper = null;
        this.isInitialized = false;
        PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler(this.handler);
    }

    private AbstractHelpUI getHelpUI() {
        if (!this.isInitialized) {
            this.isInitialized = this.initializePluggableHelpUI();
            if (!this.isInitialized) {
                WorkbenchPlugin.log("Unable to instantiate help UI");
            }
        }
        return this.pluggableHelpUI;
    }

    private boolean initializePluggableHelpUI() {
        final boolean[] ret = new boolean[1];
        BusyIndicator.showWhile((Display)Display.getCurrent(), (Runnable)new Runnable(){

            public void run() {
                IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint(WorkbenchHelpSystem.HELP_SYSTEM_EXTENSION_ID);
                if (point == null) {
                    return;
                }
                IExtension[] extensions = point.getExtensions();
                if (extensions.length == 0) {
                    return;
                }
                IConfigurationElement elementToUse = null;
                elementToUse = WorkbenchHelpSystem.this.desiredHelpSystemId == null ? this.getFirstElement(extensions) : this.findElement(WorkbenchHelpSystem.this.desiredHelpSystemId, extensions);
                if (elementToUse != null) {
                    ret[0] = this.initializePluggableHelpUI(elementToUse);
                }
            }

            private IConfigurationElement findElement(String desiredHelpSystemId, IExtension[] extensions) {
                int i = 0;
                while (i < extensions.length) {
                    IExtension extension = extensions[i];
                    if (desiredHelpSystemId.equals(extension.getUniqueIdentifier())) {
                        IConfigurationElement[] elements = extension.getConfigurationElements();
                        if (elements.length == 0) {
                            return null;
                        }
                        return elements[0];
                    }
                    ++i;
                }
                return null;
            }

            private IConfigurationElement getFirstElement(IExtension[] extensions) {
                IConfigurationElement[] elements = extensions[0].getConfigurationElements();
                if (elements.length == 0) {
                    return null;
                }
                return elements[0];
            }

            private boolean initializePluggableHelpUI(IConfigurationElement element) {
                try {
                    WorkbenchHelpSystem.this.pluggableHelpUI = (AbstractHelpUI)WorkbenchPlugin.createExtension(element, WorkbenchHelpSystem.HELP_SYSTEM_CLASS_ATTRIBUTE);
                    PlatformUI.getWorkbench().getExtensionTracker().registerHandler(WorkbenchHelpSystem.this.handler, null);
                    PlatformUI.getWorkbench().getExtensionTracker().registerObject(element.getDeclaringExtension(), (Object)WorkbenchHelpSystem.this.pluggableHelpUI, 2);
                    return true;
                }
                catch (CoreException e) {
                    WorkbenchPlugin.log("Unable to instantiate help UI" + e.getStatus(), e);
                    return false;
                }
            }
        });
        return ret[0];
    }

    private static Point computePopUpLocation(Display display) {
        Point point = display.getCursorLocation();
        return new Point(point.x + 15, point.y);
    }

    private HelpListener getHelpListener() {
        if (helpListener == null) {
            helpListener = new WorkbenchHelpListener();
        }
        return helpListener;
    }

    public IHelp getHelpSupport() {
        AbstractHelpUI helpUI = this.getHelpUI();
        if (helpUI != null && this.helpCompatibilityWrapper == null) {
            this.helpCompatibilityWrapper = new CompatibilityIHelpImplementation();
        }
        return this.helpCompatibilityWrapper;
    }

    public void setHelp(IAction action, final Object[] contexts) {
        int i = 0;
        while (i < contexts.length) {
            Assert.isTrue((contexts[i] instanceof String || contexts[i] instanceof IContext ? 1 : 0) != 0);
            ++i;
        }
        action.setHelpListener(new HelpListener(){

            public void helpRequested(HelpEvent event) {
                if (contexts != null && contexts.length > 0 && WorkbenchHelpSystem.this.getHelpUI() != null) {
                    IContext context = null;
                    if (contexts[0] instanceof String) {
                        context = HelpSystem.getContext((String)((String)contexts[0]));
                    } else if (contexts[0] instanceof IContext) {
                        context = (IContext)contexts[0];
                    }
                    if (context != null) {
                        Point point = WorkbenchHelpSystem.computePopUpLocation(event.widget.getDisplay());
                        WorkbenchHelpSystem.this.displayContext(context, point.x, point.y);
                    }
                }
            }
        });
    }

    public void setHelp(IAction action, final IContextComputer computer) {
        action.setHelpListener(new HelpListener(){

            public void helpRequested(HelpEvent event) {
                Object[] helpContexts = computer.computeContexts(event);
                if (helpContexts != null && helpContexts.length > 0 && WorkbenchHelpSystem.this.getHelpUI() != null) {
                    IContext context = null;
                    if (helpContexts[0] instanceof String) {
                        context = HelpSystem.getContext((String)((String)helpContexts[0]));
                    } else if (helpContexts[0] instanceof IContext) {
                        context = (IContext)helpContexts[0];
                    }
                    if (context != null) {
                        Point point = WorkbenchHelpSystem.computePopUpLocation(event.widget.getDisplay());
                        WorkbenchHelpSystem.this.displayContext(context, point.x, point.y);
                    }
                }
            }
        });
    }

    public void setHelp(Control control, Object[] contexts) {
        int i = 0;
        while (i < contexts.length) {
            Assert.isTrue((contexts[i] instanceof String || contexts[i] instanceof IContext ? 1 : 0) != 0);
            ++i;
        }
        control.setData(HELP_KEY, (Object)contexts);
        control.removeHelpListener(this.getHelpListener());
        control.addHelpListener(this.getHelpListener());
    }

    public void setHelp(Control control, IContextComputer computer) {
        control.setData(HELP_KEY, (Object)computer);
        control.removeHelpListener(this.getHelpListener());
        control.addHelpListener(this.getHelpListener());
    }

    public void setHelp(Menu menu, Object[] contexts) {
        int i = 0;
        while (i < contexts.length) {
            Assert.isTrue((contexts[i] instanceof String || contexts[i] instanceof IContext ? 1 : 0) != 0);
            ++i;
        }
        menu.setData(HELP_KEY, (Object)contexts);
        menu.removeHelpListener(this.getHelpListener());
        menu.addHelpListener(this.getHelpListener());
    }

    public void setHelp(Menu menu, IContextComputer computer) {
        menu.setData(HELP_KEY, (Object)computer);
        menu.removeHelpListener(this.getHelpListener());
        menu.addHelpListener(this.getHelpListener());
    }

    public void setHelp(MenuItem item, Object[] contexts) {
        int i = 0;
        while (i < contexts.length) {
            Assert.isTrue((contexts[i] instanceof String || contexts[i] instanceof IContext ? 1 : 0) != 0);
            ++i;
        }
        item.setData(HELP_KEY, (Object)contexts);
        item.removeHelpListener(this.getHelpListener());
        item.addHelpListener(this.getHelpListener());
    }

    public void setHelp(MenuItem item, IContextComputer computer) {
        item.setData(HELP_KEY, (Object)computer);
        item.removeHelpListener(this.getHelpListener());
        item.addHelpListener(this.getHelpListener());
    }

    public HelpListener createHelpListener(ICommand command) {
        return new HelpListener(){

            public void helpRequested(HelpEvent event) {
                IContext context;
                if (WorkbenchHelpSystem.this.getHelpUI() != null && (context = HelpSystem.getContext((String)"")) != null) {
                    Point point = WorkbenchHelpSystem.computePopUpLocation(event.widget.getDisplay());
                    WorkbenchHelpSystem.this.displayContext(context, point.x, point.y);
                }
            }
        };
    }

    public void displayHelp() {
        AbstractHelpUI helpUI = this.getHelpUI();
        if (helpUI != null) {
            helpUI.displayHelp();
        }
    }

    public void displaySearch() {
        AbstractHelpUI helpUI = this.getHelpUI();
        if (helpUI != null) {
            helpUI.displaySearch();
        }
    }

    public void displayDynamicHelp() {
        AbstractHelpUI helpUI = this.getHelpUI();
        if (helpUI != null) {
            helpUI.displayDynamicHelp();
        }
    }

    public void search(String expression) {
        AbstractHelpUI helpUI = this.getHelpUI();
        if (helpUI != null) {
            helpUI.search(expression);
        }
    }

    public URL resolve(String href, boolean documentOnly) {
        AbstractHelpUI helpUI = this.getHelpUI();
        if (helpUI != null) {
            return helpUI.resolve(href, documentOnly);
        }
        return null;
    }

    public void displayContext(IContext context, int x, int y) {
        if (context == null) {
            throw new IllegalArgumentException();
        }
        AbstractHelpUI helpUI = this.getHelpUI();
        if (helpUI != null) {
            helpUI.displayContext(context, x, y);
        }
    }

    public void displayHelpResource(String href) {
        if (href == null) {
            throw new IllegalArgumentException();
        }
        AbstractHelpUI helpUI = this.getHelpUI();
        if (helpUI != null) {
            helpUI.displayHelpResource(href);
        }
    }

    public void displayHelp(String contextId) {
        IContext context = HelpSystem.getContext((String)contextId);
        if (context != null) {
            Point point = WorkbenchHelpSystem.computePopUpLocation(Display.getCurrent());
            this.displayContext(context, point.x, point.y);
        }
    }

    public void displayHelp(IContext context) {
        Point point = WorkbenchHelpSystem.computePopUpLocation(Display.getCurrent());
        AbstractHelpUI helpUI = this.getHelpUI();
        if (helpUI != null) {
            helpUI.displayContext(context, point.x, point.y);
        }
    }

    public boolean isContextHelpDisplayed() {
        if (!this.isInitialized) {
            return false;
        }
        AbstractHelpUI helpUI = this.getHelpUI();
        return helpUI != null && helpUI.isContextHelpDisplayed();
    }

    public void setHelp(final IAction action, final String contextId) {
        if (WorkbenchPlugin.DEBUG) {
            this.setHelpTrace(contextId);
        }
        action.setHelpListener(new HelpListener(){

            public void helpRequested(HelpEvent event) {
                IContext context;
                if (WorkbenchHelpSystem.this.getHelpUI() != null && (context = HelpSystem.getContext((String)contextId)) != null) {
                    Point point = WorkbenchHelpSystem.computePopUpLocation(event.widget.getDisplay());
                    String title = LegacyActionTools.removeMnemonics((String)action.getText());
                    WorkbenchHelpSystem.this.displayContext((IContext)new ContextWithTitle(context, title), point.x, point.y);
                }
            }
        });
    }

    public void setHelp(Control control, String contextId) {
        if (WorkbenchPlugin.DEBUG) {
            this.setHelpTrace(contextId);
        }
        control.setData(HELP_KEY, (Object)contextId);
        control.removeHelpListener(this.getHelpListener());
        control.addHelpListener(this.getHelpListener());
    }

    public void setHelp(Menu menu, String contextId) {
        if (WorkbenchPlugin.DEBUG) {
            this.setHelpTrace(contextId);
        }
        menu.setData(HELP_KEY, (Object)contextId);
        menu.removeHelpListener(this.getHelpListener());
        menu.addHelpListener(this.getHelpListener());
    }

    public void setHelp(MenuItem item, String contextId) {
        if (WorkbenchPlugin.DEBUG) {
            this.setHelpTrace(contextId);
        }
        item.setData(HELP_KEY, (Object)contextId);
        item.removeHelpListener(this.getHelpListener());
        item.addHelpListener(this.getHelpListener());
    }

    private void setHelpTrace(String contextId) {
        RuntimeException e = new RuntimeException();
        StackTraceElement[] stackTrace = e.getStackTrace();
        StackTraceElement currentElement = null;
        int s = 0;
        while (s < stackTrace.length) {
            if (stackTrace[s].getMethodName().equals("setHelp") && s + 1 < stackTrace.length) {
                currentElement = stackTrace[s + 1];
                break;
            }
            ++s;
        }
        if (this.registeredIDTable == null) {
            this.registeredIDTable = new Hashtable();
        }
        if (!this.registeredIDTable.containsKey(contextId)) {
            this.registeredIDTable.put(contextId, currentElement);
        } else if (!this.registeredIDTable.get(contextId).equals(currentElement)) {
            StackTraceElement initialElement = (StackTraceElement)this.registeredIDTable.get(contextId);
            String error = "UI Duplicate Context ID found: '" + contextId + "'\n" + " 1 at " + initialElement + '\n' + " 2 at " + currentElement;
            System.out.println(error);
        }
    }

    public boolean hasHelpUI() {
        return this.getHelpUI() != null;
    }

    private class CompatibilityIHelpImplementation
    implements IHelp {
        private CompatibilityIHelpImplementation() {
        }

        public void displayHelp() {
            AbstractHelpUI helpUI = WorkbenchHelpSystem.this.getHelpUI();
            if (helpUI != null) {
                helpUI.displayHelp();
            }
        }

        public void displayContext(IContext context, int x, int y) {
            AbstractHelpUI helpUI = WorkbenchHelpSystem.this.getHelpUI();
            if (helpUI != null) {
                helpUI.displayContext(context, x, y);
            }
        }

        public void displayContext(String contextId, int x, int y) {
            IContext context = HelpSystem.getContext((String)contextId);
            if (context != null) {
                this.displayContext(context, x, y);
            }
        }

        public void displayHelpResource(String href) {
            AbstractHelpUI helpUI = WorkbenchHelpSystem.this.getHelpUI();
            if (helpUI != null) {
                helpUI.displayHelpResource(href);
            }
        }

        public void displayHelpResource(IHelpResource helpResource) {
            this.displayHelpResource(helpResource.getHref());
        }

        public void displayHelp(String toc) {
            this.displayHelpResource(toc);
        }

        public void displayHelp(String toc, String selectedTopic) {
            this.displayHelpResource(selectedTopic);
        }

        public void displayHelp(String contextId, int x, int y) {
            this.displayContext(contextId, x, y);
        }

        public void displayHelp(IContext context, int x, int y) {
            this.displayContext(context, x, y);
        }

        public IContext getContext(String contextId) {
            return HelpSystem.getContext((String)contextId);
        }

        public IToc[] getTocs() {
            return HelpSystem.getTocs();
        }

        public boolean isContextHelpDisplayed() {
            return this.isContextHelpDisplayed();
        }
    }

    private static class ContextWithTitle
    implements IContext2 {
        private IContext context;
        private String title;

        ContextWithTitle(IContext context, String title) {
            this.context = context;
            this.title = title;
        }

        public String getTitle() {
            String ctitle;
            if (this.context instanceof IContext2 && (ctitle = ((IContext2)this.context).getTitle()) != null) {
                return ctitle;
            }
            return this.title;
        }

        public String getStyledText() {
            if (this.context instanceof IContext2) {
                return ((IContext2)this.context).getStyledText();
            }
            return this.context.getText();
        }

        public String getCategory(IHelpResource topic) {
            if (this.context instanceof IContext2) {
                return ((IContext2)this.context).getCategory(topic);
            }
            return null;
        }

        public IHelpResource[] getRelatedTopics() {
            return this.context.getRelatedTopics();
        }

        public String getText() {
            return this.context.getText();
        }
    }

    private static class WorkbenchHelpListener
    implements HelpListener {
        private WorkbenchHelpListener() {
        }

        public void helpRequested(HelpEvent event) {
            Object[] helpContexts;
            if (WorkbenchHelpSystem.getInstance().getHelpUI() == null) {
                return;
            }
            Object object = event.widget.getData(WorkbenchHelpSystem.HELP_KEY);
            IContext context = null;
            if (object instanceof String) {
                context = HelpSystem.getContext((String)((String)object));
            } else if (object instanceof IContext) {
                context = (IContext)object;
            } else if (object instanceof IContextComputer) {
                helpContexts = ((IContextComputer)object).computeContexts(event);
                if (helpContexts != null && helpContexts.length > 0) {
                    Object primaryEntry = helpContexts[0];
                    if (primaryEntry instanceof String) {
                        context = HelpSystem.getContext((String)((String)primaryEntry));
                    } else if (primaryEntry instanceof IContext) {
                        context = (IContext)primaryEntry;
                    }
                }
            } else if (object instanceof Object[] && (helpContexts = (Object[])object).length > 0) {
                Object primaryEntry = helpContexts[0];
                if (primaryEntry instanceof String) {
                    context = HelpSystem.getContext((String)((String)primaryEntry));
                } else if (primaryEntry instanceof IContext) {
                    context = (IContext)primaryEntry;
                }
            }
            if (context == null) {
                context = HelpSystem.getContext((String)"org.eclipse.ui.missing");
            }
            if (context != null) {
                Point point = WorkbenchHelpSystem.computePopUpLocation(event.widget.getDisplay());
                WorkbenchHelpSystem.getInstance().displayContext(context, point.x, point.y);
            }
        }
    }
}

