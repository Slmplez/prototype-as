/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 */
package org.eclipse.ui.internal.handlers;

import java.util.Map;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.commands.IElementUpdater;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.menus.UIElement;
import org.eclipse.ui.services.IServiceLocator;

public class PinEditorHandler
extends AbstractHandler
implements IElementUpdater {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Object execute(ExecutionEvent event) {
        IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindow(event);
        if (window == null) {
            return null;
        }
        IEditorPart editor = HandlerUtil.getActiveEditor(event);
        if (editor == null) {
            return null;
        }
        IWorkbenchPartReference ref = window.getActivePage().getReference(editor);
        if (ref instanceof WorkbenchPartReference) {
            WorkbenchPartReference concreteRef;
            concreteRef.setPinned(!(concreteRef = (WorkbenchPartReference)ref).isPinned());
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ICommandService commandService = (ICommandService)window.getService(clazz);
            commandService.refreshElements(event.getCommand().getId(), null);
        }
        return null;
    }

    public void updateElement(UIElement element, Map parameters) {
        IWorkbenchWindow window;
        IServiceLocator iServiceLocator = element.getServiceLocator();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.IWorkbenchWindow");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((window = (IWorkbenchWindow)iServiceLocator.getService(clazz)) == null) {
            return;
        }
        IWorkbenchPage page = window.getActivePage();
        if (page == null) {
            return;
        }
        IEditorPart editor = page.getActiveEditor();
        if (editor == null) {
            return;
        }
        IWorkbenchPartReference ref = page.getReference(editor);
        if (ref instanceof WorkbenchPartReference) {
            WorkbenchPartReference concreteRef = (WorkbenchPartReference)ref;
            element.setChecked(concreteRef.isPinned());
        }
    }
}

