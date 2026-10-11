/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.contexts;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.LegacyHandlerSubmissionExpression;
import org.eclipse.ui.contexts.EnabledSubmission;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.contexts.IContextManager;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.contexts.IWorkbenchContextSupport;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.contexts.ContextManagerFactory;
import org.eclipse.ui.internal.contexts.ContextManagerLegacyWrapper;
import org.eclipse.ui.keys.IBindingService;

public class WorkbenchContextSupport
implements IWorkbenchContextSupport {
    private Map activationsBySubmission = null;
    private IBindingService bindingService;
    private IContextService contextService;
    private ContextManagerLegacyWrapper contextManagerWrapper;
    private final Workbench workbench;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public WorkbenchContextSupport(Workbench workbenchToSupport, ContextManager contextManager) {
        this.workbench = workbenchToSupport;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.contextService = (IContextService)this.workbench.getService(clazz);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.bindingService = (IBindingService)this.workbench.getService(clazz2);
        this.contextManagerWrapper = ContextManagerFactory.getContextManagerWrapper(contextManager);
    }

    public final void addEnabledSubmission(EnabledSubmission enabledSubmission) {
        IContextActivation activation = this.contextService.activateContext(enabledSubmission.getContextId(), new LegacyHandlerSubmissionExpression(enabledSubmission.getActivePartId(), enabledSubmission.getActiveShell(), enabledSubmission.getActiveWorkbenchPartSite()));
        if (this.activationsBySubmission == null) {
            this.activationsBySubmission = new HashMap();
        }
        this.activationsBySubmission.put(enabledSubmission, activation);
    }

    public final void addEnabledSubmissions(Collection enabledSubmissions) {
        Iterator submissionItr = enabledSubmissions.iterator();
        while (submissionItr.hasNext()) {
            this.addEnabledSubmission((EnabledSubmission)submissionItr.next());
        }
    }

    public final IContextManager getContextManager() {
        return this.contextManagerWrapper;
    }

    public final int getShellType(Shell shell) {
        return this.contextService.getShellType(shell);
    }

    public final boolean isKeyFilterEnabled() {
        return this.bindingService.isKeyFilterEnabled();
    }

    public final void openKeyAssistDialog() {
        this.bindingService.openKeyAssistDialog();
    }

    public final boolean registerShell(Shell shell, int type) {
        return this.contextService.registerShell(shell, type);
    }

    public final void removeEnabledSubmission(EnabledSubmission enabledSubmission) {
        if (this.activationsBySubmission == null) {
            return;
        }
        Object value = this.activationsBySubmission.remove(enabledSubmission);
        if (value instanceof IContextActivation) {
            IContextActivation activation = (IContextActivation)value;
            this.contextService.deactivateContext(activation);
        }
    }

    public final void removeEnabledSubmissions(Collection enabledSubmissions) {
        Iterator submissionItr = enabledSubmissions.iterator();
        while (submissionItr.hasNext()) {
            this.removeEnabledSubmission((EnabledSubmission)submissionItr.next());
        }
    }

    public final void setKeyFilterEnabled(boolean enabled) {
        this.bindingService.setKeyFilterEnabled(enabled);
    }

    public final boolean unregisterShell(Shell shell) {
        return this.contextService.unregisterShell(shell);
    }
}

