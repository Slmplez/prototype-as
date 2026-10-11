/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.INestableKeyBindingService;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchSite;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.ActionHandler;
import org.eclipse.ui.commands.HandlerSubmission;
import org.eclipse.ui.commands.Priority;
import org.eclipse.ui.contexts.EnabledSubmission;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.actions.CommandAction;
import org.eclipse.ui.internal.handlers.CommandLegacyActionWrapper;

public final class KeyBindingService
implements INestableKeyBindingService {
    private IKeyBindingService activeService = null;
    private boolean disposed;
    private Set enabledContextIds = Collections.EMPTY_SET;
    private List enabledSubmissions = new ArrayList();
    private Map handlerSubmissionsByCommandId = new HashMap();
    private List nestedEnabledSubmissions = null;
    private List nestedHandlerSubmissions = null;
    private final Map nestedServices = new HashMap();
    private final KeyBindingService parent;
    private IWorkbenchPartSite workbenchPartSite;

    public KeyBindingService(IWorkbenchPartSite workbenchPartSite) {
        this(workbenchPartSite, null);
    }

    KeyBindingService(IWorkbenchPartSite workbenchPartSite, KeyBindingService parent) {
        this.workbenchPartSite = workbenchPartSite;
        this.parent = parent;
    }

    public boolean activateKeyBindingService(IWorkbenchSite nestedSite) {
        if (this.disposed) {
            return false;
        }
        if (nestedSite == null) {
            if (this.activeService == null) {
                return false;
            }
            this.deactivateNestedService();
            return true;
        }
        IKeyBindingService service = (IKeyBindingService)this.nestedServices.get(nestedSite);
        if (service == this.activeService) {
            return false;
        }
        this.deactivateNestedService();
        if (service != null) {
            this.activateNestedService(service);
        }
        return true;
    }

    private final void activateNestedService(IKeyBindingService service) {
        boolean haveParent;
        if (this.disposed) {
            return;
        }
        boolean active = false;
        boolean bl = haveParent = this.parent != null;
        if (haveParent) {
            boolean bl2 = active = this.parent.activeService == this;
            if (active) {
                this.parent.deactivateNestedService();
            }
        }
        this.activeService = service;
        if (service == null) {
            return;
        }
        if (haveParent) {
            if (active) {
                this.parent.activateNestedService(this);
            }
        } else if (this.activeService instanceof KeyBindingService) {
            KeyBindingService nestedService = (KeyBindingService)this.activeService;
            this.nestedEnabledSubmissions = nestedService.getEnabledSubmissions();
            this.normalizeSites(this.nestedEnabledSubmissions);
            PlatformUI.getWorkbench().getContextSupport().addEnabledSubmissions(this.nestedEnabledSubmissions);
            this.nestedHandlerSubmissions = nestedService.getHandlerSubmissions();
            this.normalizeSites(this.nestedHandlerSubmissions);
            PlatformUI.getWorkbench().getCommandSupport().addHandlerSubmissions(this.nestedHandlerSubmissions);
        }
    }

    private final void deactivateNestedService() {
        if (this.disposed) {
            return;
        }
        if (this.activeService == null) {
            return;
        }
        boolean active = false;
        if (this.parent != null) {
            if (this.parent.activeService == this) {
                active = true;
                this.parent.deactivateNestedService();
            }
        } else if (this.activeService instanceof KeyBindingService) {
            PlatformUI.getWorkbench().getContextSupport().removeEnabledSubmissions(this.nestedEnabledSubmissions);
            PlatformUI.getWorkbench().getCommandSupport().removeHandlerSubmissions(this.nestedHandlerSubmissions);
        }
        this.activeService = null;
        if (active) {
            this.parent.activateNestedService(this);
        }
    }

    public void dispose() {
        if (!this.disposed) {
            this.deactivateNestedService();
            this.disposed = true;
            PlatformUI.getWorkbench().getContextSupport().removeEnabledSubmissions(new ArrayList(this.enabledSubmissions));
            this.enabledSubmissions.clear();
            ArrayList submissions = new ArrayList(this.handlerSubmissionsByCommandId.values());
            Iterator submissionItr = submissions.iterator();
            while (submissionItr.hasNext()) {
                ((HandlerSubmission)submissionItr.next()).getHandler().dispose();
            }
            PlatformUI.getWorkbench().getCommandSupport().removeHandlerSubmissions(submissions);
            this.handlerSubmissionsByCommandId.clear();
            Iterator iterator = this.nestedServices.values().iterator();
            while (iterator.hasNext()) {
                KeyBindingService keyBindingService = (KeyBindingService)iterator.next();
                keyBindingService.dispose();
            }
            this.nestedEnabledSubmissions = null;
            this.nestedHandlerSubmissions = null;
            this.nestedServices.clear();
        }
    }

    private final List getEnabledSubmissions() {
        if (this.disposed) {
            return null;
        }
        ArrayList submissions = new ArrayList(this.enabledSubmissions);
        if (this.activeService instanceof KeyBindingService) {
            KeyBindingService nestedService = (KeyBindingService)this.activeService;
            submissions.addAll(nestedService.getEnabledSubmissions());
        }
        return submissions;
    }

    private final List getHandlerSubmissions() {
        if (this.disposed) {
            return null;
        }
        ArrayList submissions = new ArrayList(this.handlerSubmissionsByCommandId.values());
        if (this.activeService instanceof KeyBindingService) {
            KeyBindingService nestedService = (KeyBindingService)this.activeService;
            submissions.addAll(nestedService.getHandlerSubmissions());
        }
        return submissions;
    }

    public IKeyBindingService getKeyBindingService(IWorkbenchSite nestedSite) {
        if (this.disposed) {
            return null;
        }
        if (nestedSite == null) {
            return null;
        }
        IKeyBindingService service = (IKeyBindingService)this.nestedServices.get(nestedSite);
        if (service == null) {
            service = nestedSite instanceof IWorkbenchPartSite ? new KeyBindingService((IWorkbenchPartSite)nestedSite, this) : new KeyBindingService(null, this);
            this.nestedServices.put(nestedSite, service);
        }
        return service;
    }

    public String[] getScopes() {
        if (this.disposed) {
            return null;
        }
        String[] nestedScopes = this.activeService == null ? (String[])null : this.activeService.getScopes();
        HashSet<String> activeScopes = new HashSet<String>();
        activeScopes.addAll(this.enabledContextIds);
        if (nestedScopes != null) {
            int i = 0;
            while (i < nestedScopes.length) {
                activeScopes.add(nestedScopes[i]);
                ++i;
            }
        }
        return activeScopes.toArray(new String[activeScopes.size()]);
    }

    private final void normalizeSites(List submissionsToModify) {
        if (this.disposed) {
            return;
        }
        int size = submissionsToModify.size();
        int i = 0;
        while (i < size) {
            HandlerSubmission handlerSubmission;
            EnabledSubmission enabledSubmission;
            Object submission = submissionsToModify.get(i);
            Object replacementSubmission = submission instanceof EnabledSubmission ? (!this.workbenchPartSite.equals((enabledSubmission = (EnabledSubmission)submission).getActiveWorkbenchPartSite()) ? new EnabledSubmission(null, enabledSubmission.getActiveShell(), this.workbenchPartSite, enabledSubmission.getContextId()) : enabledSubmission) : (submission instanceof HandlerSubmission ? (!this.workbenchPartSite.equals((handlerSubmission = (HandlerSubmission)submission).getActiveWorkbenchPartSite()) ? new HandlerSubmission(null, handlerSubmission.getActiveShell(), this.workbenchPartSite, handlerSubmission.getCommandId(), handlerSubmission.getHandler(), handlerSubmission.getPriority()) : handlerSubmission) : submission);
            submissionsToModify.set(i, replacementSubmission);
            ++i;
        }
    }

    public void registerAction(IAction action) {
        if (this.disposed) {
            return;
        }
        if (action instanceof CommandLegacyActionWrapper) {
            WorkbenchPlugin.log("Cannot register a CommandLegacyActionWrapper back into the system");
            return;
        }
        if (action instanceof CommandAction) {
            return;
        }
        this.unregisterAction(action);
        String commandId = action.getActionDefinitionId();
        if (commandId != null) {
            boolean active = false;
            if (this.parent != null && this.parent.activeService == this) {
                active = true;
                this.parent.deactivateNestedService();
            }
            ActionHandler handler = new ActionHandler(action);
            HandlerSubmission handlerSubmission = new HandlerSubmission(null, this.workbenchPartSite.getShell(), this.workbenchPartSite, commandId, handler, Priority.MEDIUM);
            this.handlerSubmissionsByCommandId.put(commandId, handlerSubmission);
            if (this.parent != null) {
                if (active) {
                    this.parent.activateNestedService(this);
                }
            } else {
                PlatformUI.getWorkbench().getCommandSupport().addHandlerSubmission(handlerSubmission);
            }
        }
    }

    public boolean removeKeyBindingService(IWorkbenchSite nestedSite) {
        if (this.disposed) {
            return false;
        }
        IKeyBindingService service = (IKeyBindingService)this.nestedServices.remove(nestedSite);
        if (service == null) {
            return false;
        }
        if (service.equals(this.activeService)) {
            this.deactivateNestedService();
        }
        return true;
    }

    public void setScopes(String[] scopes) {
        if (this.disposed) {
            return;
        }
        boolean active = false;
        if (this.parent != null && this.parent.activeService == this) {
            active = true;
            this.parent.deactivateNestedService();
        } else {
            PlatformUI.getWorkbench().getContextSupport().removeEnabledSubmissions(this.enabledSubmissions);
        }
        this.enabledSubmissions.clear();
        this.enabledContextIds = new HashSet<String>(Arrays.asList(scopes));
        Iterator iterator = this.enabledContextIds.iterator();
        while (iterator.hasNext()) {
            String contextId = (String)iterator.next();
            this.enabledSubmissions.add(new EnabledSubmission(null, null, this.workbenchPartSite, contextId));
        }
        if (this.parent != null) {
            if (active) {
                this.parent.activateNestedService(this);
            }
        } else {
            PlatformUI.getWorkbench().getContextSupport().addEnabledSubmissions(this.enabledSubmissions);
        }
    }

    public void unregisterAction(IAction action) {
        if (this.disposed) {
            return;
        }
        if (action instanceof CommandLegacyActionWrapper) {
            WorkbenchPlugin.log("Cannot unregister a CommandLegacyActionWrapper out of the system");
            return;
        }
        String commandId = action.getActionDefinitionId();
        if (commandId != null) {
            boolean active = false;
            if (this.parent != null && this.parent.activeService == this) {
                active = true;
                this.parent.deactivateNestedService();
            }
            HandlerSubmission handlerSubmission = (HandlerSubmission)this.handlerSubmissionsByCommandId.remove(commandId);
            if (this.parent != null) {
                if (active) {
                    this.parent.activateNestedService(this);
                }
            } else if (handlerSubmission != null) {
                PlatformUI.getWorkbench().getCommandSupport().removeHandlerSubmission(handlerSubmission);
                handlerSubmission.getHandler().dispose();
            }
        }
    }
}

