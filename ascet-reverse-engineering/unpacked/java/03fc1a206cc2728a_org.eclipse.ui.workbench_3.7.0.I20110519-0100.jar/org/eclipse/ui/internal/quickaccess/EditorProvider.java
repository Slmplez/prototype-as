/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.quickaccess.EditorElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessMessages;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;

public class EditorProvider
extends QuickAccessProvider {
    private Map idToElement;

    public QuickAccessElement getElementForId(String id) {
        this.getElements();
        return (EditorElement)this.idToElement.get(id);
    }

    public QuickAccessElement[] getElements() {
        if (this.idToElement == null) {
            this.idToElement = new HashMap();
            IWorkbenchPage activePage = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage();
            if (activePage == null) {
                return new QuickAccessElement[0];
            }
            IEditorReference[] editors = activePage.getEditorReferences();
            int i = 0;
            while (i < editors.length) {
                EditorElement editorElement = new EditorElement(editors[i], this);
                this.idToElement.put(editorElement.getId(), editorElement);
                ++i;
            }
        }
        return this.idToElement.values().toArray(new QuickAccessElement[this.idToElement.values().size()]);
    }

    public String getId() {
        return "org.eclipse.ui.editors";
    }

    public ImageDescriptor getImageDescriptor() {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_NODE");
    }

    public String getName() {
        return QuickAccessMessages.QuickAccess_Editors;
    }
}

