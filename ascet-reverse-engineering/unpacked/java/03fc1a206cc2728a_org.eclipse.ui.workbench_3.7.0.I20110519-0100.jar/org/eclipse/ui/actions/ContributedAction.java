/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.IHandler2
 *  org.eclipse.core.expressions.EvaluationContext
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.actions;

import java.util.Collections;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.IHandler2;
import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.CommandNotMappedException;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.actions.CommandAction;
import org.eclipse.ui.internal.handlers.ActionDelegateHandlerProxy;
import org.eclipse.ui.internal.handlers.HandlerService;
import org.eclipse.ui.internal.handlers.IActionCommandMappingService;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.part.MultiPageEditorSite;
import org.eclipse.ui.services.IServiceLocator;

public final class ContributedAction
extends CommandAction {
    private IEvaluationContext appContext;
    private IHandler partHandler;
    private boolean localHandler = false;
    private IPartListener partListener;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public ContributedAction(IServiceLocator locator, IConfigurationElement element) throws CommandNotMappedException {
        String actionId = element.getAttribute("id");
        String commandId = element.getAttribute("definitionId");
        String contributionId = null;
        if (commandId == null) {
            IActionCommandMappingService mapping;
            Object obj = element.getParent();
            if (obj instanceof IConfigurationElement && (contributionId = ((IConfigurationElement)obj).getAttribute("id")) == null) {
                throw new CommandNotMappedException("Action " + actionId + " configuration element invalid");
            }
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.internal.handlers.IActionCommandMappingService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((mapping = (IActionCommandMappingService)locator.getService(clazz)) == null) {
                throw new CommandNotMappedException("No action mapping service available");
            }
            commandId = mapping.getCommandId(mapping.getGeneratedCommandId(contributionId, actionId));
        }
        if (commandId == null) {
            throw new CommandNotMappedException("Action " + actionId + " in contribution " + contributionId + " not mapped to a command");
        }
        this.init(locator, commandId, null);
        if (locator instanceof IWorkbenchPartSite) {
            this.updateSiteAssociations((IWorkbenchPartSite)locator, commandId, actionId, element);
        }
        this.setId(actionId);
    }

    private void updateSiteAssociations(IWorkbenchPartSite site, String commandId, String actionId, IConfigurationElement element) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IWorkbenchLocationService wls = (IWorkbenchLocationService)site.getService(clazz);
        IWorkbench workbench = wls.getWorkbench();
        IWorkbenchWindow window = wls.getWorkbenchWindow();
        Class<?> clazz2 = class$2;
        if (clazz2 == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService serv = (IHandlerService)workbench.getService(clazz2);
        this.appContext = new EvaluationContext(serv.getCurrentState(), (Object)Collections.EMPTY_LIST);
        this.appContext.addVariable("selection", (Object)StructuredSelection.EMPTY);
        this.appContext.addVariable("activePart", (Object)site.getPart());
        this.appContext.addVariable("activePartId", (Object)site.getId());
        this.appContext.addVariable("activeSite", (Object)site);
        if (site instanceof IEditorSite) {
            this.appContext.addVariable("activeEditor", (Object)site.getPart());
            this.appContext.addVariable("activeEditorId", (Object)site.getId());
        }
        this.appContext.addVariable("activeWorkbenchWindow", (Object)window);
        this.appContext.addVariable("activeWorkbenchWindowShell", (Object)window.getShell());
        HandlerService realService = (HandlerService)serv;
        this.partHandler = realService.findHandler(commandId, this.appContext);
        if (this.partHandler == null) {
            this.localHandler = true;
            this.partHandler = new ActionDelegateHandlerProxy(element, "class", actionId, this.getParameterizedCommand(), site.getWorkbenchWindow(), null, null, null);
        }
        if (site instanceof MultiPageEditorSite) {
            Class<?> clazz3 = class$2;
            if (clazz3 == null) {
                try {
                    clazz3 = class$2 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IHandlerService siteServ = (IHandlerService)site.getService(clazz3);
            siteServ.activateHandler(commandId, this.partHandler);
        }
        if (this.getParameterizedCommand() != null) {
            this.getParameterizedCommand().getCommand().removeCommandListener(this.getCommandListener());
        }
        site.getPage().addPartListener(this.getPartListener());
    }

    /*
     * Exception decompiling
     */
    public void runWithEvent(Event event) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public boolean isEnabled() {
        if (this.partHandler != null) {
            if (this.partHandler instanceof IHandler2) {
                ((IHandler2)this.partHandler).setEnabled((Object)this.appContext);
            }
            return this.partHandler.isEnabled();
        }
        return false;
    }

    private IPartListener getPartListener() {
        if (this.partListener == null) {
            IWorkbenchPartSite site = (IWorkbenchPartSite)this.appContext.getVariable("activeSite");
            final IWorkbenchPart currentPart = site instanceof MultiPageEditorSite ? ((MultiPageEditorSite)site).getMultiPageEditor() : site.getPart();
            this.partListener = new IPartListener(){

                public void partActivated(IWorkbenchPart part) {
                }

                public void partBroughtToTop(IWorkbenchPart part) {
                }

                public void partClosed(IWorkbenchPart part) {
                    if (part == currentPart) {
                        ContributedAction.this.disposeAction();
                    }
                }

                public void partDeactivated(IWorkbenchPart part) {
                }

                public void partOpened(IWorkbenchPart part) {
                }
            };
        }
        return this.partListener;
    }

    private void disposeAction() {
        if (this.appContext != null) {
            if (this.localHandler) {
                this.partHandler.dispose();
            }
            if (this.partListener != null) {
                IWorkbenchPartSite site = (IWorkbenchPartSite)this.appContext.getVariable("activeSite");
                site.getPage().removePartListener(this.partListener);
                this.partListener = null;
            }
            this.appContext = null;
            this.partHandler = null;
        }
        this.dispose();
    }
}

