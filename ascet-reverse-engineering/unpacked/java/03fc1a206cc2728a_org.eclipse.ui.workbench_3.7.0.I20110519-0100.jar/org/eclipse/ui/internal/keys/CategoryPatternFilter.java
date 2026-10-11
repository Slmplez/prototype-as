/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Category
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.keys;

import org.eclipse.core.commands.Category;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.internal.keys.model.BindingElement;

class CategoryPatternFilter
extends PatternFilter {
    private boolean filterCategories;
    final Category uncategorized;

    public CategoryPatternFilter(boolean filterCategories, Category c) {
        this.uncategorized = c;
        this.filterCategories(filterCategories);
    }

    public void filterCategories(boolean b) {
        this.filterCategories = b;
        if (this.filterCategories) {
            this.setPattern("org.eclipse.ui.keys.optimization.false");
        } else {
            this.setPattern("org.eclipse.ui.keys.optimization.true");
        }
    }

    public boolean isFilteringCategories() {
        return this.filterCategories;
    }

    protected boolean isLeafMatch(Viewer viewer, Object element) {
        if (this.filterCategories) {
            ParameterizedCommand cmd = this.getCommand(element);
            try {
                if (cmd != null && cmd.getCommand().getCategory() == this.uncategorized) {
                    return false;
                }
            }
            catch (NotDefinedException notDefinedException) {
                return false;
            }
        }
        return super.isLeafMatch(viewer, element);
    }

    private ParameterizedCommand getCommand(Object element) {
        if (element instanceof BindingElement) {
            Object modelObject = ((BindingElement)element).getModelObject();
            if (modelObject instanceof Binding) {
                return ((Binding)modelObject).getParameterizedCommand();
            }
            if (modelObject instanceof ParameterizedCommand) {
                return (ParameterizedCommand)modelObject;
            }
        }
        return null;
    }
}

